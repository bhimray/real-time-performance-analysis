function [fig, axesList] = plot_actuation(signals, options)
%PLOT_ACTUATION Plot steering and four-wheel torque commands and available feedback.
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

wheelOrder = ["FL", "FR", "RL", "RR"];
panels = {
    "Steering wheel angle", ["act_steering_wheel_deg", "ego_steering_wheel_deg"], ...
        "Steering wheel angle [deg]", "line", "", ["Command", "Measured"]
    "Drive torque commands", "act_drive_" + wheelOrder + "_Nm", ...
        "Drive torque [N m]", "stairs", "", wheelOrder
    "Brake torque commands", "act_brake_" + wheelOrder + "_Nm", ...
        "Brake torque [N m]", "stairs", "", wheelOrder
    "Measured shaft torque", "shaft_torque_" + wheelOrder + "_Nm", ...
        "Shaft torque [N m]", "line", "", wheelOrder
};

[fig, axesList] = render_panels(signals, panels, "Steering and wheel torque", 2, options);
end
