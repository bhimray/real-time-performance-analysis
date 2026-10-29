function results = test_lane_geometry()
%TEST_LANE_GEOMETRY Verify physical offsets and coordinate transformations.
%
%   Covers all A6 families and all six allowed nonzero curvatures.
%   No Simulink model or controller solve is needed.

station = [0; 10; 50; 100];

maximumWidthError = 0;
maximumNormalError = 0;
maximumCircleError = 0;
maximumTransformError = 0;

%% Verify the road widths and normal offsets in every family

for familyId = 1:4
    instance = ecu.scenario.gen_instance(familyId, 1);
    unchangedInstance = instance;

    lanes = ecu.scenario.generate_lanes(instance, station);

    assert(isequaln(instance, unchangedInstance));
    assert(isequal(size(lanes.boundaries.X_m), [4, 3]));
    assert(isequal(size(lanes.centerlines.X_m), [4, 2]));
    assert(lanes.number_of_lanes == 2);

    assert(isequal(lanes.boundaries.offsets_m, [-1.875; 1.875; 5.625]));
    assert(isequal(lanes.centerlines.offsets_m, [0; 3.75]));
    assert(isequal(lanes.controller_bounds.offsets_m, instance.road.bounds_m));

    % Separation is measured at matching reference stations along the normal.
    boundarySeparation = hypot( ...
        diff(lanes.boundaries.X_m, 1, 2), ...
        diff(lanes.boundaries.Y_m, 1, 2));

    widthError = max(abs(boundarySeparation - 3.75), [], 'all');
    maximumWidthError = max(maximumWidthError, widthError);

    assert(widthError < 1e-12);

    for boundaryIndex = 1:3
        deltaX = lanes.boundaries.X_m(:, boundaryIndex) - lanes.reference.X_m;
        deltaY = lanes.boundaries.Y_m(:, boundaryIndex) - lanes.reference.Y_m;
        heading = lanes.reference.heading_rad;

        normalProjection = -sin(heading) .* deltaX + cos(heading) .* deltaY;
        tangentProjection = cos(heading) .* deltaX + sin(heading) .* deltaY;

        normalError = max(abs(normalProjection ...
            - lanes.boundaries.offsets_m(boundaryIndex)));

        maximumNormalError = max(maximumNormalError, normalError);

        assert(normalError < 1e-12);
        assert(max(abs(tangentProjection)) < 1e-12);
    end

    % The ego-lane centerline is exactly the reference path.
    assert(isequal(lanes.centerlines.X_m(:, 1), lanes.reference.X_m));
    assert(isequal(lanes.centerlines.Y_m(:, 1), lanes.reference.Y_m));

    if familyId ~= 2
        assert(isequal(lanes.reference.X_m, station));
        assert(all(lanes.reference.Y_m == 0));

        for boundaryIndex = 1:3
            assert(all(lanes.boundaries.X_m(:, boundaryIndex) == station));
            assert(all(lanes.boundaries.Y_m(:, boundaryIndex) == ...
                lanes.boundaries.offsets_m(boundaryIndex)));
        end
    end

    % F4 retains the physical adjacent lane even though controller bounds
    % restrict the ego to its own lane.
    if familyId == 4
        assert(lanes.boundaries.offsets_m(3) == 5.625);
        assert(lanes.controller_bounds.offsets_m(2) == 1.75);
    end
end

%% Independently verify the radius of each circular offset curve

config = scenario_config();
curvedInstance = ecu.scenario.gen_instance(2, 1);

for curvatureIndex = 1:numel(config.curvature_choices_per_m)
    curvature = config.curvature_choices_per_m(curvatureIndex);

    % This local test copy exercises every allowed curvature, not new fixtures.
    curvedInstance.road.curvature_per_m = curvature;

    lanes = ecu.scenario.generate_lanes(curvedInstance, station);
    circleCenterY = 1 / curvature;

    for boundaryIndex = 1:3
        actualRadius = hypot( ...
            lanes.boundaries.X_m(:, boundaryIndex), ...
            lanes.boundaries.Y_m(:, boundaryIndex) - circleCenterY);

        expectedRadius = abs( ...
            1 / curvature - lanes.boundaries.offsets_m(boundaryIndex));

        circleError = max(abs(actualRadius - expectedRadius));
        maximumCircleError = max(maximumCircleError, circleError);

        assert(circleError < 1e-10);
    end
end

%% Verify translation and rotation into a user-defined global frame

instance = ecu.scenario.gen_instance(2, 1);
base = ecu.scenario.generate_lanes(instance, station);

originPose = [120; -35; pi / 3];
moved = ecu.scenario.generate_lanes(instance, station, originPose);

expectedX = originPose(1) ...
    + cos(originPose(3)) * base.boundaries.X_m ...
    - sin(originPose(3)) * base.boundaries.Y_m;

expectedY = originPose(2) ...
    + sin(originPose(3)) * base.boundaries.X_m ...
    + cos(originPose(3)) * base.boundaries.Y_m;

maximumTransformError = max([ ...
    max(abs(moved.boundaries.X_m - expectedX), [], 'all'), ...
    max(abs(moved.boundaries.Y_m - expectedY), [], 'all') ...
]);

assert(maximumTransformError < 1e-12);

%% Check input shape handling and rejected repeated stations

rowInput = ecu.scenario.generate_lanes(instance, station.');
assert(isequal(rowInput.station_m, station));

singlePoint = ecu.scenario.generate_lanes(instance, 0);
assert(isequal(size(singlePoint.boundaries.X_m), [1, 3]));

caughtExpectedError = false;

try
    ecu.scenario.generate_lanes(instance, [0; 10; 10]);
catch errorInfo
    caughtExpectedError = strcmp(errorInfo.identifier, 'ecu:LaneStationOrder');
end

assert(caughtExpectedError);

%% Return a concise geometry-validation report

results = struct( ...
    'families_checked', 4, ...
    'nonzero_curvatures_checked', 6, ...
    'maximum_width_error_m', maximumWidthError, ...
    'maximum_normal_offset_error_m', maximumNormalError, ...
    'maximum_circle_radius_error_m', maximumCircleError, ...
    'maximum_origin_transform_error_m', maximumTransformError, ...
    'physical_and_controller_bounds_separate', true, ...
    'scope', 'MATLAB lane geometry only; no simulator road/model created.' ...
);

disp(results);

end
