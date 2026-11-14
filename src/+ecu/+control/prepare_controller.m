function prepared = prepare_controller(options)
%PREPARE_CONTROLLER Resolve controller parameters without loading any model.
% No compilation, simulation, base-workspace assignment or plant setup.
% ReferenceFile may select an externally prepared, compatible lane MAT file.
arguments
    options.Root (1,1) string = string(currentProject().RootFolder)
    options.FamilyId (1,1) double {mustBeMember(options.FamilyId,1:4)} = 1
    options.InstanceId (1,1) double {mustBeInteger,mustBePositive} = 1
    options.IterationCap (1,1) double {mustBeInteger,mustBePositive} = 200
    options.ReferenceFile (1,1) string = ""
    options.Config (1,1) struct = struct()
end
config = options.Config;
if isempty(fieldnames(config)), config = controller_config(); end
ecu.control.validate_config(config);
assert(options.IterationCap <= config.max_iter, ...
    'ecu:IterationCap', 'Cap exceeds generated configuration.');
referenceFile = options.ReferenceFile;
if strlength(referenceFile) == 0
    referenceFile = fullfile(options.Root,'scenarios','a6','fixed_test', ...
        sprintf('F%d_%04d_lanes.mat',options.FamilyId,options.InstanceId));
end
laneData = ecu.scenario.load_lane_data(referenceFile);
instance = laneData.instance;
assert(config.Ts == instance.timing.controller_period_s, ...
    'ecu:ControllerPeriod', 'Controller period mismatch.');
initialState = [instance.ego.initial_state; ...
    instance.ego.initial_longitudinal_speed_mps; instance.ego.initial_station_m];
parameters = ecu.scenario.prepare_horizon(instance,0,initialState(7), ...
    initialState(6),[],config,laneData);
warmStart = ecu.control.initial_guess(initialState(1:5),parameters,config);
prepared.schema_version = 1;
prepared.config = config;
prepared.instance = instance;
prepared.lane_data = laneData;
prepared.scenario_file = referenceFile;
prepared.initial_state = initialState;
prepared.initial = struct('x0',initialState(1:5), ...
    'P',parameters,'mu',instance.friction_coefficient);
prepared.variables = struct( ...
    'controllerConfig',ecu.simulation.numeric_parameters(config), ...
    'instance',ecu.simulation.numeric_parameters(instance), ...
    'mu',instance.friction_coefficient, ...
    'laneData',ecu.simulation.numeric_parameters(laneData), ...
    'initialXguess',warmStart.x,'initialUguess',warmStart.u);
prepared.execution = struct('executionCap',uint32(options.IterationCap), ...
    'executionEnable',true,'executionReset',false);
end
