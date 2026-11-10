function bundle = bundle_controller(familyId, instanceId)
%BUNDLE_CONTROLLER Prepare the selected scenario, then explicitly build.
arguments
    familyId (1,1) double = 1
    instanceId (1,1) double = 1
end
prepared = ecu.control.prepare_controller(FamilyId=familyId,InstanceId=instanceId);
bundle = build_controller(prepared.config, prepared.initial);
end
