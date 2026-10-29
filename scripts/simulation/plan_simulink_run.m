function plan = plan_simulink_run(options)
%PLAN_SIMULINK_RUN Inspect this plan before using ecu.simulation.run(plan).
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
end
