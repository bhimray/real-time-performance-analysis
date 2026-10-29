function results = test_scenarios()
%TEST_SCENARIOS Validate A6 generation, motion and controller parameterization.
%
%   Every one of the 1200 specified instances is checked without simulating
%   a controller or creating any Simulink model.

config = scenario_config();
controllerConfig = controller_config();

originalRandomState = rng;
randomCleanup = onCleanup(@() rng(originalRandomState)); %#ok<NASGU>

curvatureCounts = zeros(6, 1);
numberChecked = 0;

%% Check all family bounds, fixed values and seed identities

for familyId = 1:4
    family = config.families(familyId);

    for instanceId = 1:config.instances_per_family
        beforeGeneration = rng;
        instance = ecu.scenario.gen_instance(familyId, instanceId);

        assert(isequal(beforeGeneration, rng), ...
            'Scenario generation changed the caller RNG state.');

        assert(instance.seed == 1000 * familyId + instanceId);
        assert(instance.friction_coefficient == family.friction_coefficient);
        assert(isequal(instance.road.bounds_m, family.road_bounds_m));
        assert(instance.reference.speed_mps == instance.draws.vx0_mps);
        assert(isequal(instance.ego.initial_state(3:5), zeros(3, 1)));

        assert_in_range(instance.draws.e0_m, [-0.3, 0.3]);
        assert_in_range(instance.draws.psi0_rad, deg2rad([-2, 2]));
        assert_in_range(instance.draws.vx0_mps, [20, 30]);
        assert_in_range(instance.draws.d0_m, [25, 45]);
        assert_in_range(instance.draws.alead_mps2, [-6, -3]);
        assert_in_range(instance.draws.vt_mps, ...
            instance.draws.vx0_mps + [-10, -3]);
        assert_in_range(instance.draws.dt_m, family.target_gap_range_m);

        assert(instance.obstacles(1).initial_speed_mps == instance.draws.vx0_mps);
        assert(instance.obstacles(1).braking_start_s == 1);
        assert(instance.obstacles(2).lateral_position_m == 3.75);
        assert(instance.timing.duration_s == 8);
        assert(instance.timing.number_of_control_samples == 160);

        if familyId == 2
            choice = instance.draws.curvature_choice_index;
            assert(instance.road.curvature_per_m == ...
                config.curvature_choices_per_m(choice));

            curvatureCounts(choice) = curvatureCounts(choice) + 1;
        else
            assert(instance.road.curvature_per_m == 0);
            assert(isempty(instance.draws.curvature_choice_index));
        end

        numberChecked = numberChecked + 1;
    end
end

%% Independently check random draw order and exact repeatability

for familyId = 1:4
    first = ecu.scenario.gen_instance(familyId, 1);
    second = ecu.scenario.gen_instance(familyId, 1);

    assert(isequaln(first, second));

    rng(first.seed, 'twister');
    expectedUniforms = rand(1, 7);

    assert(isequal(first.draws.uniform_draws, expectedUniforms));
    assert(first.draws.e0_m == -0.3 + 0.6 * expectedUniforms(1));
    assert(first.draws.psi0_rad == deg2rad(-2 + 4 * expectedUniforms(2)));
    assert(first.draws.vx0_mps == 20 + 10 * expectedUniforms(3));
    assert(first.draws.d0_m == 25 + 20 * expectedUniforms(4));
    assert(first.draws.alead_mps2 == -6 + 3 * expectedUniforms(5));
    expectedTargetSpeed = first.draws.vx0_mps - 10 + 7 * expectedUniforms(6);
    assert(abs(first.draws.vt_mps - expectedTargetSpeed) < 1e-12);

    if familyId == 2
        assert(first.draws.curvature_choice_index == randi(6));
    end
end

%% Check analytic lead braking and no movement after stopping

instance = ecu.scenario.gen_instance(1, 1);
lead = instance.obstacles(1);

stopTime = 1 + lead.initial_speed_mps / (-lead.acceleration_mps2);
times = [0, 0.5, 1, 2, stopTime, stopTime + 100];

motion = ecu.scenario.obstacle_states(instance, times);

assert(abs(motion.s(1, 2) - ...
    (lead.initial_station_m + 0.5 * lead.initial_speed_mps)) < 1e-12);

assert(motion.acceleration(1, 2) == 0);
assert(motion.acceleration(1, 3) == lead.acceleration_mps2);
assert(all(motion.speed(1, :) >= 0));
assert(abs(motion.speed(1, end)) < 1e-12);
assert(abs(motion.s(1, end) - motion.s(1, end - 1)) < 1e-12);

