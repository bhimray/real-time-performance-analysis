function results = test_lane_resolution(outputDirectory)
%TEST_LANE_RESOLUTION Verify the refined 1 cm A6 reference exports.
%
%   Checks all four grids and compares the curved reference's interpolation
%   error against the earlier 0.5 m sampling, using the same geometry.

expectedSpacing = 0.01;
expectedPointCount = 50001;
maximumSpacingError = 0;

%% Verify every MAT lookup has the requested interval and spatial spacing

for familyId = 1:4
    fileName = sprintf('F%d_0001_lanes.mat', familyId);
    laneData = ecu.scenario.load_lane_data( ...
        fullfile(outputDirectory, fileName));

    station = laneData.reference.station_m;

    assert(numel(station) == expectedPointCount);
    assert(station(1) == 0 && station(end) == 500);

    spacingError = max(abs(diff(station) - expectedSpacing));
    maximumSpacingError = max(maximumSpacingError, spacingError);

    assert(spacingError < 1e-12);

    assert(isequal(size(laneData.lanes.boundaries.X_m), ...
        [expectedPointCount, 3]));
end

%% Evaluate the curved path between saved samples

laneData = ecu.scenario.load_lane_data( ...
    fullfile(outputDirectory, 'F2_0001_lanes.mat'));

queryStation = [100.005, 250.005, 499.995];

exact = ecu.scenario.path_signals( ...
    laneData.instance, queryStation, laneData.vehicle);

fine = ecu.scenario.sample_lane_reference(laneData, queryStation);

fineError = hypot(fine.X_m - exact.X_m, fine.Y_m - exact.Y_m);

%% Compare with a 0.5 m lookup built from the identical reference geometry

coarseStation = (0:0.5:500).';

coarsePath = ecu.scenario.path_signals( ...
    laneData.instance, coarseStation, laneData.vehicle);

coarseX = interp1(coarseStation, coarsePath.X_m(:), queryStation, 'linear');
coarseY = interp1(coarseStation, coarsePath.Y_m(:), queryStation, 'linear');

coarseError = hypot(coarseX - exact.X_m, coarseY - exact.Y_m);

assert(max(fineError) < 1e-6);
assert(max(fineError) < max(coarseError));

%% Return the grid and representative interpolation checks

results = struct( ...
    'families_checked', 4, ...
    'station_spacing_m', expectedSpacing, ...
    'points_per_family', expectedPointCount, ...
    'station_start_m', 0, ...
    'station_end_m', 500, ...
    'maximum_spacing_error_m', maximumSpacingError, ...
    'sampled_fine_interpolation_error_m', max(fineError), ...
    'sampled_coarse_interpolation_error_m', max(coarseError), ...
    'scope', 'Reference sampling and interpolation only; no simulation.' ...
);

disp(results);

end
