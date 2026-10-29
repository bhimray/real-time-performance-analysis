function outputFile = preview_a6_lanes(station)
%PREVIEW_A6_LANES Plot the global road geometry of the four A6 examples.
%
%   PREVIEW_A6_LANES() uses a 100 m display segment sampled at 0.01 m.
%   This display choice does not change the A6 scenario or simulation timing.
%   Pass a different station vector to inspect another road extent.
%
%   Black: physical road boundaries. Blue/orange: lane centerlines.
%   Red dotted curves: controller bounds, which are not physical road edges.

if nargin < 1
    station = (0:0.01:100).';
end

projectRoot = char(currentProject().RootFolder);
outputDirectory = fullfile(projectRoot, 'docs', 'figures', 'a6');

if ~isfolder(outputDirectory)
    mkdir(outputDirectory);
end

figureHandle = figure( ...
    'Visible', 'off', ...
    'Color', 'w', ...
    'Position', [100, 100, 1300, 850]);

figureCleanup = onCleanup(@() close(figureHandle)); %#ok<NASGU>

layout = tiledlayout(figureHandle, 2, 2, ...
    'TileSpacing', 'compact', 'Padding', 'compact');

%% Show instance 1 from each family in global X/Y coordinates

for familyId = 1:4
    instance = ecu.scenario.gen_instance(familyId, 1);
    lanes = ecu.scenario.generate_lanes(instance, station);

    axesHandle = nexttile(layout);

    set(axesHandle, ...
        'Color', 'w', ...
        'XColor', 'k', ...
        'YColor', 'k', ...
        'GridColor', [0.6, 0.6, 0.6], ...
        'FontSize', 10);

    hold(axesHandle, 'on');

    % The outer edges are solid; the separator between lanes is dashed.
    plot(axesHandle, lanes.boundaries.X_m(:, [1, 3]), ...
        lanes.boundaries.Y_m(:, [1, 3]), ...
        'k-', 'LineWidth', 1.3);

    plot(axesHandle, lanes.boundaries.X_m(:, 2), ...
        lanes.boundaries.Y_m(:, 2), ...
        'k--', 'LineWidth', 1.1);

    plot(axesHandle, lanes.centerlines.X_m(:, 1), ...
        lanes.centerlines.Y_m(:, 1), ...
        '-', 'Color', [0.1, 0.35, 0.8], 'LineWidth', 1.1);

    plot(axesHandle, lanes.centerlines.X_m(:, 2), ...
        lanes.centerlines.Y_m(:, 2), ...
        '-', 'Color', [0.9, 0.5, 0.1], 'LineWidth', 1.1);

    plot(axesHandle, lanes.controller_bounds.X_m, ...
        lanes.controller_bounds.Y_m, ...
        ':', 'Color', [0.8, 0.15, 0.15], 'LineWidth', 1.0);

    axis(axesHandle, 'equal');
    grid(axesHandle, 'on');

    xlabel(axesHandle, 'Global X [m]', 'Color', 'k');
    ylabel(axesHandle, 'Global Y [m]', 'Color', 'k');

    title(axesHandle, {
        instance.family_name
        sprintf('Lane width = %.2f m; curvature = %.5f 1/m', ...
            lanes.lane_width_m, lanes.curvature_per_m)
    }, 'Color', 'k', 'FontSize', 10);
end

title(layout, {
    'A6 two-lane road geometry'
    'Black: boundaries | Blue/orange: lane centers | Red dotted: controller bounds'
}, 'Color', 'k', 'FontSize', 12);

outputFile = fullfile(outputDirectory, 'lane_geometry.png');

exportgraphics(figureHandle, outputFile, ...
    'Resolution', 160, 'BackgroundColor', 'white');

end
