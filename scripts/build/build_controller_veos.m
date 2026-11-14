function sfunctionFile = build_controller_veos(root)
%BUILD_CONTROLLER_VEOS Compile the imported controller against buildVEOS.
% No SLX changes. Uses dSPACE Windows GCC for the Windows MATLAB MEX too.
if nargin < 1
    root = fileparts(fileparts(fileparts(mfilename('fullpath'))));
end
output = fullfile(root,'buildVEOS');
generated = fullfile(output,'c_generated_code');
install = fullfile(output,'install');
assert(isfile(fullfile(output,'toolchain_manifest.json')), ...
    'Run scripts/build/Build-VEOS.ps1 first.');
manifest = jsondecode(fileread(fullfile(output,'toolchain_manifest.json')));
assert(strcmp(manifest.target,'VEOS_WIN64_GCC'));
compilerRoot = fileparts(fileparts(manifest.compiler));
% MATLAB's MinGW detector invokes gcc without quoting its installation path.
% The vendor installs under Program Files, so use its Windows short path.
[status,shortRoot] = system(sprintf('for %%I in ("%s") do @echo %%~sI',compilerRoot));
assert(status == 0,'Cannot resolve the dSPACE compiler path.');
compilerRoot = strtrim(shortRoot);
assert(isfile(fullfile(compilerRoot,'bin','gcc.exe')));
oldCompiler = getenv('MW_MINGW64_LOC');
cleanup = onCleanup(@() setenv('MW_MINGW64_LOC',oldCompiler)); %#ok<NASGU>
setenv('MW_MINGW64_LOC',compilerRoot);
sources = cellstr(string(jsondecode(fileread(fullfile(output,'controller_sources.json')))));
sources = cellfun(@(s) fullfile(generated,s),sources,'UniformOutput',false);
include = fullfile(install,'include');
includes = {['-I' include], ['-I' fullfile(include,'blasfeo','include')], ...
    ['-I' fullfile(include,'hpipm','include')], ['-I' generated]};
libraries = fullfile(install,'lib',{'acados.lib','hpipm.lib','blasfeo.lib'});
assert(all(cellfun(@isfile,libraries)),'Windows acados static libraries are missing.');
name = 'acados_solver_sfunction_ecu_vehicle_nmpc';
mex('-f',fullfile(matlabroot,'bin','win64','mexopts','mingw64.xml'), ...
    '-O',includes{:},sources{:},libraries{:},'-outdir',generated,'-output',name);
sfunctionFile = fullfile(generated,[name '.' mexext]);
assert(isfile(sfunctionFile));
activate_controller_veos(root);
fprintf('Built Windows S-function: %s\n',sfunctionFile);
end
