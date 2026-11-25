function figures = plot_prediction_horizons(record,snapshotTimes,visible)
%PLOT_PREDICTION_HORIZONS Replay selected successful, active-traffic solves.
% Select by recorded solver output time. Plot the horizon on the model grid
% anchored to estimated input time, keeping command availability separate.
if nargin < 2, snapshotTimes = []; end
if nargin < 3, visible = "on"; end
h = record.horizon;
eligible = find(h.ValidPrediction);
assert(~isempty(eligible),'No successful horizons with active traffic were recorded.');
if isempty(snapshotTimes)
    peak = reshape(max(max(h.ObstacleSlack(:,:,eligible),[],1),[],2),[],1);
    [~,index] = max(peak);
    snapshots = eligible(index);
else
    snapshots = zeros(size(snapshotTimes));
    for j = 1:numel(snapshotTimes)
        [~,index] = min(abs(h.Time_s(eligible)-snapshotTimes(j)));
        snapshots(j) = eligible(index);
    end
end
figures = gobjects(size(snapshots));
parameters = ecu.control.parameter_layout();
obstacleRows = [parameters.obstacle1; parameters.obstacle2];
for j = 1:numel(snapshots)
    k = snapshots(j);
    estimatedInput = h.EstimatedInputTime_s(k);
    output = h.Time_s(k);
    stateTime = estimatedInput + h.StateStageTime_s;
    inputTime = estimatedInput + h.InputStageTime_s;
    constraintTime = estimatedInput + h.ConstraintStageTime_s;
    P = h.P(:,:,k);
    X = h.X(:,:,k);
    U = h.U(:,:,k);
    name = sprintf('Prediction horizon | snapshot %d | input estimate %.3f s | output %.3f s', ...
        k,estimatedInput,output);
    [figures(j),tiles] = plot_layout(name,3,2,visible,1140);

    ax = nexttile(tiles);
    hold(ax,'on');
    plot(ax,P(parameters.s,:),X(1,:),'o-','MarkerSize',3,'DisplayName','Ego predicted offset');
    for fellow = 1:2
        g = P(obstacleRows(fellow,:),:);
        plot(ax,g(1,:),g(2,:),'--','LineWidth',1.2,'DisplayName',"Obstacle "+fellow);
    end
    yline(ax,P(parameters.emin,1),':','HandleVisibility','off');
    yline(ax,P(parameters.emax,1),':','HandleVisibility','off');
    grid(ax,'on'); xlabel(ax,'Parameterized road station [m]'); ylabel(ax,'Offset [m]');
    title(ax,'Road-coordinate horizon'); legend(ax,'Location','best');

    ax = nexttile(tiles);
    plot(ax,stateTime,X(1,:),'o-','MarkerSize',3);
    ylabel(ax,'Lateral error [m]'); title(ax,'Predicted lateral error');
    mark_output(ax,output);

    ax = nexttile(tiles);
    stairs(ax,inputTime,U(1:2,:).'/1000);
    ylabel(ax,'Force [kN]'); title(ax,'Predicted forces (node zero unavailable)');
    legend(ax,'F_x','F_y','Location','best'); mark_output(ax,output);

    ax = nexttile(tiles);
    stairs(ax,inputTime,U(3,:)/1000);
    ylabel(ax,'Yaw moment [kN m]'); title(ax,'Predicted yaw moment (node zero unavailable)');
    mark_output(ax,output);

    ax = nexttile(tiles);
    margin = NaN(2,40);
    for fellow = 1:2
        margin(fellow,:) = ellipse_margin(P(parameters.s,1:40),X(1,1:40), ...
            P(obstacleRows(fellow,:),1:40));
    end
    plot(ax,constraintTime,margin.'); yline(ax,0,'k--','HandleVisibility','off');
    title(ax,'Predicted safety ellipse margin'); ylabel(ax,'Margin [1]');
    legend(ax,'Obstacle 1','Obstacle 2','Location','best'); mark_output(ax,output);

    ax = nexttile(tiles);
    plot(ax,constraintTime,h.ObstacleSlack(:,:,k).');
    title(ax,'Lower obstacle slack'); ylabel(ax,'Slack [1]');
    legend(ax,'Obstacle 1','Obstacle 2','Location','best'); mark_output(ax,output);
end
end

function mark_output(ax,time)
xline(ax,time,'k:','Recorded output','HandleVisibility','off', ...
    'LabelVerticalAlignment','bottom');
grid(ax,'on');
xlabel(ax,'Time from recording start [s]');
end
