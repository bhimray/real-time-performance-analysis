function fig = plot_constraints(record,visible)
%PLOT_CONSTRAINTS Compare road bounds, ellipse margins and obstacle slacks.
if nargin < 2, visible = "on"; end
h = record.horizon;
layoutRows = ecu.control.parameter_layout();
obstacleRows = [layoutRows.obstacle1; layoutRows.obstacle2];
n = numel(h.Time_s);
minimumMargin = NaN(n,2);
inputMargin = NaN(n,2);
maximumSlack = NaN(n,2);
for k = find(h.TrafficActive).'
    for fellow = 1:2
        indices = obstacleRows(fellow,:);
        geometry = h.P(indices,1:40,k);
        margins = ellipse_margin(h.P(layoutRows.s,1:40,k),h.X(1,1:40,k),geometry);
        inputMargin(k,fellow) = margins(1);
        if h.ValidPrediction(k)
            minimumMargin(k,fellow) = min(margins);
            maximumSlack(k,fellow) = max(h.ObstacleSlack(fellow,:,k));
        end
    end
end
[fig,tiles] = plot_layout('Road bounds, safety margins and slack',4,1,visible);
[t,order] = sort(h.EstimatedInputTime_s);
ax = nexttile(tiles);
plot(ax,t,h.X0(1,order).','.', ...
    t,reshape(h.P(layoutRows.emin,1,order),[],1),'--', ...
    t,reshape(h.P(layoutRows.emax,1,order),[],1),'--');
grid(ax,'on'); xlabel(ax,'Estimated solve input time [s]'); ylabel(ax,'Offset [m]');
legend(ax,'Ego lateral error','Lower road bound','Upper road bound','Location','best');
ax = nexttile(tiles);
plot(ax,t,inputMargin(order,:),'.'); yline(ax,0,'k--');
grid(ax,'on'); xlabel(ax,'Estimated solve input time [s]'); ylabel(ax,'Margin [1]');
title(ax,'Safety ellipse margin at the recorded solve input');
legend(ax,'Obstacle 1','Obstacle 2','Location','best');
gaps = controller_gaps(record,h.Time_s);
ax = nexttile(tiles);
native_trace(ax,h.Time_s,minimumMargin,gaps); yline(ax,0,'k--');
title(ax,'Minimum predicted margin over constrained nodes 0–39'); ylabel(ax,'Margin [1]');
legend(ax,'Obstacle 1','Obstacle 2','Location','best');
ax = nexttile(tiles);
native_trace(ax,h.Time_s,maximumSlack,gaps);
title(ax,'Maximum lower obstacle slack on successful solves'); ylabel(ax,'Slack [1]');
legend(ax,'Obstacle 1','Obstacle 2','Location','best');
end
