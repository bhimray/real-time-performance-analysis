function fingerprint = select_mingw_compiler(localConfig, requiredVersion)
%SELECT_MINGW_COMPILER Find and explicitly select the project's Windows tools.
%   An explicit localConfig.mingw_root is authoritative. Otherwise inspect
%   MATLAB's environment, current-release support package and detected tools.
%   Never fall back to Microsoft Visual C++ or an unverified GCC version.

assert(ispc, 'ecu:CompilerPlatform', ...
    'This compiler policy requires Windows MinGW.');

roots = {};
explicitRoot = isfield(localConfig, 'mingw_root') ...
    && ~isempty(localConfig.mingw_root);

if explicitRoot
    roots = {char(localConfig.mingw_root)};
else
    roots{end + 1} = getenv('MW_MINGW64_LOC');
    roots{end + 1} = fullfile(getenv('ProgramData'), 'MATLAB', ...
        'SupportPackages', ['R', version('-release')], ...
        '3P.instrset', 'mingw_w64.instrset');

    try
        available = mex.getCompilerConfigurations('C', 'Installed');
    catch
        % A stale MATLAB detection cache must not hide a runnable package.
        available = [];
    end
    for index = 1:numel(available)
        if contains(available(index).Name, 'MinGW', IgnoreCase=true)
            roots{end + 1} = char(available(index).Location); %#ok<AGROW>
        end
    end
end

roots = unique(roots(~cellfun(@isempty, roots)), 'stable');
attempts = {};
selectedRoot = '';

for index = 1:numel(roots)
    root = roots{index};
    try
        assert(~contains(root, '"') && ~contains(root, newline), ...
            'Compiler path contains unsupported characters.');
        gcc = fullfile(root, 'bin', 'gcc.exe');
        gpp = fullfile(root, 'bin', 'g++.exe');
        assert(isfile(gcc) && isfile(gpp), ...
            'Both bin/gcc.exe and bin/g++.exe must exist.');

        gccVersion = query_tool(gcc, '-dumpfullversion');
        gppVersion = query_tool(gpp, '-dumpfullversion');
        assert(strcmp(gccVersion, requiredVersion) ...
            && strcmp(gppVersion, requiredVersion), ...
            'Required GCC/G++ %s; found GCC %s and G++ %s.', ...
            requiredVersion, gccVersion, gppVersion);

        target = query_tool(gcc, '-dumpmachine');
        assert(strcmp(target, 'x86_64-w64-mingw32') ...
            && strcmp(target, query_tool(gpp, '-dumpmachine')), ...
            'Both tools must target x86_64-w64-mingw32.');

        selectedRoot = char(java.io.File(root).getCanonicalPath());
        break;
    catch failure
        attempts{end + 1} = sprintf('%s: %s', root, failure.message); %#ok<AGROW>
    end
end

assert(~isempty(selectedRoot), 'ecu:MinGWUnavailable', ...
    ['Required MinGW GCC/G++ %s was not found or could not run. ' ...
     'Install the supported compiler or set mingw_root in config/local.json.\n%s'], ...
    requiredVersion, strjoin(attempts, newline));

%% Set the detection root, then explicitly select both language configurations.
setenv('MW_MINGW64_LOC', selectedRoot);
optionsFolder = fullfile(matlabroot, 'bin', 'win64', 'mexopts');
select_language('C', 'mingw64.xml', selectedRoot, optionsFolder);
select_language('C++', 'mingw64_g++.xml', selectedRoot, optionsFolder);

c = mex.getCompilerConfigurations('C', 'Selected');
cpp = mex.getCompilerConfigurations('C++', 'Selected');

fingerprint.family = 'MinGW-w64';
fingerprint.version = gccVersion;
fingerprint.root = selectedRoot;
fingerprint.target = target;
fingerprint.c = describe_compiler(c, fullfile(selectedRoot, 'bin', 'gcc.exe'));
fingerprint.cpp = describe_compiler(cpp, fullfile(selectedRoot, 'bin', 'g++.exe'));
fingerprint.selection_policy = 'Explicit MinGW C and C++; no MSVC fallback';
fingerprint.checked_utc = char(datetime('now', 'TimeZone', 'UTC'));

end


function output = query_tool(executable, option)
%QUERY_TOOL Execute the exact tool path rather than resolving it through PATH.
[status, output] = system(sprintf('"%s" %s', executable, option));
assert(status == 0, 'Compiler command failed: %s %s', executable, option);
output = strtrim(output);
end


function select_language(language, optionsName, root, optionsFolder)
%SELECT_LANGUAGE Change a language default only when it is not already correct.
selected = mex.getCompilerConfigurations(language, 'Selected');
matches = numel(selected) == 1 ...
    && contains(selected.Name, 'MinGW', IgnoreCase=true) ...
    && strcmpi(char(java.io.File(selected.Location).getCanonicalPath()), root);

if ~matches
    try
        mex(['-setup:', fullfile(optionsFolder, optionsName)], language);
    catch failure
        error('ecu:MinGWSelectionFailed', ...
            'Could not select MinGW for %s: %s', language, failure.message);
    end
end

selected = mex.getCompilerConfigurations(language, 'Selected');
assert(numel(selected) == 1 ...
    && contains(selected.Name, 'MinGW', IgnoreCase=true) ...
    && strcmpi(char(java.io.File(selected.Location).getCanonicalPath()), root), ...
    'ecu:MinGWSelectionFailed', 'MinGW selection did not take effect for %s.', language);
end


function record = describe_compiler(compiler, executable)
%DESCRIBE_COMPILER Retain the actual MEX flags required by A9.
record.name = compiler.Name;
record.version = compiler.Version;
record.location = compiler.Location;
record.executable = executable;
record.executable_sha256 = ecu.logging.file_sha256(executable);
record.mex_options_file = compiler.MexOpt;
record.mex_options_sha256 = ecu.logging.file_sha256(compiler.MexOpt);
record.compiler_flags = compiler.Details.CompilerFlags;
record.optimization_flags = compiler.Details.OptimizationFlags;
record.linker_flags = compiler.Details.LinkerFlags;
record.linker_optimization_flags = compiler.Details.LinkerOptimizationFlags;
end
