function signals = sample_lane_reference(laneData, station)
%SAMPLE_LANE_REFERENCE Query loaded reference values at prediction stations.
%
%   Outputs use the same row-vector convention as PATH_SIGNALS.
%   Linear interpolation is exact for the constant A6 controller signals.
%   Interpolated global X/Y approximates the circular geometry between samples.
%
%   No extrapolation is performed. Extend the saved road if a prediction
%   horizon reaches beyond the lookup interval.

validateattributes(station, {'double'}, ...
    {'vector', 'nonempty', 'real', 'finite'});

station = station(:).';
savedStation = laneData.reference.station_m;

assert(all(station >= savedStation(1)) && ...
    all(station <= savedStation(end)), ...
    'ecu:LaneLookupRange', ...
    ['Prediction stations exceed the saved lane interval. ' ...
     'Export a longer station range.']);

signals.s = station;

fieldNames = {
    'X_m', 'Y_m', 'heading_rad', 'curvature_per_m', ...
    'psi_pvr', 'dpsi_pr', 'dpsi_pvr', 'ddpsi_pr', 'ddpsi_pvr', ...
    'vr', 'dvr', 'emin', 'emax'
};

for field = 1:numel(fieldNames)
    name = fieldNames{field};
    values = laneData.reference.(name);

    sampledValues = interp1(savedStation, values, station, 'linear');
    signals.(name) = sampledValues(:).';
end

end
