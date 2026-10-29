function artifacts = plot_matlab_run(runMatFile)
%PLOT_MATLAB_RUN Save basic Week 2 plots for a completed or failed run.
%
%   Accepts only a saved MAT filename; no live solver or in-memory run is used.
%   Timing curves are raw solver diagnostics, not certified ECU benchmarks.
%   Obstacles are shown only at requested times reached by this run.

assert(isfile(runMatFile), 'Select an existing saved run MAT file.');

runMatFile = char(java.io.File(char(runMatFile)).getCanonicalPath());
loaded = load(runMatFile, 'run');
run = loaded.run;

sourceHash = ecu.logging.file_sha256(runMatFile);
dataDirectory = fileparts(runMatFile);
[parentDirectory, directoryName] = fileparts(dataDirectory);

if strcmp(directoryName, 'data')
    runDirectory = parentDirectory;
else
    runDirectory = dataDirectory;
end

runManifestFile = fullfile(runDirectory, 'metadata', 'run_manifest.json');

if isfile(runManifestFile)
    sourceManifest = jsondecode(fileread(runManifestFile));

    assert(strcmp(sourceManifest.mat_sha256, sourceHash), ...
        'ecu:RunChecksumMismatch', ...
        'Saved run differs from its recorded raw-data checksum.');
end

token = char(java.util.UUID.randomUUID());
batchId = ['plot_', char(datetime('now', 'Format', 'yyyyMMdd_HHmmss')), ...
    '_', token(1:8)];

plotDirectory = fullfile(runDirectory, 'plots', batchId);
mkdir(plotDirectory);

files = cell(1, 4);
figures = gobjects(1, 4);

cleanup = onCleanup(@() close(figures(isgraphics(figures)))); %#ok<NASGU>

%% Path-coordinate trajectory and obstacle safety ellipses

figures(1) = create_figure();
axesHandle = create_axes(figures(1), 1, 1, 1);

plot(axesHandle, run.plant.state(7, :), run.plant.state(1, :), ...
    'Color', [0.1, 0.35, 0.8], 'LineWidth', 1.6);

yline(axesHandle, run.instance.road.bounds_m(1), 'k--');
yline(axesHandle, run.instance.road.bounds_m(2), 'k--');

safetyAxes = run.instance.obstacle_geometry.safety_semi_axes_m;
angle = linspace(0, 2 * pi, 100);

for time = [0, 2, 4]
    if time > run.plant.time_s(end)
        continue;
    end

    obstacles = ecu.scenario.obstacle_states(run.instance, time);

    for obstacleIndex = 1:2
        plot(axesHandle, ...
            obstacles.s(obstacleIndex) + safetyAxes(2) * cos(angle), ...
            obstacles.e(obstacleIndex) + safetyAxes(1) * sin(angle), ...
            ':', 'Color', [0.75, 0.2, 0.1]);

        text(axesHandle, obstacles.s(obstacleIndex), ...
            obstacles.e(obstacleIndex), sprintf('  %.0f s', time), ...
            'Color', 'k', 'FontSize', 8);
    end
end

xlabel(axesHandle, 'Station s [m]');
ylabel(axesHandle, 'Lateral error e [m]');

title(axesHandle, sprintf('F%d/%d: %s at %.3f s', ...
    run.instance.family_id, run.instance.instance_id, run.termination.reason, run.plant.time_s(end)), ...
    'Interpreter', 'none', 'Color', 'k');

files{1} = save_figure(figures(1), plotDirectory, [run.id, '__trajectory']);

%% Seven plant states at the 1 ms integration rate

figures(2) = create_figure();

labels = {'e [m]', 'psi [rad]', 'v [m/s]', 'vy [m/s]', ...
    'gamma [rad/s]', 'vx [m/s]', 's [m]'};

for stateIndex = 1:7
    axesHandle = create_axes(figures(2), 4, 2, stateIndex);

    plot(axesHandle, run.plant.time_s, run.plant.state(stateIndex, :), ...
        'Color', [0.1, 0.35, 0.8]);

    ylabel(axesHandle, labels{stateIndex});
    xlabel(axesHandle, 'Time [s]');
end

files{2} = save_figure(figures(2), plotDirectory, [run.id, '__plant_states']);

%% Applied commands and hard bounds

figures(3) = create_figure();
inputLabels = {'Fx [N]', 'Fy [N]', 'Mz [N m]'};

