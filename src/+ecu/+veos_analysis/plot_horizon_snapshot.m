function [fig, axesList] = plot_horizon_snapshot(horizon, time_s, options)
%PLOT_HORIZON_SNAPSHOT Inspect the solver update in effect at the given time.
arguments
    horizon (1,1) struct
    time_s (1,1) double {mustBeFinite}
    options.Title (1,1) string = ""
    options.PanelTitles string = strings(0,1)
    options.XLabels string = strings(0,1)
    options.YLabels string = strings(0,1)
    options.XLimits double = zeros(0,2)
    options.YLimits double = zeros(0,2)
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

assert(time_s >= horizon.Time_s(1) && time_s <= horizon.Time_s(end), ...
    'Snapshot time must be within the recorded solver updates.');
k = find(horizon.Time_s <= time_s + 8*eps(time_s), 1, 'last');
P = horizon.P(:, :, k);
layout = ecu.control.parameter_layout();
signals = timetable(seconds(horizon.StageTime_s(:)));
signals.egoStation = P(layout.s, :).';
signals.egoOffset = horizon.X(1, :, k).';
signals.fellow1Station = P(layout.obstacle1(1), :).';
signals.fellow1Offset = P(layout.obstacle1(2), :).';
signals.fellow2Station = P(layout.obstacle2(1), :).';
signals.fellow2Offset = P(layout.obstacle2(2), :).';
if ~horizon.ActiveAtSolve(k)
    signals{:, ["fellow1Offset", "fellow2Offset"]} = NaN;
end
if horizon.SolverStatus(k) ~= 0
    signals.egoOffset(2:end) = NaN;
end
signals.margin1 = [horizon.ObstacleMargin(1, :, k).'; NaN];
signals.margin2 = [horizon.ObstacleMargin(2, :, k).'; NaN];
signals.slack1 = [horizon.ObstacleSlack(1, :, k).'; NaN];
signals.slack2 = [horizon.ObstacleSlack(2, :, k).'; NaN];
panels = {
    "Predicted trajectories in road coordinates", ["egoOffset", "fellow1Offset", "fellow2Offset"], ...
        "Lateral offset [m]", "line", ["egoStation", "fellow1Station", "fellow2Station"], ...
        ["Ego (station from P)", "Fellow 1", "Fellow 2"]
    "Safety-ellipse margin by stage", ["margin1", "margin2"], ...
        "Ellipse margin", "line", "", ["Fellow 1", "Fellow 2"]
    "Lower-bound slack by stage", ["slack1", "slack2"], ...
        "Slack", "line", "", ["Fellow 1", "Fellow 2"]
};
if isempty(options.XLabels)
    options.XLabels = ["Road station [m]", "Prediction time [s]", "Prediction time [s]"];
end
heading = sprintf('NMPC horizon at %.3f s (status %g, cost %.4g)', ...
    horizon.Time_s(k), horizon.SolverStatus(k), horizon.SolverCost(k));
[fig, axesList] = render_panels(signals, panels, heading, 2, options, [2; 1; 1]);
yline(axesList(2), 0, ':k', 'Safety ellipse boundary', 'HandleVisibility', 'off');
end
