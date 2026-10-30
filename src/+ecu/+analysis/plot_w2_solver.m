function fig = plot_w2_solver(iterations, totalTime, activeCount, countLabel)
%PLOT_W2_SOLVER SQP iterations, solver seconds converted to ms, active count.
% Each argument has its own time_s and values. Empty means unavailable.
if nargin<4, countLabel=["Near-boundary constraints";"[count per solve]"]; end
fig = figure('Color','w','Name','Solver effort','Position',[100 100 1000 750]);
layout=tiledlayout(fig,3,1,'TileSpacing','compact');
signals={iterations,totalTime,activeCount};
labels={["SQP iteration count";"[per solve]"], ...
    ["Solver execution time";"[ms]"],string(countLabel)};
axesList=gobjects(1,3); times=[];
for k=1:3
    ax=nexttile(layout); s=signals{k};
    axesList(k)=ax;
    times=[times,s.time_s(:).']; %#ok<AGROW>
    if isempty(s.values)
        text(ax,.1,.5,'Not available in saved run','Units','normalized');
        set(ax,'YTick',[]);
    elseif k==2
        plot(ax,s.time_s,1000*s.values);
    else
        stairs(ax,s.time_s,s.values);
    end
    ylabel(ax,labels{k},'Interpreter','none'); xlabel(ax,'Time [s]'); grid(ax,'on');
    if k~=2 && ~isempty(s.values)
        ylim(ax,[0 max(1,max(s.values,[],'all'))*1.05]);
        ticks=unique(round(yticks(ax)));
        yticks(ax,ticks(ticks>=0)); % Counts cannot be fractional or negative.
    end
end
if numel(unique(times))>1
    set(axesList,'XLim',[min(times),max(times)]);
end
title(layout,'Solver effort and constraint proximity');
end
