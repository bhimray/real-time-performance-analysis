function files = save_run(run)
%SAVE_RUN Save immutable raw data and metadata for later offline plotting.
%
%   Layout:
%     data/<run-id>__run.mat
%     data/<run-id>__controller.csv
%     metadata/*.json
%
%   Plotting never runs here. Failed and terminated runs use the same layout.

directory = run.output_directory;

assert(~isfolder(directory), ...
    'ecu:RunAlreadyExists', ...
    'Run output directory already exists; refusing to overwrite.');

mkdir(directory);
mkdir(fullfile(directory, 'data'));
mkdir(fullfile(directory, 'metadata'));

files = run.files;

%% Preserve the full multirate dataset and source snapshot

save(files.run_mat, 'run', '-v7.3');

%% Export scalar control channels; retain histories and vectors in MAT

numberOfSamples = numel(run.log.t);
scalarTable = table();
fields = fieldnames(run.log);

for fieldIndex = 1:numel(fields)
    name = fields{fieldIndex};
    value = run.log.(name);

    if (isnumeric(value) || islogical(value)) ...
            && ~isempty(value) && size(value, 1) == 1 ...
            && size(value, 2) == numberOfSamples

        scalarTable.(name) = value(:);
    end
end

stateNames = {'e_m', 'psi_rad', 'v_mps', 'vy_mps', 'gamma_radps'};
inputNames = {'Fx_N', 'Fy_N', 'Mz_Nm'};

for stateIndex = 1:5
    scalarTable.(stateNames{stateIndex}) = run.log.x(stateIndex, :).';
    scalarTable.(['dx_', stateNames{stateIndex}]) = ...
        run.log.dx(stateIndex, :).';

    scalarTable.(['previous_prediction_', stateNames{stateIndex}]) = ...
        run.log.x_pred_prev(stateIndex, :).';

    scalarTable.(['lam0_', num2str(stateIndex)]) = ...
        run.log.lam0(stateIndex, :).';
end

for inputIndex = 1:3
    scalarTable.(['applied_', inputNames{inputIndex}]) = ...
        run.log.u_applied(inputIndex, :).';

    scalarTable.(['candidate_', inputNames{inputIndex}]) = ...
        run.log.u_candidate(inputIndex, :).';
end

for obstacleIndex = 1:2
    station = nan(numberOfSamples, 1);
    speed = nan(numberOfSamples, 1);

    for sample = 1:numberOfSamples
        station(sample) = run.log.obstacles{sample}.s(obstacleIndex);
        speed(sample) = run.log.obstacles{sample}.speed(obstacleIndex);
    end

    scalarTable.(sprintf('obstacle%d_station_m', obstacleIndex)) = station;
    scalarTable.(sprintf('obstacle%d_speed_mps', obstacleIndex)) = speed;
end

scalarTable.active_constraint_count = sum(run.log.active, 1).';
writetable(scalarTable, files.controller_csv);

%% Write readable configuration and channel descriptions

write_json(files.summary_json, run.summary);
write_json(files.fingerprint_json, run.fingerprint);
write_json(files.scenario_json, run.instance);
write_json(files.channels_json, run.channels);

resolved.config = run.config;
resolved.options = serialize_options(run.options);
write_json(files.config_json, resolved);

%% Bind this run ID to its exact data bytes

manifest.schema_version = run.schema_version;
manifest.run_id = run.id;
manifest.family_id = run.instance.family_id;
manifest.instance_id = run.instance.instance_id;
manifest.seed = run.instance.seed;
manifest.build_id = run.build_id;

manifest.data_mat = ['data/', run.id, '__run.mat'];
manifest.controller_csv = ['data/', run.id, '__controller.csv'];
manifest.mat_sha256 = ecu.logging.file_sha256(files.run_mat);
manifest.csv_sha256 = ecu.logging.file_sha256(files.controller_csv);
manifest.plot_policy = ...
    'Offline plot manifests reference this run ID, MAT checksum and fields';

write_json(files.manifest_json, manifest);

end


function value = serialize_options(value)
%SERIALIZE_OPTIONS Describe callbacks and Inf explicitly in JSON.

if isa(value, 'function_handle')
    value = func2str(value);

elseif isstruct(value)
    names = fieldnames(value);

    for fieldIndex = 1:numel(names)
        name = names{fieldIndex};
        value.(name) = serialize_options(value.(name));
    end

elseif isnumeric(value) && isscalar(value) && isinf(value)
    value = 'Inf';
end

end


function write_json(filePath, data)
%WRITE_JSON Close the metadata file even if encoding fails.

fileId = fopen(filePath, 'w');
assert(fileId >= 0);

fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>

fprintf(fileId, '%s\n', jsonencode(data, PrettyPrint=true));

end
