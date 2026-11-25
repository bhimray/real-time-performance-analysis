function fig = plot_overruns(record,visible)
%PLOT_OVERRUNS Show recorded RTOS counters and sampling gaps.
if nargin < 2, visible = "on"; end
timing = record.timing;
time = seconds(timing.Time);
controllerPeriod = timing.Properties.UserData.ControllerPeriod_s;
[fig,layout] = plot_layout('SCALEXIO task timing and overruns',3,1,visible);
axesList = gobjects(3,1);
axesList(1) = nexttile(layout);
ax = axesList(1);
hold(ax,'on');
plot(ax,time,1000*timing.solver_time_s,'.','DisplayName','Solver duration');
plot(ax,time,1000*timing.task2_turnaround_time_s,'x','DisplayName','Task 2 turnaround as logged');
if isfinite(controllerPeriod)
    yline(ax,1000*controllerPeriod,'k--','DisplayName','Configured controller period');
end
set(ax,'YScale','log'); grid(ax,'on'); ylabel(ax,'Duration [ms]');
title(ax,'RTOS turnaround can describe the previous invocation');
legend(ax,'Location','best');
axesList(2) = nexttile(layout);
ax = axesList(2);
hold(ax,'on');
stairs(ax,time,timing.task2_overrun_count-timing.task2_overrun_count(1), ...
    'DisplayName','Additional Task 2 overruns');
stairs(ax,time,cumsum(timing.unsaved_task_calls),'--','DisplayName','Unsaved task calls');
grid(ax,'on'); ylabel(ax,'Count since recording start'); legend(ax,'Location','best');
axesList(3) = nexttile(layout);
ax = axesList(3);
plot(ax,time,1000*timing.sample_interval_s,'.');
if isfinite(controllerPeriod)
    yline(ax,1000*controllerPeriod,'k--');
end
grid(ax,'on'); ylabel(ax,'Sample interval [ms]');
xlabel(ax,'Recorded time [s]');
linkaxes(axesList,'x');
end
