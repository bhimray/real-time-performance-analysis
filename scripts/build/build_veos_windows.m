function result = build_veos_windows(options)
%BUILD_VEOS_WINDOWS Generate and build the Windows controller in buildVEOS.
% The controller artifacts and dependency manifest live in buildVEOS.
% Generate the full ASM application separately.

arguments
    options.Root (1,1) string = string(fileparts(fileparts(fileparts(mfilename('fullpath')))))
    options.Jobs (1,1) double {mustBeInteger,mustBePositive} = 4
end
%% Validate the environment

assert(ispc,'ecu:VEOSPlatform','This workflow requires a Windows host.');
root = char(options.Root);
buildDirectory = fullfile(root,'buildVEOS');
generatedDirectory = fullfile(buildDirectory,'c_generated_code');
sfunctionName = 'acados_solver_sfunction_ecu_vehicle_nmpc';
[~,loadedMex] = inmem('-completenames');
assert(~any(contains(loadedMex,[sfunctionName '.'])), 'ecu:VEOSLoadedMex', ...
    'Close models using the S-function, clear %s, then rebuild.',sfunctionName);
if ~isfolder(buildDirectory)
    mkdir(buildDirectory);
end
addpath(fullfile(root,'src'),fullfile(root,'config'), ...
    fullfile(root,'scripts','build'),'-begin');
localConfig = jsondecode(fileread(fullfile(root,'config','local.json')));
acadosRoot = char(localConfig.acados_root);
assert(isfile(fullfile(acadosRoot,'bin','t_renderer.exe')), ...
    'Install the pinned acados template renderer before building.');
addpath(fullfile(acadosRoot,'interfaces','acados_matlab_octave'), ...
    char(localConfig.casadi_root),fullfile(acadosRoot,'external','jsonlab'));
% Prefer the Windows renderer and project S-function templates.
addpath(fullfile(root, 'dependencies', 'acados_v054_compat'), '-begin');
previousAcados = getenv('ACADOS_INSTALL_DIR');
previousRun = getenv('ENV_RUN');
environmentCleanup = onCleanup(@() restore_environment(previousAcados,previousRun)); %#ok<NASGU>
setenv('ACADOS_INSTALL_DIR',acadosRoot);
setenv('ENV_RUN','true');

%% 1. Build the Windows libraries

fprintf('1/4 Building Windows acados libraries...\n');
logFile = fullfile(buildDirectory,'windows_libraries.log');
libraryBuildScript = fullfile(root,'scripts','build','Build-VEOS.ps1');
command = sprintf('powershell.exe -NoProfile -ExecutionPolicy Bypass -File "%s" -ProjectRoot "%s" -Jobs %d > "%s" 2>&1', ...
    libraryBuildScript,root,options.Jobs,logFile);
fprintf('    Library build log: %s\n', logFile);
[status, output] = system(command);
assert(status == 0,'ecu:VEOSLibraries','Library build failed. See %s\n%s',logFile,output);
installDirectory = fullfile(buildDirectory,'install');
% Metadata is from the same pinned source as the freshly built libraries.
copyfile(fullfile(acadosRoot,'lib','link_libs.json'),fullfile(installDirectory,'lib','link_libs.json'),'f');
copyfile(fullfile(acadosRoot,'lib','git_commit_hash'),fullfile(installDirectory,'lib','git_commit_hash'),'f');
config = controller_config();
config.model_name = 'ecu_vehicle_nmpc';
commitFile = fullfile(installDirectory,'lib','git_commit_hash');
assert(startsWith(config.required_acados_commit,strtrim(fileread(commitFile))), ...
    'ecu:VEOSVersion','Built acados libraries do not match controller_config.');

%% 2. Generate the controller C sources

fprintf('2/4 Generating current controller sources in buildVEOS...\n');
fprintf('    Generated sources: %s\n', generatedDirectory);
prepared = ecu.control.prepare_controller(Root=root, Config=config);
if ~isfolder(generatedDirectory)
    mkdir(generatedDirectory);
end
originalDirectory = pwd;
folderCleanup = onCleanup(@() cd(originalDirectory)); %#ok<NASGU>
cd(buildDirectory);
ocp = ecu.control.ocp_nmpc_setup(config,prepared.initial.x0, ...
    prepared.initial.P(:,1),prepared.initial.mu,generatedDirectory);
ocp.code_gen_opts.acados_include_path = fullfile(installDirectory,'include');
ocp.code_gen_opts.acados_lib_path = fullfile(installDirectory,'lib');
ocp.simulink_opts.generate_simulink_block = 0;
% Generate the solver files using the pinned acados OCP interface.
ocp.make_consistent();
ocp.generate_external_functions();
ocp.dump_to_json();
ocp.render_templates();
sourceMatches = regexp(fileread(fullfile(generatedDirectory,'make_sfun.m')),'''([^'']+\.c)''','tokens');
sourceNames = unique(cellfun(@(t) t{1},sourceMatches,'UniformOutput',false),'stable');
assert(any(strcmp(sourceNames,[sfunctionName '.c'])) && ...
    any(strcmp(sourceNames,'acados_solver_ecu_vehicle_nmpc.c')), ...
    'ecu:VEOSSources','Generated make_sfun source list is incomplete.');
sourcePaths = cellfun(@(file) fullfile(generatedDirectory, file), ...
    sourceNames, 'UniformOutput', false);
