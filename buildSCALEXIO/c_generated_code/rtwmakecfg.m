function makeInfo = rtwmakecfg()
%RTWMAKECFG_SCALEXIO Register the generated controller for SCALEXIO Linux.
% build_scalexio installs this as c_generated_code/rtwmakecfg.m.
% Simulink discovers that installed entry point beside the Windows MEX.
% Call the installed hook during DSRT/SIC code generation.

output = fileparts(fileparts(mfilename('fullpath')));
% Recheck at hook execution time: model callbacks may have changed the path.
select_controller_target('SCALEXIO',Root=fileparts(output),CheckOnly=true);
manifestFile = fullfile(output, 'registration_manifest.json');
assert(isfile(manifestFile), 'ecu:SCALEXIORegistration', ...
    'Registration is missing or the build failed. Run build_scalexio.');
registration = jsondecode(fileread(manifestFile));
assert(registration.schema_version == 1 && strcmp(registration.target, 'SCALEXIO_LNX64'), ...
    'ecu:SCALEXIORegistration', 'Expected a SCALEXIO_LNX64 registration manifest.');
sources = cellstr(string(registration.sources));
headers = cellstr(string(registration.headers));
destinations = cellstr(string(registration.header_destinations));
libraries = cellstr(string(registration.libraries));
assert(numel(libraries) == 3 && all(endsWith(string(libraries),'.a')) && ...
    ~any(contains(lower(string(libraries)),["buildveos","/host/","\host\"]),'all'), ...
    'ecu:SCALEXIOTargetLibraries','Only the three SCALEXIO Linux archives may be registered.');
includeDirs = cellstr(string(registration.include_dirs));
assert(all(cellfun(@isfile, [sources(:); headers(:); libraries(:)])) && ...
    all(cellfun(@isfolder, includeDirs)), 'ecu:SCALEXIORegistration', ...
    'A registered dependency is missing. Run build_scalexio.');
assert(numel(headers) == numel(destinations), 'ecu:SCALEXIORegistration', ...
    'Each header needs its package destination.');
assert(~any(contains(sources, 'sfunction')), 'ecu:SCALEXIORegistration', ...
    'Simulink owns the S-function wrapper registration.');
[~, headerNames] = cellfun(@fileparts, headers, 'UniformOutput', false);
assert(numel(unique(lower(string(headerNames)))) == numel(headers), ...
    'ecu:SCALEXIORegistration', 'Duplicate physical header basenames require review.');

%% Supply solver sources exactly once through the Simulink dependency API
makeInfo.includePath = includeDirs(:).';
makeInfo.sourcePath = unique(cellfun(@fileparts, sources, 'UniformOutput', false), 'stable').';
[~, names, extensions] = cellfun(@fileparts, sources, 'UniformOutput', false);
makeInfo.sources = strcat(names, extensions).';
% Target libraries are registered below with an explicit DSRT platform.
% This prevents Linux archives from entering Windows host simulation links.
makeInfo.linkLibsObjs = {};
assert(exist('dsrt_addfiles', 'file') ~= 0, 'ecu:SCALEXIODSRT', ...
    'The SCALEXIO hook requires the installed dSPACE DSRT interface.');

%% Register original headers and preserve their qualified include paths
% Qualified acados/utils/math.h must keep its package path so it cannot
% replace the compiler's system math.h in the flat SIC include directory.
isMath = strcmpi(headerNames, 'math');
dsrt_addfiles(headers(~isMath), 'FileType', 'HeaderFile');
for destination = reshape(unique(string(destinations), 'stable'), 1, [])
    if destination ~= ""
        dsrt_addfiles(headers(string(destinations) == destination), ...
            'Destination', char(destination));
    end
end
dsrt_addfiles(libraries, 'FileType', 'Binary', 'Platform', 'SCALEXIO_LNX64');
fprintf('[SCALEXIO] Registered %d solver sources, %d headers, and %d Linux libraries.\n', ...
    numel(sources), numel(headers), numel(libraries));
end

