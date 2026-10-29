function catalog = generate_a6_scenarios(instanceIds, outputDirectory)
%GENERATE_A6_SCENARIOS Save reproducible A6 instances as MAT and readable JSON.
%
%   GENERATE_A6_SCENARIOS() creates instance 1 of F1-F4, as Week 2 requests.
%   GENERATE_A6_SCENARIOS(1:3) creates three instances per family.
%
%   Existing matching instances are preserved. Changed instance files are
%   rejected so previously generated evidence is not silently overwritten.

%% Select the requested instances and output location

config = scenario_config();

if nargin < 1
    instanceIds = 1;
end

validateattributes(instanceIds, {'double'}, ...
    {'vector', 'nonempty', 'integer', '>=', 1, ...
    '<=', config.instances_per_family});

assert(numel(unique(instanceIds)) == numel(instanceIds), ...
    'Specify each instance ID only once.');

if nargin < 2
    projectRoot = char(currentProject().RootFolder);
    outputDirectory = fullfile(projectRoot, 'scenarios', 'a6', 'instances');
end

if ~isfolder(outputDirectory)
    mkdir(outputDirectory);
end

%% Generate the requested files

for familyId = 1:4
    for instanceId = instanceIds(:).'
        instance = ecu.scenario.gen_instance(familyId, instanceId);

        baseName = sprintf('F%d_%04d', familyId, instanceId);
        matFile = fullfile(outputDirectory, [baseName, '.mat']);
        jsonFile = fullfile(outputDirectory, [baseName, '.json']);

        if isfile(matFile)
            existing = load(matFile, 'instance');

            assert(isequaln(existing.instance, instance), ...
                'ecu:ScenarioChanged', ...
                'Existing scenario differs from A6 generation: %s', matFile);
        else
            save(matFile, 'instance');
        end

        jsonText = jsonencode(instance, PrettyPrint=true);

        if isfile(jsonFile)
            assert(strcmp(strtrim(fileread(jsonFile)), strtrim(jsonText)), ...
                'ecu:ScenarioChanged', ...
                'Existing JSON differs from A6 generation: %s', jsonFile);
        else
            write_json(jsonFile, instance);
        end
    end
end

%% Index all generated instances, including those from earlier batches

files = dir(fullfile(outputDirectory, 'F*_*.json'));
[~, order] = sort({files.name});
files = files(order);

catalog = struct([]);

for fileIndex = 1:numel(files)
    instance = jsondecode(fileread( ...
        fullfile(files(fileIndex).folder, files(fileIndex).name)));

    catalog(fileIndex).family_id = instance.family_id;
    catalog(fileIndex).instance_id = instance.instance_id;
    catalog(fileIndex).seed = instance.seed;
    catalog(fileIndex).name = instance.family_name;
    catalog(fileIndex).reference_speed_mps = instance.reference.speed_mps;
    catalog(fileIndex).curvature_per_m = instance.road.curvature_per_m;
    catalog(fileIndex).friction_coefficient = instance.friction_coefficient;
    catalog(fileIndex).json_file = files(fileIndex).name;
end

write_json(fullfile(outputDirectory, 'index.json'), catalog);

fprintf('A6 scenario files available in: %s\n', outputDirectory);

end


function write_json(filePath, data)
%WRITE_JSON Preserve readable scenario configuration without solver handles.

fileId = fopen(filePath, 'w');
assert(fileId >= 0);

fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>

fprintf(fileId, '%s\n', jsonencode(data, PrettyPrint=true));

end
