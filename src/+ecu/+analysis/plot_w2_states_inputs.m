function fig = plot_w2_states_inputs(plant, inputs, lowerBounds, upperBounds)
%PLOT_W2_STATES_INPUTS Seven plant states and three commands on their own clocks.
fig = figure('Color','w','Name','States and inputs','Position',[100 100 1100 900]);
layout = tiledlayout(fig,5,2,'TileSpacing','compact');
labels = {'e [m]','psi [rad]','Speed error v [m/s]','vy [m/s]', ...
    'gamma [rad/s]','vx [m/s]','s [m]'};
for k=1:7
    ax=nexttile(layout); plot(ax,plant.time_s,plant.state(k,:));
    ylabel(ax,labels{k}); xlabel(ax,'Time [s]'); grid(ax,'on');
end
labels={'Fx [N]','Fy [N]','Mz [N m]'};
for k=1:3
    ax=nexttile(layout); hold(ax,'on'); grid(ax,'on');
    if isempty(inputs.values)
        text(ax,.1,.5,'Commands not available','Units','normalized');
    else
        stairs(ax,inputs.time_s,inputs.values(k,:));
    end
    yline(ax,lowerBounds(k),'k--'); yline(ax,upperBounds(k),'k--');
    ylabel(ax,labels{k}); xlabel(ax,'Time [s]');
end
title(layout,"Plant states and "+inputs.label,'Interpreter','none');
end
