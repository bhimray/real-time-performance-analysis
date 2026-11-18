function result = build_scalexio(options)
%BUILD_SCALEXIO Prepare the acados controller for HCP P04-004 Linux 64-bit.
% Run from MATLAB on Windows. Both the Linux target libraries and the Windows
% MEX-only libraries belong to buildSCALEXIO; no VEOS build is required.
% ConfigurationDesk builds and
% deploys the complete ASM application separately.
%
% Example:
%   result = build_scalexio(Jobs=4);
% Check buildSCALEXIO/libraries.log if the CMake steps fail.
arguments
    options.Root (1,1) string = string(fileparts(fileparts(fileparts(mfilename('fullpath')))))
    options.Jobs (1,1) double {mustBeInteger, mustBePositive} = 4
end

%% Resolve the tools and check prerequisites before generating files
assert(ispc, 'ecu:SCALEXIOHost', 'Run this build in Windows MATLAB.');
root = char(options.Root);
assert_controller_mex_unlocked(fullfile(root,'buildSCALEXIO','c_generated_code', ...
    ['acados_solver_sfunction_ecu_vehicle_nmpc.' mexext]));
output = fullfile(root, 'buildSCALEXIO');
generated = fullfile(output, 'c_generated_code');
install = fullfile(output, 'install');
libraryBuild = fullfile(output, 'acados');
manifestFile = fullfile(output, 'registration_manifest.json');
name = 'acados_solver_sfunction_ecu_vehicle_nmpc';
[~, loadedMex] = inmem('-completenames');
assert(~any(contains(loadedMex, [name '.'])), 'ecu:SCALEXIOLoadedMex', ...
    'Close models using %s and clear that function before rebuilding.', name);

addpath(fullfile(root, 'src'), fullfile(root, 'config'), ...
    fullfile(root, 'scripts', 'build'), '-begin');
select_controller_target('NONE',Root=root);
local = jsondecode(fileread(fullfile(root, 'config', 'local.json')));
source = char(local.acados_root);
% Hold until this function returns, including on errors.
sourceLock = acquire_acados_build_lock(root); %#ok<NASGU>
cmake = fullfile(root, 'dependencies', 'cmake', ...
    'cmake-3.31.8-windows-x86_64', 'bin', 'cmake.exe');
toolchain = fullfile(source, 'cmake', 'Toolchain-dSpaceSCALEXIO-Linux64.cmake');
compiler = ['C:/Program Files/Common Files/dSPACE/CFD Compiler 26.1/' ...
    'target/x86_64-linux-gnu/bin/x86_64-linux-gnu-gcc.exe'];
make = 'C:/Program Files/Common Files/dSPACE/GCC/14.2/x86_64/bin/mingw32-make.exe';
% Windows libraries are private to the MATLAB MEX, never target registration.
hostInstall = fullfile(output, 'host', 'install');
hostBuild = fullfile(output, 'host', 'acados');
hostToolchain = fullfile(root,'scripts','build','Toolchain-dSpaceVEOS-Windows.cmake');
hostCompiler = 'C:/Program Files/Common Files/dSPACE/GCC/14.2/x86_64/bin/gcc.exe';
hookTemplate = fullfile(root, 'scripts', 'build', 'rtwmakecfg_scalexio.m');
required = {cmake, toolchain, compiler, make, hookTemplate, hostToolchain, hostCompiler, ...
    fullfile(source, 'bin', 't_renderer.exe')};
assert(all(cellfun(@isfile, required)), 'ecu:SCALEXIOPrerequisite', ...
    'Missing prerequisite. Check CMake, CFD Compiler 26.1, the Linux64 toolchain, and Windows GCC.');

hostLibraries = fullfile(hostInstall, 'lib', {'acados.lib', 'hpipm.lib', 'blasfeo.lib'});
config = controller_config();
commit = strtrim(run_command(sprintf('git -C "%s" rev-parse HEAD', source)));
assert(strcmp(commit, config.required_acados_commit), 'ecu:SCALEXIOVersion', ...
    'The acados checkout must match controller_config.required_acados_commit.');
triple = strtrim(run_command(sprintf('"%s" -dumpmachine', compiler)));
assert(strcmp(triple, 'x86_64-linux-gnu'), 'ecu:SCALEXIOCompiler', ...
    'Expected x86_64-linux-gnu, received %s.', triple);

