function report = validate_scalexio_sic(sicFile, options)
%VALIDATE_SCALEXIO_SIC Reject VEOS dependencies before transferring a SIC.
% Checks the packaged archive names/platform folders and the generation manifest.
% Does not extract, modify, or execute the container.
arguments
    sicFile (1,1) string
    options.BuildManifest (1,1) string
end
assert(isfile(sicFile),'ecu:SICMissing','Missing SIC: %s.',sicFile);
assert(isfile(options.BuildManifest),'ecu:SICManifestMissing', ...
    'Missing generated dependency manifest: %s.',options.BuildManifest);
manifest = lower(replace(string(fileread(options.BuildManifest)),'\','/'));
assert(~contains(manifest,'/buildveos/'), 'ecu:SICMixedTarget', ...
    'ASM used buildVEOS dependencies. The SIC must not be transferred.');
assert(contains(manifest,'/buildscalexio/c_generated_code/'), ...
    'ecu:SICSolverMissing','No SCALEXIO controller source in the generated dependency manifest.');
assert(isempty(regexp(char(manifest),'(acados|hpipm|blasfeo)\.lib','once')), ...
    'ecu:SICWindowsLibraries','Windows controller libraries entered the ASM dependency manifest.');

archive = java.util.zip.ZipFile(char(sicFile));
cleanup = onCleanup(@() archive.close());
entries = archive.entries();
names = strings(0,1);
while entries.hasMoreElements()
    entry = entries.nextElement();
    names(end+1,1) = string(char(entry.getName())); %#ok<AGROW>
end
normalized = lower(replace(names,'\','/'));
assert(~any(~cellfun(@isempty,regexp(cellstr(normalized), ...
    '(^|/)(acados|hpipm|blasfeo)\.lib$','once'))), ...
    'ecu:SICWindowsLibraries','Windows acados libraries are packaged in the SIC.');
required = "scalexio_lnx64/bin/" + ["libacados.a";"libhpipm.a";"libblasfeo.a"];
assert(all(ismember(required,normalized)), 'ecu:SICLinuxLibraries', ...
    'The SIC does not contain all three archives under SCALEXIO_LNX64/bin.');
report = struct('sic',sicFile,'target',"SCALEXIO_LNX64", ...
    'libraries',required,'validated_utc',string(datetime('now','TimeZone','UTC')));
fprintf('[SIC check] SCALEXIO sources and all three Linux archives verified.\n');
end
