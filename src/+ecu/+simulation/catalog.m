function catalog = catalog(root)
%CATALOG Rebuild run discovery from manifests; no large MAT loads.
% Discover both legacy flat folders and stage/run folders.
entries = dir(fullfile(root,'**','metadata','manifest.json'));
rows = struct('run_id',{},'family_id',{},'instance_id',{}, ...
    'iteration_cap',{},'status',{},'logging_profile',{},'validation_passed',{},'directory',{});
stage = strings(numel(entries),1);
for index = 1:numel(entries)
    manifest = jsondecode(fileread(fullfile(entries(index).folder,entries(index).name)));
    names = fieldnames(rows);
    for field = 1:numel(names)
        rows(index).(names{field}) = manifest.(names{field});
    end
    if isfield(manifest,'experiment_stage')
        stage(index) = string(manifest.experiment_stage);
    end
end
catalog = struct2table(rows);
catalog.experiment_stage = stage;
end
