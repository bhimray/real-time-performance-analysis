familyId = 2;
instanceId = 1;
instance = ecu.scenario.gen_instance(familyId, instanceId);

% Fixed test values. Units are m, m/s, m/s^2, degrees, and 1/m.
curvature = 1/600;
egoSpeed = 30;
egoLateralError = 0;
egoHeadingError = deg2rad(0);
leadGap = 45;
leadDeceleration = -5;
targetGap = 25;
targetSpeed = 17;

% Road and ego reference.
instance.road.curvature_per_m = curvature;
instance.reference.speed_mps = egoSpeed;
instance.ego.initial_longitudinal_speed_mps = egoSpeed;
instance.ego.initial_state = [egoLateralError; egoHeadingError; 0; 0; 0];

% Traffic settings for the saved scenario.
instance.obstacles(1).initial_station_m = ...
    instance.ego.initial_station_m + leadGap;
instance.obstacles(1).initial_speed_mps = egoSpeed;
instance.obstacles(1).acceleration_mps2 = leadDeceleration;

instance.obstacles(2).initial_station_m = ...
    instance.ego.initial_station_m + targetGap;
instance.obstacles(2).initial_speed_mps = targetSpeed;

% Keep the recorded inputs consistent with the fixed test case.
instance.draws.e0_m = egoLateralError;
instance.draws.psi0_rad = egoHeadingError;
instance.draws.vx0_mps = egoSpeed;
instance.draws.d0_m = leadGap;
instance.draws.alead_mps2 = leadDeceleration;
instance.draws.vt_mps = targetSpeed;
instance.draws.dt_m = targetGap;
instance.draws.kc_per_m = curvature;
instance.draws.uniform_draws = [];
instance.draws.curvature_choice_index = [];

% Write the lane reference used by buildHorizon.
projectRoot = char(currentProject().RootFolder);
outputDir = fullfile(projectRoot, 'scenarios', 'a6', 'fixed_test');
station = (0:0.01:500).';
files = ecu.scenario.save_lane_data(instance, station, outputDir);
disp(files)