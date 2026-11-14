function figures = plot_veos_run(recordingFile, options)
%PLOT_VEOS_RUN Plot a converted ControlDesk recording and optionally export it.
% OutputDirectory writes vector PDF, 300-dpi PNG, and editable FIG files.
% FigureOptions is a struct keyed by trajectory, states_inputs, actuation,
% solver, constraints, or collision_avoidance. Values are name-value structs.
arguments
    recordingFile (1,1) string
    options.OutputDirectory (1,1) string = ""
    options.FigureOptions (1,1) struct = struct()
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

data = load(recordingFile, 'signals');
assert(isfield(data, 'signals') && istimetable(data.signals), ...
    'Expected a converted MAT file with a signals timetable.');

plotters = {
    'trajectory', @ecu.veos_analysis.plot_trajectory
    'states_inputs', @ecu.veos_analysis.plot_states_inputs
    'actuation', @ecu.veos_analysis.plot_actuation
    'solver', @ecu.veos_analysis.plot_solver
    'constraints', @ecu.veos_analysis.plot_constraints
    'collision_avoidance', @ecu.veos_analysis.plot_collision_avoidance
};
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

    if options.OutputDirectory ~= ""
        path = fullfile(options.OutputDirectory, "veos_" + name);
        exportgraphics(fig, path + ".pdf", 'ContentType', 'vector', 'BackgroundColor', 'white');
        exportgraphics(fig, path + ".png", 'Resolution', 300, 'BackgroundColor', 'white');
        savefig(fig, path + ".fig");
    end
end
end
