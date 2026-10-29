function lanes = generate_lanes(instance, station, originPose)
%GENERATE_LANES Build the two-lane road geometry for an A6 scenario.
%
%   LANES = ECU.SCENARIO.GENERATE_LANES(INSTANCE, STATION) returns the
%   physical boundaries and centerlines at the requested path stations.
%
%   LANES = ... (INSTANCE, STATION, ORIGINPOSE) places the road in another
%   global frame. ORIGINPOSE is [X0; Y0; heading0], in meters and radians.
%   Its default is [0; 0; 0], matching PATH_SIGNALS.
%
%   Outputs:
%     station_m              : Requested stations, N-by-1.
%     reference              : Ego-lane reference X, Y and heading.
%     boundaries.X_m, Y_m    : Physical boundaries, N-by-3.
%     centerlines.X_m, Y_m   : Lane centerlines, N-by-2.
%     controller_bounds     : A6 admissible offsets, separate from lane edges.
%
%   Boundary order: right road edge, lane divider, left road edge.
%   Centerline order: ego lane, adjacent left lane.
%   Positive offsets point to the left of the reference path.
%
%   This function generates MATLAB geometry only.

%% Validate station samples and the optional global origin

validateattributes(station, {'double'}, ...
    {'vector', 'nonempty', 'real', 'finite'});

station = station(:);

assert(all(diff(station) > 0), ...
    'ecu:LaneStationOrder', ...
    'Lane stations must be strictly increasing.');

if nargin < 3
    originPose = [0; 0; 0];
end

validateattributes(originPose, {'double'}, ...
    {'vector', 'numel', 3, 'real', 'finite'});

originPose = originPose(:);

laneWidth = instance.road.lane_width_m;

validateattributes(laneWidth, {'double'}, ...
    {'scalar', 'positive', 'real', 'finite'});

%% Reuse the existing reference-path geometry

% PATH_SIGNALS is the single source for the A6 straight/circular centerline.
% Vehicle parameters affect its sideslip correction, not these X/Y values.
path = ecu.scenario.path_signals(instance, station, vehicle_parameters());

localX = path.X_m(:);
localY = path.Y_m(:);
localHeading = path.heading_rad(:);

%% Rotate and translate into the requested global coordinate frame

originX = originPose(1);
originY = originPose(2);
originHeading = originPose(3);

referenceX = originX ...
    + cos(originHeading) * localX - sin(originHeading) * localY;

referenceY = originY ...
    + sin(originHeading) * localX + cos(originHeading) * localY;

referenceHeading = originHeading + localHeading;

%% Define the physical road boundaries and lane centerlines

% The reference path is the center of the ego lane, not the road center.
boundaryOffsets = [
    -laneWidth / 2
     laneWidth / 2
     3 * laneWidth / 2
];

centerlineOffsets = [
    0
    laneWidth
];

[boundaryX, boundaryY] = offset_curves( ...
    referenceX, referenceY, referenceHeading, boundaryOffsets);

[centerlineX, centerlineY] = offset_curves( ...
    referenceX, referenceY, referenceHeading, centerlineOffsets);

%% Preserve controller limits as a separate pair of curves

% F1-F3 allow offsets [-1.75; 5.25]; F4 allows [-1.75; 1.75].
% These are controller limits, not the physical lane-marking positions.
controllerOffsets = instance.road.bounds_m(:);

[controllerX, controllerY] = offset_curves( ...
    referenceX, referenceY, referenceHeading, controllerOffsets);

%% Return named geometry and its coordinate conventions

lanes.schema_version = 1;
lanes.family_id = instance.family_id;
lanes.instance_id = instance.instance_id;

lanes.station_m = station;
lanes.lane_width_m = laneWidth;
lanes.number_of_lanes = 2;
lanes.curvature_per_m = instance.road.curvature_per_m;
lanes.origin_pose = originPose;

lanes.reference.X_m = referenceX;
lanes.reference.Y_m = referenceY;
lanes.reference.heading_rad = referenceHeading;

lanes.boundaries.names = {
    'Right road edge', 'Lane divider', 'Left road edge'
};

lanes.boundaries.offsets_m = boundaryOffsets;
lanes.boundaries.X_m = boundaryX;
lanes.boundaries.Y_m = boundaryY;

lanes.centerlines.names = {
    'Ego lane center', 'Adjacent left lane center'
};

lanes.centerlines.offsets_m = centerlineOffsets;
lanes.centerlines.X_m = centerlineX;
lanes.centerlines.Y_m = centerlineY;

lanes.controller_bounds.names = {
    'Lower controller bound', 'Upper controller bound'
};

lanes.controller_bounds.offsets_m = controllerOffsets;
lanes.controller_bounds.X_m = controllerX;
lanes.controller_bounds.Y_m = controllerY;

end


function [offsetX, offsetY] = offset_curves( ...
    referenceX, referenceY, referenceHeading, lateralOffsets)
%OFFSET_CURVES Move each reference point along its left-pointing unit normal.
%
%   X_d = X_reference - d * sin(reference_heading)
%   Y_d = Y_reference + d * cos(reference_heading)

numberOfPoints = numel(referenceX);
numberOfCurves = numel(lateralOffsets);

offsetX = zeros(numberOfPoints, numberOfCurves);
offsetY = zeros(numberOfPoints, numberOfCurves);

for curveIndex = 1:numberOfCurves
    lateralOffset = lateralOffsets(curveIndex);

    offsetX(:, curveIndex) = referenceX ...
        - lateralOffset * sin(referenceHeading);

    offsetY(:, curveIndex) = referenceY ...
        + lateralOffset * cos(referenceHeading);
end

end
