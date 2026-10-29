function plan = prepare_vehicle(options)
%PREPARE_VEHICLE Resolve one A6 experiment without modifying a model.
arguments
    options.Root (1,1) string = string(currentProject().RootFolder)
    options.Model (1,1) string = "vehicle_cl"
    options.FamilyId (1,1) double {mustBeMember(options.FamilyId,1:4)} = 1
    options.InstanceId (1,1) double {mustBeInteger,mustBePositive} = 1
    options.IterationCap (1,1) double {mustBeInteger,mustBePositive} = 200
    options.StopTime (1,1) double {mustBePositive} = 8
    options.LoggingProfile (1,1) string {mustBeMember(options.LoggingProfile,["debug","research","timing"])} = "research"
    options.BuildDirectory (1,1) string = ""
    options.ResultsRoot (1,1) string = ""
end

config = controller_config();
assert(options.IterationCap <= config.max_iter,'Cap exceeds generated configuration.');
referenceFile = fullfile(options.Root,'scenarios','a6','lanes_0p01m', ...
    sprintf('F%d_%04d_lanes.mat',options.FamilyId,options.InstanceId));
laneData = ecu.scenario.load_lane_data(referenceFile);
instance = laneData.instance;
assert(config.Ts == instance.timing.controller_period_s,'Controller period mismatch.');
context = ecu.model.create_plant_context(laneData,config);
plantContext.config.vehicle.m = config.vehicle.m;
plantContext.config.vehicle.Iz = config.vehicle.Iz;
plantContext.index = context.index;
plantContext.parameter_template = context.parameter_template;
plantContext.station_min_m = context.station_min_m;
plantContext.station_max_m = context.station_max_m;
% Remove descriptive cell strings from the code-generation parameter.
plantContext.index = rmfield(plantContext.index,'names');

initialState = [instance.ego.initial_state; ...
    instance.ego.initial_longitudinal_speed_mps; instance.ego.initial_station_m];
parameters = ecu.scenario.prepare_horizon(instance,0,initialState(7), ...
    initialState(6),[],config,laneData);
warmStart = ecu.control.initial_guess(initialState(1:5),parameters,config);

plan.schema_version = 2;
plan.options = options;
plan.config = config;
plan.instance = instance;
plan.scenario_file = referenceFile;
plan.variables = struct('controllerConfig',config,'instance',instance, ...
    'mu',instance.friction_coefficient, ...
    'laneData',laneData,'plantContext',plantContext, ...
    'plantInitialState',initialState,'initialXguess',warmStart.x, ...
    'initialUguess',warmStart.u,'executionCap',uint32(options.IterationCap), ...
    'executionEnable',true,'executionReset',false);
plan.bindings = table( ...
    ["controllerConfig";"instance";"mu";"laneData";"initialXguess";"initialUguess"; ...
     "plantContext";"plantInitialState";"executionCap";"executionEnable";"executionReset"], ...
    ["nmpc_controller";"nmpc_controller";"nmpc_controller";"nmpc_controller";"nmpc_controller"; ...
     "nmpc_controller";"kinodynamic_plant";"kinodynamic_plant"; ...
     options.Model;options.Model;options.Model], ...
    VariableNames={'name','workspace'});
plan.channels = ecu.simulation.signal_contract(config);
plan.plant_step_s = instance.timing.plant_step_s;
plan.controller_period_s = config.Ts;
plan.results_root = options.ResultsRoot;
if strlength(plan.results_root) == 0
    plan.results_root = fullfile(options.Root,'results','simulink');
end
plan.provenance_files = referenceFile;
plan.replay_policy = "Primal snapshots only; retained dual/slack/QP memory not certified.";
end
