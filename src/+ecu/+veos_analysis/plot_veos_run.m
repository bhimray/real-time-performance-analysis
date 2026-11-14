function figures = plot_veos_run(recordingFile, options)
%PLOT_VEOS_RUN Plot a converted ControlDesk recording and optionally export it.
% OutputDirectory writes vector PDF, 300-dpi PNG, and editable FIG files.
% FigureOptions is a struct keyed by trajectory, states_inputs, actuation,
% solver, constraints, collision_avoidance, or steering. Values are
% name-value structs. SnapshotTimes_s selects road-coordinate horizons.
arguments
    recordingFile (1,1) string
    options.OutputDirectory (1,1) string = ""
    options.FigureOptions (1,1) struct = struct()
    options.SnapshotTimes_s (1,:) double {mustBeFinite} = []
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

variables = who('-file', recordingFile);
data = load(recordingFile, 'signals', variables{strcmp(variables, 'horizon')});
assert(isfield(data, 'signals') && istimetable(data.signals), ...
    'Expected a converted MAT file with a signals timetable.');

plotters = {
    'trajectory', @ecu.veos_analysis.plot_trajectory
    'states_inputs', @ecu.veos_analysis.plot_states_inputs
    'actuation', @ecu.veos_analysis.plot_actuation
    'solver', @ecu.veos_analysis.plot_solver
    'constraints', @ecu.veos_analysis.plot_constraints
    'collision_avoidance', @ecu.veos_analysis.plot_collision_avoidance
    'steering', @ecu.veos_analysis.plot_steering
};
hasHorizon = isfield(data, 'horizon') && ~isempty(data.horizon);
if hasHorizon
    plotters{1, 2} = @(signals, varargin) ...
        ecu.veos_analysis.plot_horizon_trajectory(signals, data.horizon, varargin{:});
    plotters{5, 2} = @(signals, varargin) ...
        ecu.veos_analysis.plot_constraints(with_horizon_diagnostics(signals, data.horizon), varargin{:});
end
assert(all(ismember(fieldnames(options.FigureOptions), plotters(:,1))), ...
    'FigureOptions contains an unknown figure name.');
if options.OutputDirectory ~= "" && ~isfolder(options.OutputDirectory)
    mkdir(options.OutputDirectory);
end

figures = struct();
for k = 1:size(plotters, 1)
    name = plotters{k, 1};
    plotter = plotters{k, 2};
    figureOptions = struct();
    if isfield(options.FigureOptions, name)
        figureOptions = options.FigureOptions.(name);
    end
    if ~isfield(figureOptions, 'Visible')
        figureOptions.Visible = options.Visible;
    end
    args = namedargs2cell(figureOptions);
    fig = plotter(data.signals, args{:});
    figures.(name) = fig;

    export_figure(fig, options.OutputDirectory, name);
end

if ~isempty(options.SnapshotTimes_s)
    assert(hasHorizon, 'SnapshotTimes_s requires a converted recording with an aligned horizon.');
    for k = 1:numel(options.SnapshotTimes_s)
        name = "horizon_snapshot_" + k;
        fig = ecu.veos_analysis.plot_horizon_snapshot(data.horizon, ...
            options.SnapshotTimes_s(k), Visible=options.Visible);
        figures.(name) = fig;
        export_figure(fig, options.OutputDirectory, name);
    end
end
end

function signals = with_horizon_diagnostics(signals, horizon)
% Preserve the solver update timestamps in the constraint plots.
signals = signals(seconds(horizon.Time_s), :);
for fellow = 1:2
    signals.("obstacle" + fellow + "_max_slack") = ...
        reshape(max(horizon.ObstacleSlack(fellow, :, :), [], 2), [], 1);
    signals.("obstacle" + fellow + "_min_margin") = ...
        reshape(min(horizon.ObstacleMargin(fellow, :, :), [], 2), [], 1);
end
end

function export_figure(fig, folder, name)
if folder ~= ""
    path = fullfile(folder, "veos_" + name);
    exportgraphics(fig, path + ".pdf", 'ContentType', 'vector', 'BackgroundColor', 'white');
    exportgraphics(fig, path + ".png", 'Resolution', 300, 'BackgroundColor', 'white');
    savefig(fig, path + ".fig");
end
end