for inputIndex = 1:3
    axesHandle = create_axes(figures(3), 3, 1, inputIndex);

    if ~isempty(run.plant.input)
        stairs(axesHandle, run.plant.time_s(1:end-1), ...
            run.plant.input(inputIndex, :), 'Color', [0.1, 0.35, 0.8]);
    end

    yline(axesHandle, run.config.lbu(inputIndex), 'k--');
    yline(axesHandle, run.config.ubu(inputIndex), 'k--');

    ylabel(axesHandle, inputLabels{inputIndex});
    xlabel(axesHandle, 'Time [s]');
end

files{3} = save_figure(figures(3), plotDirectory, [run.id, '__applied_inputs']);

%% Solver effort, raw timing, active flags and slacks

figures(4) = create_figure();

values = {
    run.log.sqp_iter
    1000 * run.log.time_tot
    sum(run.log.active, 1)
    run.log.slack_max
};

labels = {'SQP iterations', 'Raw solver time [ms]', ...
    'Near-bound constraints', 'Maximum slack'};

for panel = 1:4
    axesHandle = create_axes(figures(4), 4, 1, panel);
    plot(axesHandle, run.log.t, values{panel}, ...
        'Color', [0.1, 0.35, 0.8]);

    ylabel(axesHandle, labels{panel});
    xlabel(axesHandle, 'Time [s]');
end

files{4} = save_figure(figures(4), plotDirectory, [run.id, '__solver_diagnostics']);

%% Identify the source data and fields behind every exported figure

plotIds = {'trajectory', 'plant_states', 'applied_inputs', 'solver_diagnostics'};

fieldGroups = {
    {'plant.state(7,:)', 'plant.state(1,:)', 'instance.obstacles', ...
        'instance.road.bounds_m'}
    {'plant.time_s', 'plant.state(1:7,:)'}
    {'plant.time_s(1:end-1)', 'plant.input', 'config.lbu', 'config.ubu'}
    {'log.t', 'log.sqp_iter', 'log.time_tot', 'log.active', 'log.slack_max'}
};

manifest.schema_version = 1;
manifest.run_id = run.id;
manifest.source_mat_file = runMatFile;
manifest.source_mat_sha256 = sourceHash;
manifest.plot_batch_id = batchId;
manifest.matlab = version;
manifest.plotter_source_sha256 = ecu.logging.file_sha256( ...
    [mfilename('fullpath'), '.m']);

for figureIndex = 1:4
    [~, name] = fileparts(files{figureIndex});

    manifest.plots(figureIndex).plot_id = plotIds{figureIndex};
    manifest.plots(figureIndex).png = [name, '.png'];
    manifest.plots(figureIndex).fig = [name, '.fig'];
    manifest.plots(figureIndex).data_fields = fieldGroups{figureIndex};
    manifest.plots(figureIndex).source_run_id = run.id;
end

manifestFile = fullfile(plotDirectory, 'plot_manifest.json');
fileId = fopen(manifestFile, 'w');
assert(fileId >= 0);
fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>
fprintf(fileId, '%s\n', jsonencode(manifest, PrettyPrint=true));

artifacts.directory = plotDirectory;
artifacts.png_files = files;
artifacts.manifest = manifestFile;

end


function figureHandle = create_figure()
%CREATE_FIGURE Keep exports legible regardless of the desktop theme.

figureHandle = figure( ...
    'Visible', 'off', 'Color', 'w', 'Position', [100, 100, 1100, 850]);

end


function axesHandle = create_axes(figureHandle, rows, columns, index)
%CREATE_AXES Apply consistent light-theme styling without global changes.

axesHandle = subplot(rows, columns, index, 'Parent', figureHandle);

set(axesHandle, ...
    'Color', 'w', 'XColor', 'k', 'YColor', 'k', ...
    'GridColor', [0.6, 0.6, 0.6]);

hold(axesHandle, 'on');
grid(axesHandle, 'on');

end


function filePath = save_figure(figureHandle, directory, name)
%SAVE_FIGURE Retain a PNG for review and a FIG for later MATLAB inspection.

filePath = fullfile(directory, [name, '.png']);

exportgraphics(figureHandle, filePath, ...
    'Resolution', 140, 'BackgroundColor', 'white');

savefig(figureHandle, fullfile(directory, [name, '.fig']));

end
