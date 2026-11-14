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
    options.ExperimentStage (1,1) string {mustBeMember(options.ExperimentStage,["w2", "w2_2run","w3"])} = "w2"
    options.BuildDirectory (1,1) string = ""
    options.ResultsRoot (1,1) string = ""
end

prepared = ecu.control.prepare_controller(Root=options.Root, ...
    FamilyId=options.FamilyId,InstanceId=options.InstanceId, ...
    IterationCap=options.IterationCap);
config = prepared.config;
referenceFile = prepared.scenario_file;
laneData = prepared.lane_data;
instance = prepared.instance;
context = ecu.model.create_plant_context(laneData,config);
plantContext.config.vehicle.m = config.vehicle.m;
plantContext.config.vehicle.Iz = config.vehicle.Iz;
plantContext.index = context.index;
plantContext.parameter_template = context.parameter_template;
plantContext.station_min_m = context.station_min_m;
plantContext.station_max_m = context.station_max_m;
% Remove descriptive cell strings from the code-generation parameter.
plantContext.index = rmfield(plantContext.index,'names');

initialState = prepared.initial_state;

plan.schema_version = 2;
plan.options = options;
plan.config = config;
plan.instance = instance;
plan.scenario_file = referenceFile;
plan.variables = prepared.variables;
plan.variables.plantContext = plantContext;
plan.variables.plantInitialState = initialState;
plan.variables.executionCap = prepared.execution.executionCap;
plan.variables.executionEnable = prepared.execution.executionEnable;
plan.variables.executionReset = prepared.execution.executionReset;
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
% ResultsRoot is the base folder; stage separates Week 2 and Week 3 runs.
plan.results_root = fullfile(plan.results_root,options.ExperimentStage);
plan.provenance_files = referenceFile;
plan.replay_policy = "Primal snapshots only; retained dual/slack/QP memory not certified.";
end


