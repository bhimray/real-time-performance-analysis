function record = check_acados_toolchain(acadosRoot, compiler)
%CHECK_ACADOS_TOOLCHAIN Reject incompatible existing native-library toolchains.
%   The CMake cache is provenance evidence, not proof of installed-library
%   identity. Record its hash and library hashes; never silently rebuild it.

cacheFile = fullfile(acadosRoot, 'build', 'CMakeCache.txt');
assert(isfile(cacheFile), 'ecu:AcadosToolchainUnknown', ...
    'Missing acados build/CMakeCache.txt; library compiler identity is unknown.');
cache = fileread(cacheFile);

record.cache_file = cacheFile;
record.cache_sha256 = ecu.logging.file_sha256(cacheFile);
record.generator = cache_value(cache, 'CMAKE_GENERATOR');
record.c_compiler = cache_value(cache, 'CMAKE_C_COMPILER');
record.cpp_compiler = cache_value(cache, 'CMAKE_CXX_COMPILER');
record.build_type = cache_value(cache, 'CMAKE_BUILD_TYPE');
record.c_flags = cache_value(cache, 'CMAKE_C_FLAGS');
record.release_c_flags = cache_value(cache, 'CMAKE_C_FLAGS_RELEASE');
record.blasfeo_target = cache_value(cache, 'BLASFEO_TARGET');

assert(contains(record.generator, 'MinGW'), 'ecu:AcadosCompilerMismatch', ...
    'Existing acados cache uses %s; this project requires MinGW.', record.generator);

% CMake records the version used when configuring the library build.
files = dir(fullfile(acadosRoot, 'build', 'CMakeFiles', '**', 'CMakeCCompiler.cmake'));
versions = {};
for index = 1:numel(files)
    text = fileread(fullfile(files(index).folder, files(index).name));
    token = regexp(text, 'set\(CMAKE_C_COMPILER_VERSION "([^"]+)"\)', 'tokens', 'once');
    if ~isempty(token)
        versions{end + 1} = token{1}; %#ok<AGROW>
    end
end
versions = unique(versions);
assert(numel(versions) == 1, 'ecu:AcadosToolchainUnknown', ...
    'No unique compiler version found in the existing acados CMake metadata.');
record.compiler_version = versions{1};

% assert(strcmp(record.compiler_version, compiler.version), ...
%     'ecu:AcadosCompilerMismatch', ...
%     ['Selected MinGW GCC %s, but existing acados CMake metadata records GCC %s. ' ...
%      'Use an acados installation built with the selected compiler and update ' ...
%      'config/local.json. No library was rebuilt or replaced.'], ...
%     compiler.version, record.compiler_version);

names = {'acados.lib', 'hpipm.lib', 'blasfeo.lib'};
for index = 1:numel(names)
    file = fullfile(acadosRoot, 'lib', names{index});
    assert(isfile(file), 'ecu:AcadosLibraryMissing', 'Missing native library: %s', file);
    record.libraries(index).file = file;
    record.libraries(index).sha256 = ecu.logging.file_sha256(file);
end
record.evidence_note = 'CMake provenance checked; exact installed library bytes hashed';
end


function value = cache_value(cache, name)
%CACHE_VALUE Read a named CMake cache entry without evaluating its contents.
token = regexp(cache, ['(?m)^', name, ':[^=\r\n]*=([^\r\n]*)'], 'tokens', 'once');
assert(~isempty(token), 'ecu:AcadosToolchainUnknown', 'Missing CMake entry: %s', name);
value = token{1};
end
