function result = run_simulink_closed_loop(options)
%RUN_SIMULINK_CLOSED_LOOP Prepare, run and archive one vehicle experiment.
% Use plan_simulink_run and ecu.simulation.run separately for custom bindings.
arguments
    options.FamilyId (1,1) double = 1
    options.InstanceId (1,1) double = 1
    options.IterationCap (1,1) double = 200
    options.StopTime (1,1) double = 8
    options.LoggingProfile (1,1) string = "research"
    options.BuildDirectory (1,1) string = ""
end
plan = ecu.simulation.prepare_vehicle( ...
    FamilyId=options.FamilyId,InstanceId=options.InstanceId, ...
    IterationCap=options.IterationCap,StopTime=options.StopTime, ...
    LoggingProfile=options.LoggingProfile,BuildDirectory=options.BuildDirectory);
result = ecu.simulation.run(plan);
end
