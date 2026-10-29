function files = save_lane_data( ...
    instance, station, outputDirectory, originPose, vehicle)
%SAVE_LANE_DATA Export lane geometry and controller reference data.
%
%   FILES = ... (INSTANCE, STATION, OUTPUTDIRECTORY) writes:
%     F#_####_lanes.mat : Complete laneData structure, loaded before a run.
%     F#_####_lanes.csv : Numeric lookup table with explicit column names.
%
%   Optional ORIGINPOSE is [X0; Y0; heading0], default [0;0;0].
%   Optional VEHICLE contains the parameters used for A3 sideslip correction.
%
%   Existing files are preserved if their data match. Differing data require
%   a new output directory so an earlier reference is not silently replaced.

%% Select defaults and validate the lookup interval

if nargin < 4
    originPose = [0; 0; 0];
end

if nargin < 5
    config = controller_config();
    vehicle = config.vehicle;
end

validateattributes(station, {'double'}, ...
    {'vector', 'nonempty', 'real', 'finite'});

assert(numel(station) >= 2 && all(diff(station(:)) > 0), ...
    'ecu:LaneLookupStations', ...
    'A saved controller lookup needs at least two increasing stations.');

if ~isfolder(outputDirectory)
    mkdir(outputDirectory);
end

%% Generate geometric and controller-reference quantities

lanes = ecu.scenario.generate_lanes(instance, station, originPose);
path = ecu.scenario.path_signals(instance, station, vehicle);

numberOfPoints = numel(station);

reference.station_m = lanes.station_m;
reference.X_m = lanes.reference.X_m;
reference.Y_m = lanes.reference.Y_m;
reference.heading_rad = lanes.reference.heading_rad;
reference.curvature_per_m = ...
    instance.road.curvature_per_m * ones(numberOfPoints, 1);

reference.psi_pvr = path.psi_pvr(:);
reference.dpsi_pr = path.dpsi_pr(:);
reference.dpsi_pvr = path.dpsi_pvr(:);
reference.ddpsi_pr = path.ddpsi_pr(:);
reference.ddpsi_pvr = path.ddpsi_pvr(:);
reference.vr = path.vr(:);
reference.dvr = path.dvr(:);

reference.emin = instance.road.bounds_m(1) * ones(numberOfPoints, 1);
reference.emax = instance.road.bounds_m(2) * ones(numberOfPoints, 1);

%% Construct a readable, numeric-only CSV representation

lookupTable = table( ...
    reference.station_m, ...
    reference.X_m, ...
    reference.Y_m, ...
    reference.heading_rad, ...
    reference.curvature_per_m, ...
    reference.vr, ...
    reference.dvr, ...
    reference.psi_pvr, ...
    reference.dpsi_pr, ...
    reference.dpsi_pvr, ...
    reference.ddpsi_pr, ...
    reference.ddpsi_pvr, ...
    reference.emin, ...
    reference.emax, ...
    'VariableNames', { ...
        'station_m', 'reference_X_m', 'reference_Y_m', ...
        'reference_heading_rad', 'curvature_per_m', ...
        'reference_speed_mps', 'reference_speed_derivative_per_s', ...
        'sideslip_correction_rad', 'path_heading_derivative_per_m', ...
        'sideslip_derivative_rad_per_m', ...
        'path_heading_second_derivative_per_m2', ...
        'sideslip_second_derivative_rad_per_m2', ...
        'controller_emin_m', 'controller_emax_m' ...
    } ...
);

boundaryNames = {'right_edge', 'lane_divider', 'left_edge'};

for boundary = 1:numel(boundaryNames)
    prefix = boundaryNames{boundary};

    lookupTable.([prefix, '_X_m']) = lanes.boundaries.X_m(:, boundary);
    lookupTable.([prefix, '_Y_m']) = lanes.boundaries.Y_m(:, boundary);
end

lookupTable.left_lane_center_X_m = lanes.centerlines.X_m(:, 2);
lookupTable.left_lane_center_Y_m = lanes.centerlines.Y_m(:, 2);

lookupTable.lower_controller_bound_X_m = lanes.controller_bounds.X_m(:, 1);
lookupTable.lower_controller_bound_Y_m = lanes.controller_bounds.Y_m(:, 1);
lookupTable.upper_controller_bound_X_m = lanes.controller_bounds.X_m(:, 2);
lookupTable.upper_controller_bound_Y_m = lanes.controller_bounds.Y_m(:, 2);

lookupTable.lane_width_m = lanes.lane_width_m * ones(numberOfPoints, 1);
lookupTable.friction_coefficient = ...
    instance.friction_coefficient * ones(numberOfPoints, 1);

%% Keep scenario motion and units alongside the structured MAT data

laneData.schema_version = 1;
laneData.instance = instance;
laneData.vehicle = vehicle;
laneData.lanes = lanes;
laneData.reference = reference;
laneData.lookup_table = lookupTable;
laneData.units = 'SI units; angles in radians; positive lateral offset is left';

baseName = sprintf('F%d_%04d_lanes', ...
    instance.family_id, instance.instance_id);

files.mat_file = fullfile(outputDirectory, [baseName, '.mat']);
files.csv_file = fullfile(outputDirectory, [baseName, '.csv']);

%% Save the complete MAT structure without overwriting different data

if isfile(files.mat_file)
    existing = load(files.mat_file, 'laneData');

    assert(isfield(existing, 'laneData') && ...
        isequaln(existing.laneData, laneData), ...
        'ecu:LaneExportChanged', ...
        'Existing MAT data differ. Choose a new output directory: %s', ...
        files.mat_file);
else
    save(files.mat_file, 'laneData');
end

% %% Write a full-precision numeric CSV companion
% 
% if isfile(files.csv_file)
%     existingTable = readtable(files.csv_file, 'VariableNamingRule', 'preserve');
% 
%     assert(isequal(existingTable.Properties.VariableNames, ...
%         lookupTable.Properties.VariableNames), ...
%         'ecu:LaneExportChanged', ...
%         'Existing CSV columns differ. Choose a new output directory.');
% 
%     expectedValues = table2array(lookupTable);
%     existingValues = table2array(existingTable);
% 
%     assert(isequal(size(existingValues), size(expectedValues)), ...
%         'ecu:LaneExportChanged', ...
%         'Existing CSV size differs. Choose a new output directory.');
% 
%     relativeDifference = abs(existingValues - expectedValues) ...
%         ./ max(1, abs(expectedValues));
% 
%     assert(all(isfinite(existingValues), 'all') && ...
%         max(relativeDifference, [], 'all') < 1e-14, ...
%         'ecu:LaneExportChanged', ...
%         'Existing CSV values differ. Choose a new output directory.');
% else
%     write_numeric_csv(files.csv_file, lookupTable);
% end

end


function write_numeric_csv(filePath, lookupTable)
%WRITE_NUMERIC_CSV Use 17 digits to preserve double-precision lookup values.

fileId = fopen(filePath, 'w');
assert(fileId >= 0);

fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>

fprintf(fileId, '%s\n', strjoin(lookupTable.Properties.VariableNames, ','));

numberOfColumns = width(lookupTable);
rowFormat = [repmat('%.17g,', 1, numberOfColumns - 1), '%.17g\n'];

% Transpose so fprintf emits one original table row at a time.
fprintf(fileId, rowFormat, table2array(lookupTable).');

end
