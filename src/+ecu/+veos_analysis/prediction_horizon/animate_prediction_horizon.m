function fig = animate_prediction_horizon(recordingFile, options)
%ANIMATE_PREDICTION_HORIZON Replay one aligned NMPC horizon per solver update.
% The solid history and shaded dashed forecast use the same simulation clock.
arguments
    recordingFile (1,1) string
    options.PlaybackSpeed (1,1) double {mustBeFinite, mustBePositive} = 0.25
    options.HistorySeconds (1,1) double {mustBeFinite, mustBePositive} = 4
    options.TimeWindow_s (1,2) double = [-Inf, Inf]
    options.Panels (1,:) string = ["station","lateral","velocity","heading","yaw_rate", ...
        "fx","fy","mz","margin","slack"]
    options.AutoPlay (1,1) logical = true
    options.CollisionSemiAxes_m (2,1) double {mustBeFinite, mustBePositive} = collision_axes()
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

d = load_prediction_data(recordingFile);
d.Collision = options.CollisionSemiAxes_m;
h = d.Horizon;
rows = find(h.Time_s >= options.TimeWindow_s(1) & h.Time_s <= options.TimeWindow_s(2));
assert(~isempty(rows), 'The selected window contains no recorded solver updates.');
names = ["station","lateral","velocity","heading","yaw_rate","fx","fy","mz","margin","slack"];
builders = {@panel_station,@panel_lateral,@panel_velocity,@panel_heading,@panel_yaw_rate, ...
    @panel_fx,@panel_fy,@panel_mz,@panel_margin,@panel_slack};
[known, selected] = ismember(options.Panels, names);
assert(~isempty(selected) && all(known) && numel(unique(selected)) == numel(selected), ...
    'Panels must contain distinct supported panel names.');

fig = figure('Name', 'VEOS NMPC prediction replay', 'Color', 'w', ...
    'Visible', options.Visible, 'Position', [70 65 1450 900]);
status = uicontrol(fig, 'Style', 'text', 'Units', 'normalized', 'Position', [.025 .953 .65 .037], ...
    'BackgroundColor', 'w', 'HorizontalAlignment', 'left', 'FontSize', 10);
playButton = button("Play", .68, @(~,~) toggle_play());
replayButton = button("Replay", .755, @(~,~) replay());
previousButton = button("Previous", .83, @(~,~) step(-1));
nextButton = button("Next", .905, @(~,~) step(1));
layout = tiledlayout(fig, numel(selected), 3, 'TileSpacing', 'compact', 'Padding', 'compact');
layout.OuterPosition = [0 0 1 .94];
colors = [0.04 0.33 0.58; 0.76 0.28 0.09; 0.03 0.45 0.37];
roadAx = nexttile(layout, [numel(selected), 1]);
drawRoad = road_view(roadAx, d, rows, colors);
drawPanel = cell(size(selected));
for i = 1:numel(selected)
    ax = nexttile(layout, [1, 2]);
    drawPanel{i} = time_panel(ax, builders{selected(i)}(d), colors);
    if i < numel(selected)
        ax.XTickLabel = [];
    else
        xlabel(ax, 'Simulation time [s]');
    end
end

title(layout, 'Solid lines show recorded history · Dashed lines show the shaded MPC horizon');

frame = 1;
playing = false;
inLoop = false;
clock = [];
origin = 0;
fig.UserData = struct('SolveTime_s', h.Time_s(rows(1)));
draw_frame();
if options.AutoPlay
    start_play();
end

    function handle = button(label, left, callback)
        handle = uicontrol(fig, 'Style', 'pushbutton', 'String', label, ...
            'Units', 'normalized', 'Position', [left .953 .068 .035], 'Callback', callback);
    end

    function toggle_play()
        if playing
            playing = false;
            set_controls();
        else
            start_play();
        end
    end

    function replay()
        frame = 1;
        draw_frame();
        start_play();
    end

    function step(direction)
        frame = min(numel(rows), max(1, frame + direction));
        draw_frame();
    end

    function start_play()
        if frame == numel(rows)
            return
        end
        playing = true;
        origin = h.Time_s(rows(frame));
        clock = tic;
        set_controls();
        if inLoop
            return
        end
        inLoop = true;
        while isgraphics(fig) && playing && frame < numel(rows)
            target = (h.Time_s(rows(frame+1)) - origin) / options.PlaybackSpeed;
            remaining = target - toc(clock);
            if remaining > 0
                pause(min(remaining, 0.02));
            else
                frame = frame + 1;
                draw_frame();
                drawnow;
            end
        end
        inLoop = false;
        playing = false;
        if isgraphics(fig)
            set_controls();
        end
    end

    function draw_frame()
        k = rows(frame);
        now = h.Time_s(k);
        viewStart = now - options.HistorySeconds;
        viewEnd = now + h.StageTime_s(end);
        drawRoad(k, find(d.Time >= viewStart & d.Time <= now));
        for panel = 1:numel(drawPanel)
            drawPanel{panel}(k, now, viewStart, viewEnd);
        end
        message = sprintf('Solve %d/%d    t = %.3f s    Status %g    Cost %.4g    Playback %gx', ...
            frame, numel(rows), now, h.SolverStatus(k), h.SolverCost(k), options.PlaybackSpeed);
        if h.SolverStatus(k) ~= 0
            message = [message, '    Forecast unavailable'];
        end
        status.String = message;
        fig.UserData.SolveTime_s = now;
        set_controls();
    end

    function set_controls()
        if playing
            playButton.String = 'Pause';
            playButton.Enable = 'on';
            replayButton.Enable = 'off';
            previousButton.Enable = 'off';
            nextButton.Enable = 'off';
        else
            playButton.String = 'Play';
            state = {'off', 'on'};
            playButton.Enable = state{1 + (frame < numel(rows))};
            replayButton.Enable = state{1 + (numel(rows) > 1)};
            previousButton.Enable = state{1 + (frame > 1)};
            nextButton.Enable = state{1 + (frame < numel(rows))};
        end
    end
end

function axes_m = collision_axes()
config = scenario_config();
axes_m = config.collision_semi_axes_m;
end