addpath(fullfile(source, 'interfaces', 'acados_matlab_octave'), ...
    fullfile(source, 'external', 'jsonlab'), char(local.casadi_root));
addpath(fullfile(root, 'dependencies', 'acados_v054_compat'), '-begin');
previousAcados = getenv('ACADOS_INSTALL_DIR');
previousRun = getenv('ENV_RUN');
environmentCleanup = onCleanup(@() restore_environment(previousAcados, previousRun)); %#ok<NASGU>
setenv('ACADOS_INSTALL_DIR', source);
setenv('ENV_RUN', 'true');
if ~isfolder(output), mkdir(output); end
if ~isfolder(generated), mkdir(generated); end
% Invalidate registration until every build step has succeeded.
if isfile(manifestFile)
    delete(manifestFile);
end
logFile = fullfile(output, 'libraries.log');

%% 1. Cross-compile and install the three Linux static libraries
fprintf('1/4 Building SCALEXIO Linux libraries. Log: %s\n', logFile);
configure = sprintf(['"%s" -S "%s" -B "%s" -G "MinGW Makefiles" ' ...
    '"-DCMAKE_TOOLCHAIN_FILE=%s" "-DCMAKE_MAKE_PROGRAM=%s" ' ...
    '"-DCMAKE_INSTALL_PREFIX=%s" "-DACADOS_INSTALL_DIR=%s" ' ...
    '-DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF ' ...
    '-DBLASFEO_TARGET=GENERIC -DHPIPM_TARGET=GENERIC ' ...
    '-DACADOS_WITH_OPENMP=OFF -DACADOS_EXAMPLES=OFF -DACADOS_UNIT_TESTS=OFF ' ...
    '-DBLASFEO_EXAMPLES=OFF -DEXT_DEP=OFF'], ...
    cmake, source, libraryBuild, toolchain, make, install, install);
run_command(sprintf('%s > "%s" 2>&1', configure, logFile));
run_command(sprintf('"%s" --build "%s" --parallel %d >> "%s" 2>&1', ...
    cmake, libraryBuild, options.Jobs, logFile));
run_command(sprintf('"%s" --install "%s" >> "%s" 2>&1', cmake, libraryBuild, logFile));
libraries = fullfile(install, 'lib', {'libacados.a', 'libhpipm.a', 'libblasfeo.a'});
assert(all(cellfun(@isfile, libraries)), 'ecu:SCALEXIOLibraries', ...
    'Linux archives are missing. Inspect %s.', logFile);
% Confirm that the configured toolchain used the compiler checked above.
cmakeVersion = regexp(run_command(sprintf('"%s" --version', cmake)), ...
    'cmake version ([^\s]+)', 'tokens', 'once');
