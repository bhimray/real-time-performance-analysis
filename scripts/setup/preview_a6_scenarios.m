function outputFile = preview_a6_scenarios()
%PREVIEW_A6_SCENARIOS Plot instance 1 of each family at time zero.
%
%   Coordinates are path-relative (s,e); a curved physical road is straight
%   in this coordinate system. No ego trajectory or controller result is
%   implied. Blue: ego physical ellipse. Red/orange: obstacle safety ellipses.

projectRoot = char(currentProject().RootFolder);
outputDirectory = fullfile(projectRoot, 'docs', 'figures', 'a6');

if ~isfolder(outputDirectory)
    mkdir(outputDirectory);
end

figureHandle = figure('Visible', 'off', 'Color', 'w', ...
    'Position', [100, 100, 1300, 850]);

figureCleanup = onCleanup(@() close(figureHandle)); %#ok<NASGU>

layout = tiledlayout(figureHandle, 2, 2, ...
    'TileSpacing', 'compact', 'Padding', 'compact');

colors = [0.1, 0.35, 0.8; 0.8, 0.15, 0.15; 0.9, 0.5, 0.1];

for familyId = 1:4
    instance = ecu.scenario.gen_instance(familyId, 1);
    obstacles = ecu.scenario.obstacle_states(instance, 0);

    axesHandle = nexttile(layout);

    % Set colors explicitly so desktop dark themes cannot affect exports.
    set(axesHandle, ...
        'Color', 'w', ...
        'XColor', 'k', ...
        'YColor', 'k', ...
        'GridColor', [0.55, 0.55, 0.55], ...
        'FontSize', 10);

    hold(axesHandle, 'on');

    yline(axesHandle, instance.road.bounds_m(1), 'k-', 'LineWidth', 1.2);
    yline(axesHandle, instance.road.bounds_m(2), 'k-', 'LineWidth', 1.2);
    yline(axesHandle, 0, 'k:', 'LineWidth', 0.8);

    draw_ellipse(axesHandle, instance.ego.initial_station_m, ...
        instance.ego.initial_state(1), ...
        instance.obstacle_geometry.collision_semi_axes_m, colors(1, :));

    for obstacleIndex = 1:2
        draw_ellipse(axesHandle, obstacles.s(obstacleIndex), ...
            obstacles.e(obstacleIndex), ...
            instance.obstacle_geometry.safety_semi_axes_m, ...
            colors(obstacleIndex + 1, :));
    end

    xlim(axesHandle, [-8, 55]);
    ylim(axesHandle, [-3, 7]);
    grid(axesHandle, 'on');

    xlabel(axesHandle, 'Station s [m]', 'Color', 'k');
    ylabel(axesHandle, 'Lateral position e [m]', 'Color', 'k');

    title(axesHandle, {
        instance.family_name
        sprintf('seed=%d; speed=%.2f m/s; mu=%.1f; curvature=%.5f 1/m', ...
            instance.seed, instance.reference.speed_mps, ...
            instance.friction_coefficient, instance.road.curvature_per_m)
    }, 'Color', 'k', 'FontSize', 10);
end

title(layout, {
    'A6 initial scenarios - instance 1 of each family'
    'Blue: ego   Red: lead vehicle   Orange: target-lane vehicle'
}, 'Color', 'k', 'FontSize', 13);

outputFile = fullfile(outputDirectory, 'initial_scenarios.png');
exportgraphics(figureHandle, outputFile, ...
    'Resolution', 160, 'BackgroundColor', 'white');

end


function draw_ellipse(axesHandle, station, lateralPosition, semiAxes, color)
%DRAW_ELLIPSE Semi-axes use [lateral; longitudinal] ordering.

angle = linspace(0, 2 * pi, 120);

plot(axesHandle, ...
    station + semiAxes(2) * cos(angle), ...
    lateralPosition + semiAxes(1) * sin(angle), ...
    'Color', color, 'LineWidth', 1.6);

end
