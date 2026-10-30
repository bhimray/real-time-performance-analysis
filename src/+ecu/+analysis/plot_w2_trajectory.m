function fig = plot_w2_trajectory(plant, instance, obstacleTimes)
%PLOT_W2_TRAJECTORY Path-coordinate trajectory, road bounds and obstacle times.
% plant has time_s and state (7-by-samples). Coordinates are s/e, not global XY.
arguments
    plant struct
    instance struct
    obstacleTimes double = [0 2 4 6 8]
end
fig = figure('Color','w','Name','Trajectory');
ax = axes(fig); hold(ax,'on'); grid(ax,'on');
plot(ax,plant.state(7,:),plant.state(1,:),'b','LineWidth',1.5, ...
    'DisplayName','Ego trajectory');
yline(ax,instance.road.bounds_m(1),'k--','DisplayName','Road bounds');
yline(ax,instance.road.bounds_m(2),'k--','HandleVisibility','off');
yline(ax,0,':','DisplayName','Reference path');
theta = linspace(0,2*pi,80);
semi = instance.obstacle_geometry.safety_semi_axes_m;
collisionSemi = instance.obstacle_geometry.collision_semi_axes_m;
times = obstacleTimes(obstacleTimes>=plant.time_s(1) & obstacleTimes<=plant.time_s(end));
colors = lines(max(1,numel(times)));
for k=1:numel(times)
    obstacles = ecu.scenario.obstacle_states(instance,times(k));
    for j=1:size(obstacles.s,1)
        safetyLine = plot(ax,obstacles.s(j)+semi(2)*cos(theta), ...
            obstacles.e(j)+semi(1)*sin(theta),'Color',colors(k,:), ...
            'HandleVisibility','off');
        collisionLine = plot(ax,obstacles.s(j)+collisionSemi(2)*cos(theta), ...
            obstacles.e(j)+collisionSemi(1)*sin(theta), ...
            'LineStyle',':','LineWidth',0.8,'Color',[0.72 0.72 0.72], ...
            'HandleVisibility','off');
        if k==1 && j==1
            set(safetyLine,'HandleVisibility','on','DisplayName','Safety envelope');
            set(collisionLine,'HandleVisibility','on','DisplayName','Collision boundary');
        end
        % Stagger labels when a stopped obstacle repeats at the same station.
        text(ax,obstacles.s(j),obstacles.e(j)+.22*(k-1), ...
            sprintf(' O%d  t=%g s',j,times(k)), ...
            'FontSize',8,'Color',colors(k,:));
    end
end
xlabel(ax,'Station s [m]'); ylabel(ax,'Lateral displacement e [m]');
title(ax,'Trajectory with safety and collision boundaries in road coordinates');
legend(ax,'Location','best');
end
