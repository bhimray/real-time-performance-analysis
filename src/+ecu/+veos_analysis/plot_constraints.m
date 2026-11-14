function [fig, axesList] = plot_constraints(signals, options)
%PLOT_CONSTRAINTS Plot recorded road bounds and available obstacle diagnostics.
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
    "Lateral error and road bounds", ["mpc_lbx0_lateral_error_m", ...
        "horizon_road_lower_m", "horizon_road_upper_m"], ...
        "Lateral position [m]", "stairs", "", ["MPC initial error", "Lower bound", "Upper bound"]
    "Maximum obstacle slack", ["obstacle1_max_slack", "obstacle2_max_slack"], ...
        "Slack", "stairs", "", ["Fellow 1", "Fellow 2"]
    "Minimum predicted ellipse margin", ["obstacle1_min_margin", "obstacle2_min_margin"], ...
        "Ellipse margin h", "stairs", "", ["Fellow 1", "Fellow 2"]
};

[fig, axesList] = render_panels(signals, panels, "Road constraints and obstacle slack", 1, options);
end
