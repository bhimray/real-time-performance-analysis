function environment = setup_controller_environment()
%SETUP_CONTROLLER_ENVIRONMENT Activate the project's pinned acados toolchain.
%
%   Reads installation paths from config/local.json and verifies the acados
%   source/library commit before changing this MATLAB session's paths.
%
%   This function does not download, upgrade or modify the dependency.

%% Read machine-specific paths and the required dependency identity

projectRoot = char(currentProject().RootFolder);
localConfigFile = fullfile(projectRoot, 'config', 'local.json');

assert(isfile(localConfigFile), ...
    'ecu:LocalConfig', ...
    'Configure config/local.json first.');

localConfig = jsondecode(fileread(localConfigFile));
if isfield(localConfig, 'tool_paths')
    toolPaths = cellstr(string(localConfig.tool_paths));
    assert(all(cellfun(@isfolder, toolPaths)), ...
        'ecu:LocalTools', 'A configured tool_paths directory is missing.');
    setenv('PATH', strjoin([toolPaths(:).', {getenv('PATH')}], pathsep));
end
config = controller_config();

acadosRoot = char(localConfig.acados_root);
casadiRoot = char(localConfig.casadi_root);

interfaceDirectory = ...
    fullfile(acadosRoot, 'interfaces', 'acados_matlab_octave');

assert(isfile(fullfile(interfaceDirectory, 'AcadosOcp.m')));
assert(isfolder(fullfile(casadiRoot, '+casadi')));

%% Verify the pinned source commit and tracked source state

commitCommand = sprintf('git -C "%s" rev-parse HEAD', acadosRoot);
[commitStatus, commitText] = system(commitCommand);

assert(commitStatus == 0 && ...
    strcmp(strtrim(commitText), config.required_acados_commit), ...
    'ecu:AcadosVersion', ...
    'The acados source does not match the pinned commit.');

statusCommand = sprintf( ...
    'git -C "%s" status --porcelain --untracked-files=no', acadosRoot);

[sourceStatus, modifiedFiles] = system(statusCommand);

assert(sourceStatus == 0 && isempty(strtrim(modifiedFiles)), ...
    'ecu:AcadosModified', ...
    'Tracked acados files are modified. Review before using this baseline.');

%% Verify the installed library's source identity

libraryCommitFile = fullfile(acadosRoot, 'lib', 'git_commit_hash');
libraryCommit = strtrim(fileread(libraryCommitFile));

assert(startsWith(config.required_acados_commit, libraryCommit), ...
    'ecu:LibraryVersion', ...
    'Installed acados library has a different source commit.');

%% Select and verify the native compiler before any generated build

toolchain = jsondecode(fileread(fullfile( ...
    projectRoot, 'dependencies', 'toolchain.json')));

compilerFingerprint = ecu.control.select_mingw_compiler( ...
    localConfig, toolchain.compiler_policy.required_version);

libraryToolchain = ecu.control.check_acados_toolchain( ...
    acadosRoot, compilerFingerprint);

%% Activate only the required MATLAB folders

addpath( ...
    interfaceDirectory, ...
    casadiRoot, ...
    fullfile(acadosRoot, 'external', 'jsonlab') ...
);

% The local shim fixes Windows renderer path handling for acados v0.5.4.
% Neither the SDV project nor the shared acados source is edited.
compatibilityDirectory = ...
    fullfile(projectRoot, 'dependencies', 'acados_v054_compat');

addpath(compatibilityDirectory, '-begin');

assert(strcmp( ...
    which('AcadosOcp'), fullfile(interfaceDirectory, 'AcadosOcp.m')));

setenv('ACADOS_INSTALL_DIR', acadosRoot);
setenv('ENV_RUN', 'true');

%% Make the compiler and native libraries available to build tools

compiler = mex.getCompilerConfigurations('C', 'Selected');

requiredPathEntries = {
    fullfile(compilerFingerprint.root, 'bin')
    fullfile(acadosRoot, 'bin')
    fullfile(acadosRoot, 'lib')
};

pathEntries = strsplit(getenv('PATH'), pathsep);
pathEntries = pathEntries(~ismember(lower(string(pathEntries)), ...
    lower(string(requiredPathEntries))));
setenv('PATH', strjoin([requiredPathEntries.', pathEntries], pathsep));

% Generated native builds must resolve the same tools as MATLAB MEX.
setenv('CC', compilerFingerprint.c.executable);
setenv('CXX', compilerFingerprint.cpp.executable);

%% Return the environment record used in build manifests

environment.acados_root = acadosRoot;
environment.acados_tag = config.required_acados_tag;
environment.acados_commit = strtrim(commitText);
environment.acados_library_commit = libraryCommit;

environment.casadi_version = char(casadi.CasadiMeta.version());
environment.matlab = version;

environment.compiler_name = compiler.Name;
environment.compiler_version = compiler.Version;
environment.compiler_location = compiler.Location;

environment.compiler = compilerFingerprint;
environment.compiler_optimization_flags = compilerFingerprint.c.optimization_flags;
environment.acados_build_toolchain = libraryToolchain;
environment.matlab_release = ['R', version('-release')];
environment.machine_name = getenv('COMPUTERNAME');
environment.created_utc = char(datetime('now', 'TimeZone', 'UTC'));

environment.renderer = which('render_file');

end

