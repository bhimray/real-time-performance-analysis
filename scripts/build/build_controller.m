function bundle = build_controller(config, initial)
%BUILD_CONTROLLER Generate and compile a MATLAB acados controller.
%
%   BUNDLE = BUILD_CONTROLLER() uses the baseline configuration and a
%   synthetic code-generation fixture.
%
%   BUNDLE = BUILD_CONTROLLER(CONFIG, INITIAL) accepts explicit settings and
%   initialization. INITIAL contains x0 (5-by-1), P (19-by-(N+1)) and mu.
%
%   Returned bundle fields include:
%     solver       : AcadosOcpSolver handle.
%     config       : Configuration, including the unique generated name.
%     build_dir    : Location of generated source, binaries and manifests.
%     fingerprint  : Hash identifying the source/configuration/toolchain.
%

%% Select defaults and verify prerequisites

if nargin < 1
    config = controller_config();
end

if nargin < 2
    initial = ecu.control.controller_initialization(config);
end

projectRoot = char(currentProject().RootFolder);

ecu.control.validate_config(config);
environment = setup_controller_environment();

%% Identify this build

fingerprint = ecu.control.build_fingerprint( ...
    config, projectRoot, environment);

uniqueToken = char(java.util.UUID.randomUUID());
uniqueToken = strrep(uniqueToken, '-', '');

buildId = ['w2_', fingerprint(1:8), '_', uniqueToken(1:8)];

%% Select a generated-output directory

localConfigFile = fullfile(projectRoot, 'config', 'local.json');
localConfig = jsondecode(fileread(localConfigFile));

if isfield(localConfig, 'external_build_root') && ...
        ~isempty(localConfig.external_build_root)

    cacheRoot = char(localConfig.external_build_root);

elseif ispc
    % A short cache avoids Windows compiler path-length failures and keeps
    % generated files away from OneDrive synchronization.
    cacheRoot = fullfile(getenv('LOCALAPPDATA'), 'ECUControl', 'build');

else
    cacheRoot = fullfile(projectRoot, 'build');
end

buildDirectory = fullfile(cacheRoot, 'desktop', buildId);
mkdir(buildDirectory);

%% Assign a unique MEX name and protect the caller's current directory

config.model_name = ['veh_', uniqueToken(1:8)];

originalDirectory = pwd;
directoryCleanup = onCleanup(@() cd(originalDirectory)); %#ok<NASGU>

cd(buildDirectory);

%% Assemble the OCP and compile the native solver

generatedDirectory = fullfile(buildDirectory, 'c_generated_code');

ocp = ecu.control.ocp_nmpc_setup( ...
    config, ...
    initial.x0, ...
    initial.P(:, 1), ...
    initial.mu, ...
    generatedDirectory ...
);

creationOptions = struct( ...
    'output_dir', fullfile(buildDirectory, 'mex_interface') ...
);

solver = AcadosOcpSolver(ocp, creationOptions);

%% Return the live solver and its metadata

bundle = struct( ...
    'solver', solver, ...
    'config', config, ...
    'build_dir', buildDirectory, ...
    'build_id', buildId, ...
    'fingerprint', fingerprint, ...
    'environment', environment ...
);

% Preserve the existing MAT-file field names used by build/replay tooling.
c = config;
info = environment;
build_id = buildId;

save( ...
    fullfile(buildDirectory, 'build_context.mat'), ...
    'c', 'info', 'fingerprint', 'build_id' ...
);

%% Write portable metadata without the live solver handle

manifest = rmfield(bundle, 'solver');

write_json(fullfile(buildDirectory, 'build_manifest.json'), manifest);
write_json(fullfile(projectRoot, 'build', 'latest_controller.json'), manifest);

fprintf('Built MATLAB controller: %s\n', buildDirectory);

end


function write_json(filePath, data)
%WRITE_JSON Save a readable JSON record and always close the file.

fileId = fopen(filePath, 'w');
assert(fileId >= 0);

fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>

fprintf(fileId, '%s\n', jsonencode(data, PrettyPrint=true));

end
