function [fig, axesList] = plot_states_inputs(signals, options)
%PLOT_STATES_INPUTS Plot the MPC initial-state bounds and requested body wrench.
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

panels = {
    "Lateral error", "mpc_lbx0_lateral_error_m", "Lateral error [m]", "stairs", "", ""
    "Heading error", "mpc_lbx0_heading_error_rad", "Heading error [rad]", "stairs", "", ""
    "Along-path speed error", "mpc_lbx0_speed_error_mps", "Speed error [m/s]", "stairs", "", ""
    "Lateral velocity", "mpc_lbx0_lateral_velocity_mps", "Lateral velocity [m/s]", "stairs", "", ""
    "Yaw rate", "mpc_lbx0_yaw_rate_radps", "Yaw rate [rad/s]", "stairs", "", ""
    "Longitudinal force request", "cmd_Fx_N", "Force [N]", "stairs", "", ""
    "Lateral force request", "cmd_Fy_N", "Force [N]", "stairs", "", ""
    "Yaw moment request", "cmd_Mz_Nm", "Moment [N m]", "stairs", "", ""
};

[fig, axesList] = render_panels(signals, panels, "MPC initial state and body wrench request", 2, options);
end