expectedStopStation = lead.initial_station_m + lead.initial_speed_mps ...
    + lead.initial_speed_mps^2 / (-2 * lead.acceleration_mps2);

assert(abs(motion.s(1, end) - expectedStopStation) < 1e-10);

target = instance.obstacles(2);

assert(max(abs(motion.s(2, :) - ...
    (target.initial_station_m + target.initial_speed_mps * times))) < 1e-12);

%% Check path signals and controller parameter dimensions for all families

for familyId = 1:4
    instance = ecu.scenario.gen_instance(familyId, 1);
    station = [0, 10, 20];

    path = ecu.scenario.path_signals( ...
        instance, station, controllerConfig.vehicle);

    assert(isequal(path.heading_rad, instance.road.curvature_per_m * station));
    assert(all(path.dpsi_pvr == 0));
    assert(all(path.ddpsi_pr == 0));
    assert(all(path.dvr == 0));

    parameters = ecu.scenario.prepare_horizon( ...
        instance, 0, 0, instance.reference.speed_mps, [], controllerConfig);

    assert(isequal(size(parameters), [19, 41]));
    assert(all(parameters(1, :) == instance.reference.speed_mps));
    assert(all(parameters(8, :) == instance.reference.speed_mps));
    assert(all(parameters(18, :) == instance.road.bounds_m(1)));
    assert(all(parameters(19, :) == instance.road.bounds_m(2)));

    expectedStation = (0:40) * 0.05 * instance.reference.speed_mps;
    assert(max(abs(parameters(2, :) - expectedStation)) < 1e-10);

    ecu.control.constraint_bounds( ...
        parameters(:, 1), instance.friction_coefficient, controllerConfig);
end

%% Verify A4 prediction uses current motion, not future braking knowledge

instance = ecu.scenario.gen_instance(1, 1);
referenceSpeed = instance.reference.speed_mps;

parameters = ecu.scenario.prepare_horizon( ...
    instance, 0.5, 0, referenceSpeed, [], controllerConfig);

current = ecu.scenario.obstacle_states(instance, 0.5);
expectedCruisePrediction = current.s(1) + current.speed(1) * 2;

assert(abs(parameters(10, end) - expectedCruisePrediction) < 1e-10);

parameters = ecu.scenario.prepare_horizon( ...
    instance, stopTime + 1, 0, referenceSpeed, [], controllerConfig);

assert(max(abs(diff(parameters(10, :)))) < 1e-12);

%% Check that previous speed errors influence the ego station prediction

previousSpeedErrors = -ones(1, 40);

parameters = ecu.scenario.prepare_horizon( ...
    instance, 0, 5, referenceSpeed, previousSpeedErrors, controllerConfig);

expectedStation = 5 + (0:40) * 0.05 * (referenceSpeed - 1);

assert(max(abs(parameters(2, :) - expectedStation)) < 1e-10);

%% Verify collision, run-off and duration termination separately

current = ecu.scenario.obstacle_states(instance, 2);

collision = ecu.scenario.check_termination(instance, 2, current.s(1), 0);
assert(collision.collision && strcmp(collision.reason, 'collision'));

% The larger safety margin must not be mistaken for physical collision.
safe = ecu.scenario.check_termination(instance, 0, ...
    instance.obstacles(1).initial_station_m, 1.0);

assert(~safe.collision);

boundary = ecu.scenario.check_termination(instance, 0, -1000, 6);
outside = ecu.scenario.check_termination(instance, 0, -1000, 6.01);
completed = ecu.scenario.check_termination(instance, 8, -1000, 0);

assert(~boundary.run_off);
assert(outside.run_off && strcmp(outside.reason, 'run_off'));
assert(completed.duration_reached && strcmp(completed.reason, 'completed'));

%% Summarize the verified scope

results = struct( ...
    'instances_checked', numberChecked, ...
    'repeatability_passed', true, ...
    'caller_rng_preserved', true, ...
    'draw_order_passed', true, ...
    'braking_stop_position_passed', true, ...
    'horizon_preparation_passed', true, ...
    'termination_rules_passed', true, ...
    'curvature_counts_F2', curvatureCounts, ...
    'scope', 'Scenario/helper validation only; no closed-loop simulation.' ...
);

disp(results);

end


function assert_in_range(value, bounds)
%ASSERT_IN_RANGE Check the exact interval used by the scenario specification.

assert(value >= bounds(1) && value <= bounds(2));

end
