function fig = plot_steering(record,visible)
%PLOT_STEERING Show the recorded wheel-angle commands in degrees.
if nargin < 2, visible = "on"; end
commands = record.commands;
time = seconds(commands.Time);
gaps = controller_gaps(record,time);
[fig,layout] = plot_layout('Steering commands',2,1,visible);
ax = nexttile(layout);
native_trace(ax,time,commands.cmd_road_wheel_angle_deg,gaps);
title(ax,'Front road-wheel angle command'); ylabel(ax,'Angle [deg]');
ax = nexttile(layout);
native_trace(ax,time,commands.cmd_steering_wheel_deg,gaps);
title(ax,'Steering-wheel angle command'); ylabel(ax,'Angle [deg]');
end
