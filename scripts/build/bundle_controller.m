function bundle = bundle_controller(familyId, instanceId)
projectRoot = char(currentProject().RootFolder);

fileName = sprintf('F%d_%04d_lanes.mat', familyId, instanceId);
referenceFile = fullfile( ...
    projectRoot, 'scenarios', 'a6', 'lanes_0p01m', fileName);

laneData = ecu.scenario.load_lane_data(referenceFile);

%% Build only when the caller has not supplied a live solver bundle
config = controller_config();
instance = laneData.instance;

initial.x0 = instance.ego.initial_state;
initial.mu = instance.friction_coefficient;

initial.P = ecu.scenario.prepare_horizon( ...
    instance, 0, instance.ego.initial_station_m, ...
    instance.ego.initial_longitudinal_speed_mps, [], config, laneData);

bundle = build_controller(config, initial);
