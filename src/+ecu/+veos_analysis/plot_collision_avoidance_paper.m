function [fig, details] = plot_collision_avoidance_paper(recordingFile, options)
%PLOT_COLLISION_AVOIDANCE_PAPER Plot synchronized VEOS paths and a passing detail.
% Add the project's config folder to the path for the A6 collision geometry,
% or supply CollisionSemiAxes_m explicitly in [lateral; longitudinal] order.
arguments
    recordingFile (1,1) string
    options.OutputStem (1,1) string = ""
    options.CollisionSemiAxes_m double {mustBeFinite, mustBePositive} = []
    options.Fellow (1,1) double {mustBeMember(options.Fellow, [1 2])} = 1
    options.SnapshotCount (1,1) double {mustBeInteger, mustBeGreaterThanOrEqual(options.SnapshotCount, 3)} = 9
    options.PanelTitles (1,2) string = ["Recorded trajectories", "Detail at longitudinal alignment"]
    options.XLabel (1,1) string = "Road station, s (m)"
    options.YLabel (1,1) string = "Lateral offset, e (m)"
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on", "off"])} = "on"
end

data = load(recordingFile, 'signals', 'horizon');
assert(isfield(data, 'horizon') && ~isempty(data.horizon), ...
    'Use the converted VEOS recording with an aligned horizon.');
signals = data.signals(seconds(data.horizon.TrafficTime_s), :);
t = data.horizon.TrafficTime_s;
active = data.horizon.TrafficActive;
egoS = signals.horizon_ego_station_m;
egoE = signals.mpc_lbx0_lateral_error_m;
fellowS = [signals.horizon_fellow1_station_m, signals.horizon_fellow2_station_m];
fellowE = [signals.horizon_fellow1_lateral_offset_m, signals.horizon_fellow2_lateral_offset_m];
fellowS(~active, :) = NaN;
fellowE(~active, :) = NaN;

fellow = options.Fellow;
rows = find(active & isfinite(egoS) & isfinite(egoE) & ...
    isfinite(fellowS(:, fellow)) & isfinite(fellowE(:, fellow)));
assert(~isempty(rows), 'No synchronized active-traffic samples are available.');
[~, closest] = min(abs(egoS(rows) - fellowS(rows, fellow)));
passRow = rows(closest);
k = find(data.horizon.Time_s <= t(passRow) & data.horizon.ActiveAtSolve, 1, 'last');
assert(~isempty(k), 'No active horizon was logged by the selected event.');
index = ecu.control.parameter_layout();
obstacles = [index.obstacle1; index.obstacle2];
safetyAxes = data.horizon.P(obstacles(fellow, 3:4), 1, k);
collisionAxes = options.CollisionSemiAxes_m;
if isempty(collisionAxes)
    config = scenario_config();
    collisionAxes = config.collision_semi_axes_m;
end
assert(numel(collisionAxes) == 2 && all(isfinite(safetyAxes) & safetyAxes > 0), ...
    'Supply two valid collision semi-axes and verify the recorded safety axes.');

blue = [0.02 0.30 0.56];
orange = [0.71 0.27 0.05];
green = [0.03 0.43 0.38];
colors = [orange; green];
styles = ["--", "-."];
fig = figure('Name', 'Collision-avoidance trajectories', 'Visible', options.Visible, ...
    'Color', 'w', 'Units', 'inches', 'Position', [1 1 7.1 5.05]);
layout = tiledlayout(fig, 2, 1, 'TileSpacing', 'compact', 'Padding', 'compact');
overview = nexttile(layout);
detail = nexttile(layout);
for ax = [overview, detail]
    hold(ax, 'on');
    grid(ax, 'on');
    set(ax, 'FontName', 'Arial', 'FontSize', 9, 'TickDir', 'out', 'Box', 'on', ...
        'GridAlpha', 0.13, 'LineWidth', 0.7, 'Layer', 'top');
    xlabel(ax, options.XLabel);
    ylabel(ax, options.YLabel);
end

egoLine = plot(overview, egoS(rows), egoE(rows), 'Color', blue, 'LineWidth', 1.55);
fellowLines = gobjects(1, 2);
for i = 1:2
    fellowLines(i) = plot(overview, fellowS(:, i), fellowE(:, i), ...
        'LineStyle', styles(i), 'Color', colors(i, :), 'LineWidth', 1.1);