missingSources = sourcePaths(~cellfun(@isfile, sourcePaths));
assert(isempty(missingSources), 'ecu:VEOSMissingSource', ...
    'Generated source files are missing: %s', strjoin(missingSources, ', '));
write_json(fullfile(buildDirectory,'controller_sources.json'),sourceNames);

%% 3. Compile the MATLAB S-function

fprintf('3/4 Compiling the Windows MATLAB S-function...\n');
sfunctionFile = build_controller_veos(root);
fprintf('    Compiled S-function: %s\n', sfunctionFile);

%% 4. Publish VEOS dependency registration

fprintf('4/4 Publishing source/header/library registration...\n');
% Simulink registers the S-function wrapper itself.
sourceFiles = sourcePaths(~contains(sourceNames, 'sfunction'));
% Register flat copies as HeaderFile (adds the SIC's otherFiles include path),
% and preserve the original header tree for qualified includes such as
% acados_c/ocp_nlp_interface.h. Destination-only files do not add include paths.
installInclude = fullfile(installDirectory, 'include');
headers = [dir(fullfile(installInclude, '**', '*.h')); ...
           dir(fullfile(generatedDirectory, '**', '*.h'))];
headerNames = {headers.name};
assert(numel(unique(headerNames)) == numel(headerNames), ...
    'ecu:VEOSHeaders','Duplicate header basenames require explicit registration.');
flatHeaderDirectory = fullfile(buildDirectory,'registration_headers');
if ~isfolder(flatHeaderDirectory)
    mkdir(flatHeaderDirectory);
end
qualifiedHeaders = cell(1,numel(headers));
headerDestinations = cell(1,numel(headers));
flatHeaders = cell(1,numel(headers));
for k = 1:numel(headers)
    qualifiedHeaders{k} = fullfile(headers(k).folder,headers(k).name);
    headerName = headers(k).name;
    flatCopy = fullfile(flatHeaderDirectory, headerName);
    flatHeaders{k} = flatCopy;

    if strcmpi(headerName, 'math.h')
        % Keep the acados math header at its qualified path.
        if isfile(flatCopy)
            delete(flatCopy);
        end
    elseif strcmpi(headerName, 'blasfeo_target.h')
        % Register the installed file directly, using one physical path.
        if isfile(flatCopy)
            delete(flatCopy);
        end
        flatHeaders{k} = qualifiedHeaders{k};
    else
        copyfile(qualifiedHeaders{k}, flatCopy, 'f');
    end
    if startsWith(headers(k).folder, installInclude)
        headerRoot = installInclude;
    else
        headerRoot = generatedDirectory;
    end
    destination = headers(k).folder(numel(headerRoot)+1:end);
    if startsWith(destination, filesep)
        destination = destination(2:end);
    end
    headerDestinations{k} = destination;
end
registration.schema_version = 1;
registration.target = 'VEOS_WIN64_GCC';
registration.sources = sourceFiles;
registration.flat_headers = flatHeaders(~strcmpi(headerNames, 'math.h'));
registration.tree_headers = qualifiedHeaders;
registration.tree_folders = headerDestinations;
registration.include_dirs = {installInclude, ...
    fullfile(installInclude, 'blasfeo', 'include'), ...
    fullfile(installInclude, 'hpipm', 'include'), ...
    flatHeaderDirectory, generatedDirectory};
registration.libraries = fullfile(installDirectory, 'lib', ...
    {'acados.lib', 'hpipm.lib', 'blasfeo.lib'});

registrationFile = fullfile(buildDirectory, 'registration_manifest.json');
write_json(registrationFile, registration);
fprintf('    Dependency manifest: %s\n', registrationFile);
write_json(fullfile(buildDirectory,'veos_target.json'), ...
    struct('target','VEOS_WIN64_GCC','installSubdirectory','install'));
% The installed hook must have the entry point Simulink discovers.
hookText = fileread(fullfile(root,'scripts','build','rtwmakecfg_veos.m'));
hookText = regexprep(hookText,'^function makeInfo = rtwmakecfg_veos\(\)', ...
    'function makeInfo = rtwmakecfg()','once');
assert(startsWith(hookText,'function makeInfo = rtwmakecfg()'), ...
    'ecu:VEOSHook','Unexpected function declaration in rtwmakecfg_veos.m.');
writelines(splitlines(string(hookText)),fullfile(generatedDirectory,'rtwmakecfg.m'));
result = struct('target','VEOS_WIN64_GCC','build_dir',buildDirectory, ...
    'sfunction',sfunctionFile,'source_count',numel(sourceFiles), ...
    'header_count',numel(headers),'config',config, ...
    'created_utc',char(datetime('now','TimeZone','UTC')));
write_json(fullfile(buildDirectory,'windows_workflow_manifest.json'),result);
fprintf('Windows controller ready: %d sources, %d headers, 3 libraries.\n', ...
    numel(sourceFiles),numel(headers));
end

function restore_environment(acadosRoot,run)
setenv('ACADOS_INSTALL_DIR',acadosRoot);
setenv('ENV_RUN',run);
end

function write_json(file,value)
[fid, message] = fopen(file, 'w', 'n', 'UTF-8');
assert(fid >= 0, 'ecu:VEOSManifestWrite', 'Cannot write %s: %s', file, message);
cleanup = onCleanup(@() fclose(fid)); %#ok<NASGU>
fprintf(fid,'%s\n',jsonencode(value,PrettyPrint=true));
end
