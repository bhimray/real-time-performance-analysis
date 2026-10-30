function fig = animate_trajectory(plant, obstacles, road, constraints, options)
%ANIMATE_TRAJECTORY Replay aligned ego/obstacle samples in global X/Y.
% No file loading or model execution. Close the figure to stop playback.
% obstacles has time_s, s/e (obstacles-by-samples), safety_semi_axes_m and
% collision_semi_axes_m. Preprocessing must align its clock to plant.time_s.
arguments
    plant struct
    obstacles struct
    road struct
    constraints struct
    options.PlaybackSpeed (1,1) double {mustBePositive,mustBeFinite} = 1
    options.FrameRate (1,1) double {mustBePositive,mustBeFinite} = 25
    options.Visible (1,1) string {mustBeMember(options.Visible,["on","off"])} = "on"
end

%% Validate clocks and prepare frame selection
t=plant.time_s(:).'; x=plant.state;
roadBounds=road.bounds_m(:);
curvature=road.curvature_per_m;
assert(all(isfinite(roadBounds)) && roadBounds(1)<roadBounds(2),'Invalid road bounds.');
assert(~isempty(t) && all(isfinite(t)) && all(diff(t)>0),'Invalid plant timestamps.');
assert(size(x,1)==7 && size(x,2)==numel(t) && all(isfinite(x),'all'),'Invalid plant states.');
assert(numel(obstacles.time_s)==numel(t) && ...
    all(abs(obstacles.time_s(:).'-t)<1e-9),'Align obstacle timestamps before animation.');
assert(numel(constraints.state.time_s)==numel(t) && ...
    all(abs(constraints.state.time_s(:).'-t)<1e-9),'Constraint clock differs from plant.');
assert(isequal(size(obstacles.s),size(obstacles.e)) && ...
    size(obstacles.s,1)==2 && size(obstacles.s,2)==numel(t) && all(isfinite(obstacles.s),'all') ...
    && all(isfinite(obstacles.e),'all'),'Invalid obstacle arrays.');
assert(size(constraints.state.violated,1)==5 && ...
    size(constraints.state.violated,2)==numel(t),'Expected five state-constraint flags.');
safety=obstacles.safety_semi_axes_m(:);
physical=obstacles.collision_semi_axes_m(:);
assert(numel(safety)==2 && numel(physical)==2 && ...
    all(isfinite([safety;physical])) && all([safety;physical]>0),'Invalid ellipse axes.');
collision=((x(1,:)-obstacles.e)/physical(1)).^2 ...
    + ((x(7,:)-obstacles.s)/physical(2)).^2 <= 1;
stateViolation=any(constraints.state.violated,1);
collisionSample=any(collision,1);

% Display conversion only; constraint/collision checks remain in road space.
[egoX,egoY]=ecu.animation.road_to_global(x(7,:),x(1,:),curvature);
[obstacleX,obstacleY]=ecu.animation.road_to_global(obstacles.s,obstacles.e,curvature);
allS=[x(7,:),obstacles.s(:).'];
roadS=linspace(min(allS)-safety(2),max(allS)+safety(2),600);
[referenceX,referenceY]=ecu.animation.road_to_global(roadS,0,curvature);
[lowerX,lowerY]=ecu.animation.road_to_global(roadS,roadBounds(1),curvature);
[upperX,upperY]=ecu.animation.road_to_global(roadS,roadBounds(2),curvature);

% Choose existing samples near display times; never interpolate the states.
targets=t(1):options.PlaybackSpeed/options.FrameRate:t(end);
if numel(t)>1
    frames=unique([1,round(interp1(t,1:numel(t),targets,'nearest')),numel(t)]);
else
    frames=1;
end

%% Create a stable view and reusable graphics handles
fig=figure('Name','Timestamped vehicle motion','Color','w', ...
    'Position',[80 80 1200 820],'Visible',options.Visible);
layout=tiledlayout(fig,3,1,'TileSpacing','compact','Padding','compact');
layout.OuterPosition=[0 0 1 .86]; % Keep status outside the spatial view.
ax=nexttile(layout,[2 1]); hold(ax,'on'); grid(ax,'on');
plot(ax,lowerX,lowerY,'k--','DisplayName','Ego road bounds');
plot(ax,upperX,upperY,'k--','HandleVisibility','off');
plot(ax,referenceX,referenceY,':','Color',[.6 .6 .6],'DisplayName','Reference road');
trail=plot(ax,NaN,NaN,'b-','LineWidth',1.4,'DisplayName','Ego path');
ego=plot(ax,egoX(1),egoY(1),'bo','MarkerFaceColor','b','HandleVisibility','off');
badTrail=plot(ax,NaN,NaN,'rx','MarkerSize',6,'DisplayName','State-constraint violation');
collisionTrail=plot(ax,NaN,NaN,'mx','MarkerSize',9,'LineWidth',1.5, ...
    'DisplayName','Physical collision');
theta=linspace(0,2*pi,80); colors=lines(size(obstacles.s,1));
envelopes=gobjects(size(obstacles.s,1),1); boundaries=envelopes;
centers=envelopes; labels=envelopes;
for j=1:size(obstacles.s,1)
    envelopes(j)=plot(ax,NaN,NaN,'Color',colors(j,:),'HandleVisibility','off');
    boundaries(j)=plot(ax,NaN,NaN,':','Color',[.72 .72 .72],'LineWidth',.8, ...
        'HandleVisibility','off');
    centers(j)=plot(ax,NaN,NaN,'.','Color',colors(j,:),'MarkerSize',14,'HandleVisibility','off');
    labels(j)=text(ax,0,0,sprintf(' O%d',j),'Color',colors(j,:));
end
allX=[egoX,obstacleX(:).',lowerX,upperX];
allY=[egoY,obstacleY(:).',lowerY,upperY];
padding=max(safety)+1;
axis(ax,'equal');
xlim(ax,[min(allX)-padding,max(allX)+padding]);
ylim(ax,[min(allY)-padding,max(allY)+padding]);
xlabel(ax,'Global X [m]'); ylabel(ax,'Global Y [m]');
title(ax,'Global motion: solid safety envelopes, dotted collision boundaries');
legend(ax,'Location','eastoutside');
status=annotation(fig,'textbox',[.02 .89 .78 .10],'String','', ...
    'EdgeColor','none','BackgroundColor','w','FontSize',10,'Interpreter','none');

marginAx=nexttile(layout); hold(marginAx,'on'); grid(marginAx,'on');
marginLines=gobjects(1,2);
for j=1:2
    marginLines(j)=plot(marginAx,NaN,NaN,'Color',colors(j,:), ...
        'DisplayName',sprintf('Obstacle %d safety h',j));
end
yline(marginAx,0,'k--','DisplayName','Safety boundary');
cursor=xline(marginAx,t(1),'k:','HandleVisibility','off');
if t(end)>t(1), xlim(marginAx,[t(1),t(end)]); end
h=constraints.state.values(4:5,:);
ylim(marginAx,[min(-.1,min(h,[],'all')-.02),2]);
xlabel(marginAx,'Time [s]'); ylabel(marginAx,'Safety h [dimensionless]');
title(marginAx,'Safety margin versus time — boundary view; distant positive values clipped');
legend(marginAx,'Location','northeast');
set([ax,marginAx],'Color','w','XColor','k','YColor','k');
setappdata(fig,'paused',false);
pauseButton=uicontrol(fig,'Style','pushbutton','String','Pause','Units','normalized', ...
    'Position',[.88 .95 .08 .035],'Callback',@(button,~) toggle_pause(button,fig));

%% Replay using simulation timestamps and a wall clock
clock=tic; pausedSeconds=0;
for k=frames
    target=(t(k)-t(1))/options.PlaybackSpeed;
    while isgraphics(fig)
        if getappdata(fig,'paused')
            pauseClock=tic;
            while isgraphics(fig) && getappdata(fig,'paused')
                drawnow; pause(.02);
            end
            pausedSeconds=pausedSeconds+toc(pauseClock);
        else
            remaining=target+pausedSeconds-toc(clock);
            if remaining<=0, break; end
            pause(min(.02,remaining));
        end
    end
    if ~isgraphics(fig), return; end
    set(trail,'XData',egoX(1:k),'YData',egoY(1:k));
    mark=find(stateViolation(1:k));
    set(badTrail,'XData',egoX(mark),'YData',egoY(mark));
    mark=find(collisionSample(1:k));
    set(collisionTrail,'XData',egoX(mark),'YData',egoY(mark));
    color=[0 .35 .85];
    if any(constraints.state.near_boundary(:,k)), color=[.9 .55 0]; end
    if stateViolation(k), color=[.85 0 0]; end
    if collisionSample(k), color=[.8 0 .8]; end
    set(ego,'XData',egoX(k),'YData',egoY(k),'Color',color,'MarkerFaceColor',color);
    for j=1:size(obstacles.s,1)
        so=obstacles.s(j,k); eo=obstacles.e(j,k);
        envelopeColor=colors(j,:);
        if constraints.state.violated(j+3,k), envelopeColor=[.85 0 0]; end
        % Map every boundary point, rather than leaving ellipses axis-aligned.
        [boundaryX,boundaryY]=ecu.animation.road_to_global( ...
            so+safety(2)*cos(theta),eo+safety(1)*sin(theta),curvature);
        set(envelopes(j),'XData',boundaryX,'YData',boundaryY,'Color',envelopeColor);
        boundaryColor=[.72 .72 .72];
        if collision(j,k), boundaryColor=[.8 0 .8]; end
        [boundaryX,boundaryY]=ecu.animation.road_to_global( ...
            so+physical(2)*cos(theta),eo+physical(1)*sin(theta),curvature);
        set(boundaries(j),'XData',boundaryX,'YData',boundaryY,'Color',boundaryColor);
        set(centers(j),'XData',obstacleX(j,k),'YData',obstacleY(j,k));
        set(labels(j),'Position',[obstacleX(j,k) obstacleY(j,k) 0]);
        set(marginLines(j),'XData',t(1:k),'YData',h(j,1:k));
    end
    set(cursor,'Value',t(k));
    stateNames=string(constraints.state.names(constraints.state.violated(:,k)));
    inputText="No recorded input check"; inputNames=strings(0,1);
    inputIndex=find(constraints.input.time_s<=t(k)+1e-9,1,'last');
    if ~isempty(inputIndex)
        inputNames=string(constraints.input.names(constraints.input.violated(:,inputIndex)));
        inputText=sprintf('Latest %s check at %.3f s: %s',constraints.input.kind, ...
            constraints.input.time_s(inputIndex),list_or_none(inputNames));
    end
    statusLines=[string(sprintf('t = %.3f s    vx = %.2f m/s    playback = %gx', ...
        t(k),x(6,k),options.PlaybackSpeed)); ...
        "State violations now: "+list_or_none(stateNames);string(inputText); ...
        string(sprintf('Physical collision now: %d    State-violation samples so far: %d', ...
        collisionSample(k),sum(stateViolation(1:k))))];
    statusColor=[0 0 0];
    if stateViolation(k) || collisionSample(k) || ~isempty(inputNames)
        statusColor=[.8 0 0];
    end
    set(status,'String',statusLines,'Color',statusColor);
    drawnow;
end
if isgraphics(fig)
    completed=string(status.String);
    completed(1)=completed(1)+" — complete";
    set(status,'String',completed);
    set(pauseButton,'String','Complete','Enable','off');
end
end

function text = list_or_none(names)
text=strjoin(names,', ');
if isempty(names), text="none"; end
end

function toggle_pause(button,fig)
paused=~getappdata(fig,'paused'); setappdata(fig,'paused',paused);
if paused, button.String='Resume'; else, button.String='Pause'; end
end