compilerInfo = fileread(fullfile(libraryBuild, 'CMakeFiles', cmakeVersion{1}, 'CMakeCCompiler.cmake'));
selectedCompiler = regexp(compilerInfo, 'set\(CMAKE_C_COMPILER "([^"]+)"\)', 'tokens', 'once');
assert(~isempty(selectedCompiler) && strcmpi(strrep(selectedCompiler{1}, '\', '/'), compiler), ...
    'ecu:SCALEXIOCache', 'CMake selected a different compiler. Inspect %s.', libraryBuild);

% acados CMake writes MATLAB code-generation metadata into source/lib.
% Its install rules omit these files, so publish them with this target's
% libraries after each successful configure/build/install cycle.
metadataNames = {'link_libs.json', 'git_commit_hash'};
for k = 1:numel(metadataNames)
    metadataSource = fullfile(source, 'lib', metadataNames{k});
    assert(isfile(metadataSource), 'ecu:SCALEXIOMetadata', ...
        'acados CMake did not produce %s. Inspect %s.', metadataSource, logFile);
    copyfile(metadataSource, fullfile(install, 'lib', metadataNames{k}), 'f');
end
% Fail here with a clear message if the metadata is invalid or stale.
jsondecode(fileread(fullfile(install, 'lib', 'link_libs.json')));
targetCommit = strtrim(fileread(fullfile(install, 'lib', 'git_commit_hash')));
assert(~isempty(targetCommit) && startsWith(commit, targetCommit), ...
    'ecu:SCALEXIOMetadataVersion', ...
    'Installed metadata does not match the acados revision used for this build.');

% The same Windows compiler definition can serve both workflows, but this
% build has its own CMake cache, installation, and log. Copy Linux metadata
% above BEFORE configuring Windows: acados writes metadata into source/lib.
fprintf('    Building private Windows MEX libraries (not SCALEXIO target inputs).\n');
hostLog = fullfile(output,'host_libraries.log');
hostConfigure = sprintf(['"%s" -S "%s" -B "%s" -G "MinGW Makefiles" ' ...
    '"-DCMAKE_TOOLCHAIN_FILE=%s" "-DCMAKE_MAKE_PROGRAM=%s" ' ...
    '"-DCMAKE_INSTALL_PREFIX=%s" "-DACADOS_INSTALL_DIR=%s" ' ...
    '-DCMAKE_BUILD_TYPE=Release -DBUILD_SHARED_LIBS=OFF ' ...
    '-DBLASFEO_TARGET=GENERIC -DHPIPM_TARGET=GENERIC ' ...
    '-DACADOS_WITH_OPENMP=OFF -DACADOS_EXAMPLES=OFF -DACADOS_UNIT_TESTS=OFF ' ...
    '-DBLASFEO_EXAMPLES=OFF -DEXT_DEP=OFF'], ...
    cmake,source,hostBuild,hostToolchain,make,hostInstall,hostInstall);
run_command(sprintf('%s > "%s" 2>&1',hostConfigure,hostLog));
run_command(sprintf('"%s" --build "%s" --parallel %d >> "%s" 2>&1', ...
    cmake,hostBuild,options.Jobs,hostLog));
run_command(sprintf('"%s" --install "%s" >> "%s" 2>&1',cmake,hostBuild,hostLog));
assert(all(cellfun(@isfile,hostLibraries)), 'ecu:SCALEXIOHostLibraries', ...
    'Private Windows MEX libraries are missing. Inspect %s.',hostLog);
%% 2. Generate the current controller sources and record their exact list
fprintf('2/4 Generating controller sources in %s\n', generated);
prepared = ecu.control.prepare_controller(Root=root, Config=config);
previousFolder = pwd;
folderCleanup = onCleanup(@() cd(previousFolder)); %#ok<NASGU>
cd(output);
ocp = ecu.control.ocp_nmpc_setup(config, prepared.initial.x0, ...
    prepared.initial.P(:,1), prepared.initial.mu, generated);
ocp.code_gen_opts.acados_include_path = fullfile(install, 'include');
ocp.code_gen_opts.acados_lib_path = fullfile(install, 'lib');
ocp.simulink_opts.generate_simulink_block = 0;
ocp.make_consistent();
ocp.generate_external_functions();
ocp.dump_to_json();
ocp.render_templates();
matches = regexp(fileread(fullfile(generated, 'make_sfun.m')), '''([^'']+\.c)''', 'tokens');
sourceNames = unique(cellfun(@(entry) entry{1}, matches, 'UniformOutput', false), 'stable');
assert(any(strcmp(sourceNames, [name '.c'])) && ...
    any(strcmp(sourceNames, 'acados_solver_ecu_vehicle_nmpc.c')), ...
    'ecu:SCALEXIOSources', 'The generated make_sfun.m source list is incomplete.');
sourceFiles = cellfun(@(file) fullfile(generated, file), sourceNames, 'UniformOutput', false);
assert(all(cellfun(@isfile, sourceFiles)), 'ecu:SCALEXIOSources', ...
    'A generated solver source is missing.');
write_json(fullfile(output, 'controller_sources.json'), sourceNames);

%% 3. Compile the Windows MEX that Simulink uses to inspect the S-function
fprintf('3/4 Compiling the Windows MATLAB S-function from the same sources.\n');
hostCompilerRoot = fileparts(fileparts(hostCompiler));
[status, shortRoot] = system(sprintf('for %%I in ("%s") do @echo %%~sI', hostCompilerRoot));
assert(status == 0, 'ecu:SCALEXIOMexCompiler', 'Cannot resolve the Windows compiler path.');
previousCompiler = getenv('MW_MINGW64_LOC');
mexCleanup = onCleanup(@() setenv('MW_MINGW64_LOC', previousCompiler)); %#ok<NASGU>
setenv('MW_MINGW64_LOC', strtrim(shortRoot));
include = fullfile(hostInstall, 'include');
mex('-f', fullfile(matlabroot, 'bin', 'win64', 'mexopts', 'mingw64.xml'), '-O', ...
    ['-I' include], ['-I' fullfile(include, 'blasfeo', 'include')], ...
    ['-I' fullfile(include, 'hpipm', 'include')], ['-I' generated], ...
    sourceFiles{:}, hostLibraries{:}, '-outdir', generated, '-output', name);
sfunctionFile = fullfile(generated, [name '.' mexext]);
assert(isfile(sfunctionFile), 'ecu:SCALEXIOMex', 'The Windows S-function was not created.');

%% 4. Publish a target-specific dependency hook beside the new MEX
fprintf('4/4 Publishing SCALEXIO_LNX64 registration.\n');
targetInclude = fullfile(install, 'include');
headers = [dir(fullfile(targetInclude, '**', '*.h')); dir(fullfile(generated, '**', '*.h'))];
headerNames = {headers.name};
assert(numel(unique(lower(string(headerNames)))) == numel(headers), ...
    'ecu:SCALEXIOHeaders', 'Header basenames collide. Inspect the installed header tree.');
headerFiles = arrayfun(@(header) fullfile(header.folder, header.name), ...
    headers, 'UniformOutput', false);
destinations = cell(size(headerFiles));
for k = 1:numel(headers)
    headerRoot = targetInclude;
    if startsWith(headers(k).folder, generated)
        headerRoot = generated;
    end
    destinations{k} = headers(k).folder(numel(headerRoot)+1:end);
    destinations{k} = regexprep(destinations{k}, '^[\\/]', '');
end
registration = struct('schema_version', 1, 'target', 'SCALEXIO_LNX64', ...
    'sources', {sourceFiles(~strcmp(sourceNames, [name '.c']))}, ...
    'headers', {headerFiles}, 'header_destinations', {destinations}, ...
    'include_dirs', {{targetInclude, fullfile(targetInclude, 'blasfeo', 'include'), ...
        fullfile(targetInclude, 'hpipm', 'include'), generated}}, 'libraries', {libraries});
% Store one physical header path per basename. The hook also packages each
% header at its qualified directory, preserving acados_c/... includes.
hook = fileread(hookTemplate);
hook = regexprep(hook, '^function makeInfo = rtwmakecfg_scalexio\(\)', ...
    'function makeInfo = rtwmakecfg()', 'once');
assert(startsWith(hook, 'function makeInfo = rtwmakecfg()'), ...
    'ecu:SCALEXIOHook', 'Unexpected hook function declaration.');
writelines(string(hook), fullfile(generated, 'rtwmakecfg.m'));
result = struct('target', 'SCALEXIO_LNX64', 'processing_unit', 'HCP P04-004', ...
    'compiler', compiler, 'compiler_version', strtrim(run_command(sprintf('"%s" -dumpfullversion', compiler))), ...
    'acados_commit', commit, 'build_dir', output, 'sfunction', sfunctionFile, ...
    'config', config, 'created_utc', char(datetime('now', 'TimeZone', 'UTC')));
write_json(fullfile(output, 'build_manifest.json'), result);
write_json(manifestFile, registration);
select_controller_target('SCALEXIO',Root=root);
fprintf('Controller ready. Run build_asm_scalexio to generate and validate the ASM SIC.\n');
end

function output = run_command(command)
% Include the failed command in the exception for straightforward debugging.
[status, output] = system(command);
assert(status == 0, 'ecu:SCALEXIOCommand', 'Command failed (%d):\n%s\n%s', ...
    status, command, output);
end

function write_json(file, value)
[fid, message] = fopen(file, 'w', 'n', 'UTF-8');
assert(fid >= 0, 'ecu:SCALEXIOManifest', 'Cannot write %s: %s', file, message);
cleanup = onCleanup(@() fclose(fid)); %#ok<NASGU>
fprintf(fid, '%s\n', jsonencode(value, PrettyPrint=true));
end

function restore_environment(acadosRoot, runMode)
setenv('ACADOS_INSTALL_DIR', acadosRoot);
setenv('ENV_RUN', runMode);
end
