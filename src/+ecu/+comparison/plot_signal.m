function fig = plot_signal(firstRun, secondRun, signalId, options)
%PLOT_SIGNAL Overlay and difference for any selected canonical component.
% Example: ecu.comparison.plot_signal(a,b,"vehicle.state",Component=6,Label="vx [m/s]")
arguments
    firstRun struct
    secondRun struct
    signalId (1,1) string
    options.Component (1,1) double {mustBePositive,mustBeInteger} = 1
    options.Label (1,1) string = ""
    options.Scale (1,1) double {mustBePositive,mustBeFinite} = 1
    options.DisplayUnit (1,1) string = ""
    options.Visible (1,1) string = "on"
end
a=ecu.analysis.get_signal(firstRun,signalId); b=ecu.analysis.get_signal(secondRun,signalId);
assert(isequal(a.time_s,b.time_s),'Timestamps differ; difference plotting requires exact alignment.');
assert(options.Component<=min(size(a.values,1),size(b.values,1)),'Component unavailable.');
y1=options.Scale*a.values(options.Component,:);
y2=options.Scale*b.values(options.Component,:);
unit=options.DisplayUnit; if unit=="", unit=a.unit; end
label=options.Label;
if label=="", label=signalId+" ["+unit+"]"; end
fig=figure('Color','w','Visible',options.Visible,'Position',[100 100 1050 700]);
layout=tiledlayout(fig,2,1,'TileSpacing','compact');
ax=nexttile(layout); plot(ax,a.time_s,y1,'b-',a.time_s,y2,'r--');
grid(ax,'on'); legend(ax,'Run 1','Run 2','Location','best');
ylabel(ax,label,'Interpreter','none'); xlabel(ax,'Time [s]'); title(ax,'Overlay');
ax=nexttile(layout); plot(ax,a.time_s,y2-y1,'k','LineWidth',1.2);
grid(ax,'on'); ylabel(ax,"Difference ["+unit+"]",'Interpreter','none');
xlabel(ax,'Time [s]'); title(ax,'Run 2 minus Run 1');
title(layout,signalId+" — component "+options.Component,'Interpreter','none');
set(findall(fig,'Type','axes'),'Color','w','XColor','k','YColor','k');
end
