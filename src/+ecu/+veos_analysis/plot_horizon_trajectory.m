function [fig, axesList] = plot_horizon_trajectory(signals, horizon, options)
%PLOT_HORIZON_TRAJECTORY Plot the run in road coordinates with solver diagnostics.
arguments
    signals timetable
    horizon (1,1) struct
    options.Title (1,1) string = ""
    options.PanelTitles string = strings(0,1)
    options.XLabels string = strings(0,1)
    options.YLabels string = strings(0,1)
    options.XLimits double = zeros(0,2)
    options.YLimits double = zeros(0,2)
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

% Keep the periodic recorder grid for the driven paths and leave diagnostics
% on the actual solver updates. The plots use gaps for absent samples.
signals = signals(seconds(horizon.TrafficTime_s), :);
for fellow = 1:2
    station = "horizon_fellow" + fellow + "_station_m";
    offset = "horizon_fellow" + fellow + "_lateral_offset_m";
    signals.(station)(~horizon.TrafficActive) = NaN;
    signals.(offset)(~horizon.TrafficActive) = NaN;
end
[~, updates] = ismember(horizon.Time_s, horizon.TrafficTime_s);
diagnostics = timetable(seconds(horizon.Time_s));
diagnostics.solver_status = horizon.SolverStatus;
diagnostics.solver_cost = horizon.SolverCost;
for fellow = 1:2
    diagnostics.("obstacle" + fellow + "_max_slack") = ...
        reshape(max(horizon.ObstacleSlack(fellow, :, :), [], 2), [], 1);
    diagnostics.("obstacle" + fellow + "_min_margin") = ...
        reshape(min(horizon.ObstacleMargin(fellow, :, :), [], 2), [], 1);
end
% Hold solve diagnostics until the next update for a readable time trace.
held = retime(diagnostics, seconds(horizon.TrafficTime_s), 'previous');
for name = string(held.Properties.VariableNames)
    values = held.(name);
    values(1:updates(1)-1) = NaN;
    signals.(name) = values;
end
panels = {
    "Ego and fellow trajectories", ...
        ["mpc_lbx0_lateral_error_m", "horizon_fellow1_lateral_offset_m", "horizon_fellow2_lateral_offset_m"], ...
        "Lateral offset [m]", "line", ...
        ["horizon_ego_station_m", "horizon_fellow1_station_m", "horizon_fellow2_station_m"], ...
        ["Ego", "Fellow 1", "Fellow 2"]
    "Minimum predicted safety-ellipse margin", ["obstacle1_min_margin", "obstacle2_min_margin"], ...
        "Ellipse margin", "stairs", "", ["Fellow 1", "Fellow 2"]
    "Maximum obstacle slack", ["obstacle1_max_slack", "obstacle2_max_slack"], ...
        "Lower-bound slack", "stairs", "", ["Fellow 1", "Fellow 2"]
    "Solver status", "solver_status", "Status code", "stairs", "", ""
    "Solver objective", "solver_cost", "Objective value", "stairs", "", ""
};
if isempty(options.XLabels)
    options.XLabels = ["Road station [m]", repmat("Time [s]", 1, 4)];
end
[fig, axesList] = render_panels(signals, panels, "NMPC collision avoidance", 2, options, [2; 1; 1; 1; 1]);
yline(axesList(2), 0, ':k', 'Safety ellipse boundary', 'HandleVisibility', 'off');
end
