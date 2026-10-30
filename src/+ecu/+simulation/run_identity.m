function identity = run_identity(plan)
%RUN_IDENTITY Stable name from resolved parameters, independent of time/paths.
settings.schema_version = 1;
settings.model = plan.options.Model;
settings.stop_time_s = plan.options.StopTime;
settings.iteration_cap = plan.options.IterationCap;
settings.logging_profile = plan.options.LoggingProfile;
settings.config = plan.config;
settings.instance = ecu.simulation.numeric_parameters(plan.instance);
settings.variables = ecu.simulation.numeric_parameters(plan.variables);
settings.bindings = table2struct(plan.bindings);
settings.channels = table2struct(plan.channels);
settings.plant_step_s = plan.plant_step_s;
settings.controller_period_s = plan.controller_period_s;
settings.replay_policy = plan.replay_policy;
settings = canonical(settings);
payload = jsonencode(settings,ConvertInfAndNaN=false);
digest = java.security.MessageDigest.getInstance('SHA-256');
digest.update(unicode2native(payload,'UTF-8'));
hash = lower(reshape(dec2hex(typecast(digest.digest(),'uint8'),2).',1,[]));
id = sprintf('F%d_I%04d_mu%s_cap%d_T%s', ...
    plan.instance.family_id,plan.instance.instance_id,number(plan.variables.mu), ...
    plan.options.IterationCap,number(plan.options.StopTime));
identity = struct('id',id,'sha256',hash,'settings',settings);
end

function value = canonical(value)
% Structure field insertion order must not change the identity.
if isstruct(value)
    value = orderfields(value);
    names = fieldnames(value);
    for index = 1:numel(value)
        for field = 1:numel(names)
            value(index).(names{field}) = canonical(value(index).(names{field}));
        end
    end
elseif iscell(value)
    value = cellfun(@canonical,value,UniformOutput=false);
end
end

function label = number(value)
label = strrep(strrep(strrep(sprintf('%.9g',value),'.','p'),'-','m'),'+','');
end
