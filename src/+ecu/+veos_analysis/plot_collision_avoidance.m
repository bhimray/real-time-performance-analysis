function [fig, axesList] = plot_collision_avoidance(signals, options)
%PLOT_COLLISION_AVOIDANCE Compare traffic gaps with the controller and actuator responses.
% Title, PanelTitles, XLabels, YLabels, XLimits, and YLimits are optional.
% Use one label/limit for all panels or one entry per panel.
arguments
    signals timetable
    options.Title (1,1) string = ""
    options.PanelTitles string = strings(0,1)
    options.XLabels string = strings(0,1)
    options.YLabels string = strings(0,1)
    options.XLimits double = zeros(0,2)
    options.YLimits double = zeros(0,2)
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

% Positive station differences place the fellow ahead of the ego vehicle.
names = string(signals.Properties.VariableNames);
for fellow = 1:2
    station = "horizon_fellow" + fellow + "_station_m";
    if all(ismember([station, "horizon_ego_station_m"], names))
        gap = "mpc_fellow" + fellow + "_station_gap_m";
        signals.(gap) = signals.(station) - signals.horizon_ego_station_m;
    end
end

brakeNames = "act_brake_" + ["FL", "FR", "RL", "RR"] + "_Nm";
panels = {
    "Fellow 1 station gap", ["traffic_fellow1_station_gap_m", "mpc_fellow1_station_gap_m"], ...
        "Station gap [m]", "line", "", ["Recorded", "MPC node zero"]
    "Fellow 2 station gap", ["traffic_fellow2_station_gap_m", "mpc_fellow2_station_gap_m"], ...
        "Station gap [m]", "line", "", ["Recorded", "MPC node zero"]
    "Longitudinal force request", "cmd_Fx_N", "Force [N]", "stairs", "", ""
    "Lateral force request", "cmd_Fy_N", "Force [N]", "stairs", "", ""
    "Yaw moment request", "cmd_Mz_Nm", "Moment [N m]", "stairs", "", ""
    "Steering wheel angle", ["act_steering_wheel_deg", "ego_steering_wheel_deg"], ...
        "Steering wheel angle [deg]", "line", "", ["Command", "Measured"]
    "Brake torque commands", brakeNames, "Brake torque [N m]", "stairs", "", ...
        ["FL", "FR", "RL", "RR"]
    "Solver status", "solver_status", "Status code", "stairs", "", ""
};

[fig, axesList] = render_panels(signals, panels, "Collision avoidance timeline", 2, options);
end
