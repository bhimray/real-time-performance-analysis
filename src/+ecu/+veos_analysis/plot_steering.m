function [fig, axesList] = plot_steering(signals, options)
%PLOT_STEERING Compare commanded and measured steering-wheel angles.
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

names = ["act_steering_wheel_deg", "ego_steering_wheel_deg"];
available = names(ismember(names, string(signals.Properties.VariableNames)));
if ~isempty(available)
    signals = signals(any(isfinite(signals{:, available}), 2), :);
end
panels = {
    "Commanded and measured steering", names, ...
    "Steering wheel angle [deg]", "line", "", ["Command", "Measured"]
};
[fig, axesList] = render_panels(signals, panels, "Steering response", 1, options);
end
