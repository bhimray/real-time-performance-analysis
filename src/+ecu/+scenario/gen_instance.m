function instance = gen_instance(familyId, instanceId)
%GEN_INSTANCE Generate one reproducible scenario from Sheet A6.
%
%   INSTANCE = ECU.SCENARIO.GEN_INSTANCE(F, I) uses
%   rng(1000 * F + I, 'twister') and the exact A6 draw order.
%
%   F is 1:4 and I is 1:300. All units are SI, including radians.
%   The caller's random-number-generator state is restored on return.

%% Validate identifiers and select the family

validateattributes(familyId, {'double'}, ...
    {'scalar', 'integer', '>=', 1, '<=', 4});

config = scenario_config();

validateattributes(instanceId, {'double'}, ...
    {'scalar', 'integer', '>=', 1, '<=', config.instances_per_family});

family = config.families(familyId);
seed = 1000 * familyId + instanceId;

%% Set the prescribed seed without changing the caller's RNG sequence

previousRandomState = rng;
randomCleanup = onCleanup(@() rng(previousRandomState)); %#ok<NASGU>

rng(seed, 'twister');

%% Draw e0, psi0, vx0, d0, alead, vt and dt, in that order

uniformDraws = zeros(1, 7);

uniformDraws(1) = rand;
initialLateralError = interpolate_range( ...
    config.lateral_error_range_m, uniformDraws(1));

uniformDraws(2) = rand;
initialHeadingDegrees = interpolate_range( ...
    config.heading_error_range_deg, uniformDraws(2));

initialHeadingError = deg2rad(initialHeadingDegrees);

uniformDraws(3) = rand;
initialSpeed = interpolate_range( ...
    config.initial_speed_range_mps, uniformDraws(3));

uniformDraws(4) = rand;
leadGap = interpolate_range(config.lead_gap_range_m, uniformDraws(4));

uniformDraws(5) = rand;
leadDeceleration = interpolate_range( ...
    config.lead_deceleration_range_mps2, uniformDraws(5));

uniformDraws(6) = rand;
targetSpeed = initialSpeed + interpolate_range( ...
    config.target_speed_offsets_mps, uniformDraws(6));

uniformDraws(7) = rand;
targetGap = interpolate_range(family.target_gap_range_m, uniformDraws(7));

%% Draw curvature last, and only when curvature is random (F2)

curvatureChoice = [];
curvature = 0;

if familyId == 2
    curvatureChoice = randi(numel(config.curvature_choices_per_m));
    curvature = config.curvature_choices_per_m(curvatureChoice);
end

%% Record the complete scenario and every randomized quantity

instance.schema_version = config.schema_version;
instance.family_id = familyId;
instance.family_name = family.name;
instance.instance_id = instanceId;
instance.seed = seed;
instance.rng_algorithm = 'twister';

instance.draws.order = {'e0', 'psi0', 'vx0', 'd0', 'alead', 'vt', 'dt', 'kc'};
instance.draws.uniform_draws = uniformDraws;
instance.draws.e0_m = initialLateralError;
instance.draws.psi0_rad = initialHeadingError;
instance.draws.vx0_mps = initialSpeed;
instance.draws.d0_m = leadGap;
instance.draws.alead_mps2 = leadDeceleration;
instance.draws.vt_mps = targetSpeed;
instance.draws.dt_m = targetGap;
instance.draws.kc_per_m = curvature;
instance.draws.curvature_choice_index = curvatureChoice;

%% Road, reference motion and timing

instance.road.lane_width_m = config.lane_width_m;
instance.road.curvature_per_m = curvature;
instance.road.bounds_m = family.road_bounds_m;
instance.road.reference_line = 'Center line of the ego lane';

instance.friction_coefficient = family.friction_coefficient;
instance.reference.speed_mps = initialSpeed;

instance.timing.duration_s = config.duration_s;
instance.timing.controller_period_s = config.controller_period_s;
instance.timing.plant_step_s = config.plant_step_s;
instance.timing.number_of_control_samples = config.number_of_control_samples;

%% Ego initial condition: [e; psi; v; vy; gamma]

instance.ego.initial_state = [
    initialLateralError
    initialHeadingError
    0
    0
    0
];

instance.ego.initial_longitudinal_speed_mps = initialSpeed;
instance.ego.initial_station_m = 0;

%% Lead vehicle and target-lane vehicle

instance.obstacles(1) = struct( ...
    'name', 'Lead vehicle', ...
    'initial_station_m', leadGap, ...
    'lateral_position_m', 0, ...
    'initial_speed_mps', initialSpeed, ...
    'acceleration_mps2', leadDeceleration, ...
    'braking_start_s', config.lead_braking_start_s ...
);

instance.obstacles(2) = struct( ...
    'name', 'Target-lane vehicle', ...
    'initial_station_m', targetGap, ...
    'lateral_position_m', config.lane_width_m, ...
    'initial_speed_mps', targetSpeed, ...
    'acceleration_mps2', 0, ...
    'braking_start_s', 0 ...
);

instance = ecu.scenario.normalize_obstacle_names(instance);

instance.obstacle_geometry.safety_semi_axes_m = config.safety_semi_axes_m;
instance.obstacle_geometry.collision_semi_axes_m = config.collision_semi_axes_m;
instance.termination.run_off_limit_m = config.run_off_limit_m;

end


function value = interpolate_range(bounds, uniformDraw)
%INTERPOLATE_RANGE Map one U[0,1] draw to the specified interval.

value = bounds(1) + (bounds(2) - bounds(1)) * uniformDraw;

end