end
% Each connector joins centers recorded at the same instant.
snapshotRows = unique([rows(round(linspace(1, numel(rows), options.SnapshotCount))); passRow]);
for r = snapshotRows.'
    plot(overview, [egoS(r), fellowS(r, fellow)], [egoE(r), fellowE(r, fellow)], ...
        '-', 'Color', [0.68 0.71 0.75], 'LineWidth', 0.65, 'HandleVisibility', 'off');
    plot(overview, fellowS(r, fellow), fellowE(r, fellow), 'o', ...
        'Color', colors(fellow, :), 'MarkerFaceColor', 'w', 'MarkerSize', 4, 'HandleVisibility', 'off');
end
plot(overview, egoS(passRow), egoE(passRow), 'o', 'MarkerFaceColor', blue, ...
    'MarkerEdgeColor', 'w', 'MarkerSize', 6, 'HandleVisibility', 'off');
title(overview, "(a) " + options.PanelTitles(1), 'FontWeight', 'normal');
legend(overview, [egoLine fellowLines], ["Ego", "Fellow 1", "Fellow 2"], ...
    'Location', 'northoutside', 'Orientation', 'horizontal', 'Box', 'off');
offsets = [egoE(rows); reshape(fellowE(rows, :), [], 1)];
ylim(overview, [min(offsets) - 0.6, max(offsets) + 0.6]);

centerS = fellowS(passRow, fellow);
centerE = fellowE(passRow, fellow);
theta = linspace(0, 2*pi, 241);
safety = draw_ellipse(detail, centerS, centerE, safetyAxes, [0.93 0.71 0.39], '--');
collision = draw_ellipse(detail, centerS, centerE, collisionAxes, [0.49 0.27 0.20], '-');
zoom = rows(abs(egoS(rows) - centerS) <= 1.6*safetyAxes(2));
plot(detail, egoS(zoom), egoE(zoom), 'Color', blue, 'LineWidth', 1.65, 'HandleVisibility', 'off');
plot(detail, [egoS(passRow), centerS], [egoE(passRow), centerE], ':', ...
    'Color', [0.33 0.35 0.40], 'HandleVisibility', 'off');
plot(detail, centerS, centerE, 's', 'MarkerFaceColor', colors(fellow, :), ...
    'MarkerEdgeColor', 'w', 'MarkerSize', 6, 'HandleVisibility', 'off');
plot(detail, egoS(passRow), egoE(passRow), 'o', 'MarkerFaceColor', blue, ...
    'MarkerEdgeColor', 'w', 'MarkerSize', 6, 'HandleVisibility', 'off');
offset = abs(egoE(passRow) - centerE);
text(detail, centerS + 0.24*safetyAxes(2), egoE(passRow) + 0.34, ...
    sprintf('%.3f m lateral separation', offset), 'FontSize', 9, 'Color', blue);
title(detail, sprintf('(b) %s at %.3f s', options.PanelTitles(2), t(passRow)), 'FontWeight', 'normal');
legend(detail, [safety collision], ["MPC safety ellipse", "Collision ellipse"], ...
    'Location', 'southoutside', 'Orientation', 'horizontal', 'Box', 'off');
xlim(detail, centerS + [-1.55 1.55]*safetyAxes(2));
ylim(detail, [min(centerE - safetyAxes(1), min(egoE(zoom))) - 0.35, ...
    max(centerE + safetyAxes(1), max(egoE(zoom))) + 0.85]);

details = struct('Time_s', t(passRow), 'LateralSeparation_m', offset, ...
    'StationGap_m', centerS - egoS(passRow), 'SafetySemiAxes_m', safetyAxes, ...
    'CollisionSemiAxes_m', collisionAxes);
if options.OutputStem ~= ""
    exportgraphics(fig, options.OutputStem + ".pdf", 'ContentType', 'vector');
    exportgraphics(fig, options.OutputStem + ".png", 'Resolution', 450);
    savefig(fig, options.OutputStem + ".fig");
end

    function outline = draw_ellipse(ax, s, e, semi, color, style)
        outline = patch(ax, s + semi(2)*cos(theta), e + semi(1)*sin(theta), ...
            color, 'FaceColor', 0.15*color + 0.85*[1 1 1], 'EdgeColor', color*0.85, ...
            'LineStyle', style, 'LineWidth', 1.05);
    end
end
