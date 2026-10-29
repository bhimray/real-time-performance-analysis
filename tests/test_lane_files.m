function results = test_lane_files(outputDirectory)
%TEST_LANE_FILES Verify MAT/CSV exports and their use in controller horizons.
%
%   Compares sampled controller parameters against the existing analytical
%   A6 path implementation. No controller build or Simulink model is needed.

config = controller_config();

maximumCsvDifference = 0;
maximumHorizonDifference = 0;

%% Verify every exported family

for familyId = 1:4
    baseName = sprintf('F%d_0001_lanes', familyId);

    matFile = fullfile(outputDirectory, [baseName, '.mat']);
    csvFile = fullfile(outputDirectory, [baseName, '.csv']);

    laneData = ecu.scenario.load_lane_data(matFile);
    csvTable = readtable(csvFile, 'VariableNamingRule', 'preserve');

    assert(laneData.instance.family_id == familyId);
    assert(laneData.instance.instance_id == 1);

    assert(isequal(csvTable.Properties.VariableNames, ...
        laneData.lookup_table.Properties.VariableNames));

    csvValues = table2array(csvTable);
    expectedValues = table2array(laneData.lookup_table);

    relativeDifference = abs(csvValues - expectedValues) ...
        ./ max(1, abs(expectedValues));

    csvDifference = max(relativeDifference, [], 'all');
    maximumCsvDifference = max(maximumCsvDifference, csvDifference);

    assert(csvDifference < 1e-14);

    %% Confirm controller lookups at non-grid points and at both endpoints

    station = laneData.reference.station_m;

    queryStation = [
        station(1), ...
        (station(1) + station(2)) / 2, ...
        mean(station), ...
        station(end)
    ];

    sampled = ecu.scenario.sample_lane_reference(laneData, queryStation);

    assert(isequal(size(sampled.vr), [1, 4]));
    assert(all(sampled.vr == laneData.instance.reference.speed_mps));

    assert(max(abs(sampled.X_m([1, 4]) ...
        - laneData.reference.X_m([1, end]).')) < 1e-12);

    %% Compare saved-reference and analytical A5 parameter preparation

    previousSpeedErrors = -0.5 * ones(1, config.N);
    measuredSpeed = laneData.instance.reference.speed_mps + 0.25;

    for time = [0, 0.5, 1, 2, 8]
        measuredStation = 20 * time;

        analyticalParameters = ecu.scenario.prepare_horizon( ...
            laneData.instance, time, measuredStation, measuredSpeed, ...
            previousSpeedErrors, config);

        savedParameters = ecu.scenario.prepare_horizon( ...
            laneData.instance, time, measuredStation, measuredSpeed, ...
            previousSpeedErrors, config, laneData);

        horizonDifference = max(abs( ...
            savedParameters - analyticalParameters), [], 'all');

        maximumHorizonDifference = max( ...
            maximumHorizonDifference, horizonDifference);

        assert(horizonDifference < 1e-12);
    end
end

%% Reject lookup extrapolation and inconsistent scenario selection

firstFile = fullfile(outputDirectory, 'F1_0001_lanes.mat');
laneData = ecu.scenario.load_lane_data(firstFile);

caughtRangeError = false;

try
    ecu.scenario.sample_lane_reference( ...
        laneData, laneData.reference.station_m(end) + 1);
catch errorInfo
    caughtRangeError = strcmp(errorInfo.identifier, 'ecu:LaneLookupRange');
end

assert(caughtRangeError);

caughtScenarioError = false;
differentInstance = ecu.scenario.gen_instance(2, 1);

try
    ecu.scenario.prepare_horizon( ...
        differentInstance, 0, 0, differentInstance.reference.speed_mps, ...
        [], config, laneData);
catch errorInfo
    caughtScenarioError = strcmp( ...
        errorInfo.identifier, 'ecu:LaneScenarioMismatch');
end

assert(caughtScenarioError);

%% Summarize the validated export and controller interface

results = struct( ...
    'families_exported_and_loaded', 4, ...
    'maximum_relative_csv_difference', maximumCsvDifference, ...
    'maximum_horizon_parameter_difference', maximumHorizonDifference, ...
    'out_of_range_lookup_rejected', true, ...
    'scenario_mismatch_rejected', true, ...
    'scope', 'Lane file round-trip and parameter preparation; no simulation.' ...
);

disp(results);

end
