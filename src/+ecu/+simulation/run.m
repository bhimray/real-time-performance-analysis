function result = run(plan)
%RUN Execute one resolved plan; identical settings replace previous outputs.
% Raw output is saved before extraction. Plotting never runs here.
arguments
    plan (1,1) struct
end
identity = ecu.simulation.run_identity(plan);
id = identity.id;
[directory, lockCleanup] = ecu.simulation.prepare_run_directory( ...
    plan.results_root,identity); %#ok<NASGU>
stamp = char(datetime('now',TimeZone='UTC',Format="yyyyMMdd'T'HHmmssSSS'Z'"));

manifest.schema_version = 2;
manifest.run_id = id;
manifest.settings_sha256 = identity.sha256;
manifest.backend = 'simulink';
manifest.created_utc = stamp;
manifest.family_id = plan.instance.family_id;
manifest.instance_id = plan.instance.instance_id;
manifest.iteration_cap = plan.options.IterationCap;
manifest.logging_profile = plan.options.LoggingProfile;
manifest.status = 'preparing';
manifest.validation_passed = false;
manifest.directory = directory;
manifest.build_directory = plan.options.BuildDirectory;
manifest.replay_policy = plan.replay_policy;
manifest.matlab = version;
manifest.computer = computer;
manifest.error_report = '';
manifestFile = fullfile(directory,'metadata','manifest.json');
ecu.simulation.write_json(manifestFile,manifest);
save(fullfile(directory,'metadata','request.mat'),'plan','-v7.3');
ecu.simulation.write_json(fullfile(directory,'metadata','requested_spec.json'),plan.options);
ecu.simulation.write_json(fullfile(directory,'metadata','resolved_config.json'),plan.config);

try
    manifest.provenance = ecu.simulation.provenance(plan);
    % Preserve exact source/model/build files, not only hashes.
    snapshot = fullfile(directory,'metadata','snapshot');
    mkdir(snapshot);
    for index = 1:numel(manifest.provenance)
        source = manifest.provenance(index).path;
        [~,~,extension] = fileparts(source);
        relative = sprintf('%05d%s',index,extension);
        copyfile(source,fullfile(snapshot,relative));
        manifest.provenance(index).snapshot = string(fullfile('snapshot',relative));
    end
    ecu.simulation.write_json(manifestFile,manifest);
    load_system(plan.options.Model);
    models = find_mdlrefs(plan.options.Model);
    for modelIndex = 1:numel(models)
        load_system(models{modelIndex});
        assert(strcmp(get_param(models{modelIndex},'Dirty'),'off'), ...
            'Save model %s before running a traceable experiment.',models{modelIndex});
    end
    input = ecu.simulation.make_input(plan);
    %-------
    %% simulation run
    %-------
    output = sim(input);
    save(fullfile(directory,'data','raw.mat'),'output','-v7.3');
    
    manifest.raw_sha256 = ecu.simulation.file_hash( ...
        fullfile(directory,'data','raw.mat'));
    if strlength(string(output.ErrorMessage)) > 0
        error('ecu:SimulationFailed','%s',output.ErrorMessage);
    end

    run.schema_version = 2;
    run.id = id;
    run.backend = 'simulink';
    run.config = plan.config;
    run.instance = plan.instance;
    run.channels = plan.channels;
    [run.signals,availability] = ecu.simulation.extract_logs( ...
        output.logsout,plan.channels,plan.options.StopTime);
    run.validation = ecu.simulation.validate_run(run,plan,availability);
    run.requested_options = plan.options;
    if any(string({run.signals.id}) == "vehicle.state")
        state = ecu.analysis.get_signal(run,"vehicle.state");
        run.plant.time_s = state.time_s;
        run.plant.state = state.values;
    end
    % Retain MATLAB-compatible fields without inventing unavailable diagnostics.
    run.log = struct();
    for index = 1:height(plan.channels)
        field = string(plan.channels.legacy{index});
        if startsWith(field,"log.") && plan.channels.component(index) == 0
            match = find(string({run.signals.id}) == string(plan.channels.id{index}),1);
            if ~isempty(match)
                run.log.(extractAfter(field,"log.")) = run.signals(match).values;
                run.log.t = run.signals(match).time_s;
            end
        end
    end
    for kind = ["candidate","applied"]
        command = cell(1,3);
        leaves = ["Fx","Fy","Mz"];
        ids = "command." + kind + "." + leaves;
        if ~all(ismember(ids,string({run.signals.id})))
            continue;
        end
        for component = 1:3
            command{component} = ecu.analysis.get_signal(run, ...
                "command." + kind + "." + leaves(component));
        end
        assert(isequal(command{1}.time_s,command{2}.time_s,command{3}.time_s), ...
            'Command clocks differ.');
        run.log.("u_" + kind) = vertcat(command{1}.values, ...
            command{2}.values,command{3}.values);
    end
    runFile = fullfile(directory,'data','run.mat');
    save(runFile,'run','-v7.3');
    manifest.mat_sha256 = ecu.simulation.file_hash(runFile);
    ecu.simulation.write_json(fullfile(directory,'metadata','channels.json'), ...
        table2struct(plan.channels));
    ecu.simulation.write_json(fullfile(directory,'metadata','validation.json'),run.validation);
    manifest.validation_passed = run.validation.passed;
    manifest.status = 'completed';
    if ~run.validation.passed
        manifest.status = 'logging_invalid';
    end
    ecu.simulation.export_csv(run,fullfile(directory,'data','controller.csv'));
    manifest.csv_sha256 = ecu.simulation.file_hash(fullfile(directory,'data','controller.csv'));
    manifest.grouped_exports = ecu.simulation.export_groups(run, ...
        fullfile(directory,'data','groups'));
catch exception
    manifest.status = 'failed';
    manifest.error_report = getReport(exception,'extended','hyperlinks','off');
end
ecu.simulation.write_json(manifestFile,manifest);
result = struct('id',string(id),'directory',string(directory), ...
    'status',string(manifest.status),'validation',manifest.validation_passed);
if ~isempty(manifest.error_report)
    warning('ecu:RunFailed','Run retained at %s\n%s',directory,manifest.error_report);
end
end
