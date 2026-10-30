function fig = plot_w2_constraints(report, options)
%PLOT_W2_CONSTRAINTS Eight recorded constraint groups and synchronized counts.
arguments
    report struct
    options.ZoomObstacles (1,1) logical = true
end
fig = figure('Color','w','Name','Recorded A4 constraints', ...
    'Position',[60 60 1300 950]);
layout = tiledlayout(fig,3,3,'TileSpacing','compact');
for panel=1:8
    if panel<=3
        data=report.input; row=panel;
    else
        data=report.state; row=panel-3;
    end
    ax=nexttile(layout); hold(ax,'on'); grid(ax,'on');
    if isempty(data.time_s)
        text(ax,.1,.5,'No recorded commands','Units','normalized');
    else
        t=data.time_s; y=data.values(row,:);
        plot(ax,t,y,'b','DisplayName','Recorded value');
        plot(ax,t,data.lower(row,:),'k--','DisplayName','Bounds');
        if any(isfinite(data.upper(row,:)))
            plot(ax,t,data.upper(row,:),'k--','HandleVisibility','off');
        end
        near=data.near_boundary(row,:); bad=data.violated(row,:);
        plot(ax,t(near),y(near),'.','Color',[.9 .5 0], ...
            'DisplayName','Near boundary');
        plot(ax,t(bad),y(bad),'r.','DisplayName','Violation');
        if panel>=7 && options.ZoomObstacles
            % Hide distant feasible values, making small crossings readable.
            ylim(ax,[min(-.05,1.1*min(y)),max(1,min(y)+.5)]);
            title(ax,'Boundary zoom');
        end
    end
    ylabel(ax,data.labels(row),'Interpreter','none'); xlabel(ax,'Time [s]');
    if panel==1, legend(ax,'Location','best'); end
end
ax=nexttile(layout); hold(ax,'on'); grid(ax,'on');
if width(report.counts)>0
    c=report.counts;
    stairs(ax,c.time_s,c.total_near_count,'Color',[.9 .5 0], ...
        'DisplayName','Near (controller ticks)');
    stairs(ax,c.time_s,c.total_violation_count,'r','DisplayName','Violations (controller ticks)');
    stairs(ax,report.state.time_s,sum(report.state.violated,1),'--', ...
        'Color',[.5 .1 .6],'DisplayName','State violations (plant ticks)');
    ylim(ax,[-.2 8.2]); yticks(ax,0:2:8); legend(ax,'Location','best');
else
    text(ax,.1,.5,'Combined count unavailable','Units','normalized');
end
xlabel(ax,'Time [s]'); ylabel(ax,'Count out of 8');
title(ax,'Counts on their recorded clocks');
title(layout,report.scope,'Interpreter','none');
end
