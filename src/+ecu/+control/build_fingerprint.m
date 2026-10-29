function fingerprint = build_fingerprint(config, projectRoot, environment)
%BUILD_FINGERPRINT Identify the controller source, settings and toolchain.
%
%   The SHA-256 digest covers MATLAB source text, controller configuration
%   and the recorded dependency identity. A build manifest stores the result.

%% Collect source files in a stable order

sourceFiles = [
    dir(fullfile(projectRoot, 'src', '**', '*.m'))
    dir(fullfile(projectRoot, 'config', '**', '*.m'))
    dir(fullfile(projectRoot, 'scripts', '**', '*.m'))
    dir(fullfile(projectRoot, 'experiments', '**', '*.m'))
    dir(fullfile(projectRoot, 'dependencies', 'acados_v054_compat', '*.m'))
];

sourcePaths = fullfile({sourceFiles.folder}, {sourceFiles.name});
sourcePaths = sort(sourcePaths);

%% Combine the configuration with relative names and source contents

sourceText = jsonencode(config);

for file = 1:numel(sourcePaths)
    relativePath = erase(sourcePaths{file}, [projectRoot, filesep]);

    sourceText = [ ...
        sourceText, newline, relativePath, newline, ...
        fileread(sourcePaths{file}) ...
    ]; %#ok<AGROW>
end

sourceText = [ ...
    sourceText, newline, ...
    environment.acados_commit, newline, ...
    environment.casadi_version, newline, ...
    environment.compiler_name, newline, ...
    environment.matlab ...
];

% Exclude the probe timestamp: identical toolchain bytes yield the same hash.
compilerIdentity = rmfield(environment.compiler, 'checked_utc');
sourceText = [sourceText, newline, jsonencode(compilerIdentity), newline, ...
    jsonencode(environment.acados_build_toolchain)];

%% Calculate a hexadecimal SHA-256 identifier

digest = java.security.MessageDigest.getInstance('SHA-256');
digest.update(unicode2native(sourceText, 'UTF-8'));

digestBytes = typecast(digest.digest(), 'uint8');
hexadecimalBytes = dec2hex(digestBytes, 2);

fingerprint = lower(reshape(hexadecimalBytes.', 1, []));

end
