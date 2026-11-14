function d = load_prediction_data(recordingFile)
%LOAD_PREDICTION_DATA Load synchronized histories and aligned solver updates.
data = load(recordingFile, 'signals', 'channelDictionary', 'horizon');
assert(isfield(data, 'horizon') && ~isempty(data.horizon), ...
    'Use a VEOS MAT file from the horizon-aware converter.');
h = data.horizon;
d.Horizon = h;
d.Layout = ecu.control.parameter_layout();
d.Time = h.TrafficTime_s(:);
s = data.signals(seconds(d.Time), :);
d.Signals = s;
d.Station = [s.horizon_ego_station_m, s.horizon_fellow1_station_m, s.horizon_fellow2_station_m];
d.Offset = [s.mpc_lbx0_lateral_error_m, s.horizon_fellow1_lateral_offset_m, s.horizon_fellow2_lateral_offset_m];
d.Station(~h.TrafficActive, 2:3) = NaN;
d.Offset(~h.TrafficActive, 2:3) = NaN;
d.Speed = s.(channel_name("P[0][0]", "/horizon_prep"));

active = find(h.ActiveAtSolve, 1);
assert(~isempty(active), 'The recording contains no active obstacle geometry.');
axesRows = [d.Layout.obstacle1(3:4); d.Layout.obstacle2(3:4)];
d.Safety = [h.P(axesRows(1,:), 1, active).'; h.P(axesRows(2,:), 1, active).'];
assert(all(isfinite(d.Safety) & d.Safety > 0, 'all'), 'Invalid safety ellipse semi-axes.');
for fellow = 1:2
    assert(all(h.P(axesRows(fellow,:), 1, h.ActiveAtSolve) == d.Safety(fellow,:).', 'all'), ...
        'Recorded-history margin requires constant safety semi-axes.');
end
[found, d.SolveRows] = ismember(h.Time_s, d.Time);
assert(all(found), 'Solver updates must match recorded sample timestamps.');

    function name = channel_name(rawName, block)
        dictionary = data.channelDictionary;
        match = dictionary.OriginalName == rawName & endsWith(dictionary.OriginalPath, block);
        assert(nnz(match) == 1, 'Expected one channel named %s at %s.', rawName, block);
        name = dictionary.SignalName(match);
    end
end
