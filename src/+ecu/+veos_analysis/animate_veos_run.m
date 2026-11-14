function fig = animate_veos_run(recordingFile, options)
%ANIMATE_VEOS_RUN Replay recorded ego and fellow motion in road coordinates.
% Supply CollisionSemiAxes_m as [lateral; longitudinal], or use the project
% scenario_config defaults. TimeWindow_s selects an optional replay interval.
arguments
    recordingFile (1,1) string
    options.PlaybackSpeed (1,1) double {mustBePositive, mustBeFinite} = 1
    options.FrameRate (1,1) double {mustBePositive, mustBeFinite} = 25
    options.TimeWindow_s (1,2) double = [-Inf, Inf]
    options.CollisionSemiAxes_m (2,1) double {mustBePositive, mustBeFinite} = ...
        default_collision_axes()
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on", "off"])} = "on"
end

data = load(recordingFile, 'signals', 'channelDictionary', 'horizon');
assert(isfield(data, 'horizon') && ~isempty(data.horizon), ...
    'Convert the VEOS recording with the horizon-aware converter first.');
horizon = data.horizon;
time = horizon.TrafficTime_s(:);
selected = time >= options.TimeWindow_s(1) & time <= options.TimeWindow_s(2);
assert(options.TimeWindow_s(1) < options.TimeWindow_s(2) && nnz(selected) >= 2, ...
    'Choose an increasing time window containing at least two recorded samples.');
time = time(selected).';
signals = data.signals(seconds(time), :);
active = repmat(horizon.TrafficActive(selected).', 2, 1);

% Use the measured station, lateral offset and speed at node zero.
layout = ecu.control.parameter_layout();
dictionary = data.channelDictionary;
speedChannel = dictionary.OriginalName == "P[" + (layout.vx-1) + "][0]" & ...
    endsWith(dictionary.OriginalPath, "/horizon_prep");
assert(nnz(speedChannel) == 1, 'Expected one node-zero speed channel.');
state = zeros(7, numel(time));
state(1, :) = signals.mpc_lbx0_lateral_error_m.';
state(6, :) = signals.(dictionary.SignalName(speedChannel)).';
state(7, :) = signals.horizon_ego_station_m.';
plant = struct('time_s', time, 'state', state);

station = [signals.horizon_fellow1_station_m, signals.horizon_fellow2_station_m].';
offset = [signals.horizon_fellow1_lateral_offset_m, signals.horizon_fellow2_lateral_offset_m].';
% Inactive positions are masked by the renderer and excluded from checks.
station(~active) = 0;
offset(~active) = 0;
recordedAxes = [layout.obstacle1(3:4), layout.obstacle2(3:4)];
activeGeometry = horizon.P(recordedAxes, 1, horizon.ActiveAtSolve);
assert(~isempty(activeGeometry), 'The recording has no active obstacle geometry.');
safety = activeGeometry(1:2, 1, 1);
assert(all(reshape(activeGeometry, 2, []) == safety, 'all'), ...
    'This replay requires fixed, shared safety semi-axes.');
bounds = horizon.P([layout.emin, layout.emax], 1, horizon.ActiveAtSolve);
assert(all(bounds == bounds(:, :, 1), 'all'), 'This replay requires fixed road bounds.');
road = struct('bounds_m', bounds(:, :, 1), 'curvature_per_m', 0);
obstacles = struct('time_s', time, 's', station, 'e', offset, 'active', active, ...
    'safety_semi_axes_m', safety, 'collision_semi_axes_m', options.CollisionSemiAxes_m);

% Evaluate the two safety ellipses on recorded positions, plus the road
% bound. Leave the stability and input checks unreported in this replay.
safetyMargin = ((state(1, :) - offset) / safety(1)).^2 + ...
    ((state(7, :) - station) / safety(2)).^2 - 1;
roadMargin = min(state(1, :) - road.bounds_m(1), road.bounds_m(2) - state(1, :));
values = [NaN(2, numel(time)); roadMargin; safetyMargin];
checked = [false(2, numel(time)); true(1, numel(time)); active];
constraints.state = struct('time_s', time, 'values', values, ...
    'violated', checked & values < 0, 'near_boundary', checked & abs(values) <= 1e-4, ...
    'names', ["", "", "Road bounds", "Fellow 1 safety ellipse", "Fellow 2 safety ellipse"]);
constraints.input = struct('time_s', []);

fig = ecu.animation.animate_trajectory(plant, obstacles, road, constraints, ...
    Coordinates="road", PlaybackSpeed=options.PlaybackSpeed, ...
    FrameRate=options.FrameRate, Visible=options.Visible);
end

function axes_m = default_collision_axes()
config = scenario_config();
axes_m = config.collision_semi_axes_m;
end
