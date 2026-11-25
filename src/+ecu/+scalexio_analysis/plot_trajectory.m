function fig = plot_trajectory(record,visible)
%PLOT_TRAJECTORY Show plant motion and controller-frame fellow tracks.
if nargin < 2, visible = "on"; end
[fig,layout] = plot_layout('Ego and obstacle trajectories',1,2,visible,1140);
plant = record.signals.plant;
ax = nexttile(layout);
plot(ax,plant.ego_x_m,plant.ego_y_m,'LineWidth',1.4);
grid(ax,'on');
title(ax,'Measured ego path in world coordinates');
xlabel(ax,'World X [m]'); ylabel(ax,'World Y [m]');
h = record.horizon;
traffic = record.traffic;
ax = nexttile(layout);
hold(ax,'on');
station = reshape(h.P(2,1,:),[],1);
offset = h.X0(1,:).';
gaps = controller_gaps(record,h.Time_s);
plot_road_trace(ax,station,offset,gaps,'Ego at solve input');
activeSlots = find(any(traffic.Active,1));
for slot = activeSlots
    station = traffic.Station_m(:,slot);
    offset = traffic.Offset_m(:,slot);
    inactive = ~traffic.Active(:,slot);
    station(inactive) = NaN;
    offset(inactive) = NaN;
    plot_road_trace(ax,station,offset,gaps,"Fellow slot "+slot);
end
grid(ax,'on'); legend(ax,'Location','best');
title(ax,'Controller input snapshots in road coordinates');
xlabel(ax,'Controller road station [m]'); ylabel(ax,'Lateral offset [m]');
end

function plot_road_trace(ax,station,offset,gaps,label)
% Insert a break before gaps without discarding the samples on either side.
positions = (1:numel(station)).' + cumsum(gaps);
x = NaN(numel(station)+nnz(gaps),1);
y = x;
x(positions) = station;
y(positions) = offset;
plot(ax,x,y,'.-','DisplayName',label);
end
