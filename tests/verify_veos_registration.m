function verify_veos_registration(root)
% Integration check using a new controller-only diagram; never opens ASM.
if nargin < 1
    root = fileparts(fileparts(mfilename('fullpath')));
end
out = fullfile(root,'buildVEOS');
folder = fullfile(out,'verification');
if ~isfolder(folder), mkdir(folder); end
name = 'veos_controller_dependency_check';
assert(~bdIsLoaded(name),'Verification diagram is already open.');
oldFolder = pwd;
oldFileConfig = Simulink.fileGenControl('getConfig');
cleanup = onCleanup(@() restore(name,oldFolder,oldFileConfig)); %#ok<NASGU>
cd(folder);
Simulink.fileGenControl('set','CacheFolder',folder,'CodeGenFolder',folder,'createDir',true);
addpath(fullfile(out,'c_generated_code'),'-begin');
new_system(name);
add_block('simulink/User-Defined Functions/S-Function',[name '/Controller'], ...
    'FunctionName','acados_solver_sfunction_ecu_vehicle_nmpc');
ports = get_param([name '/Controller'],'PortHandles');
assert(numel(ports.Inport)>0 && numel(ports.Outport)>0);
for k = 1:numel(ports.Inport)
    block = sprintf('%s/Ground%d',name,k);
    add_block('simulink/Sources/Ground',block);
    add_line(name,sprintf('Ground%d/1',k),sprintf('Controller/%d',k));
end
add_block('simulink/Sinks/Out1',[name '/Command']);
add_line(name,'Controller/1','Command/1');
for k = 2:numel(ports.Outport)
    add_block('simulink/Sinks/Terminator',sprintf('%s/Unused%d',name,k));
    add_line(name,sprintf('Controller/%d',k),sprintf('Unused%d/1',k));
end
% Configure only this newly created verification model, not ASM_Traffic.
config = getActiveConfigSet(name);
config.switchTarget('dsrt.tlc',[]);
set_param(name,'DSTargetArchitecture','32-bit', ...
    'SolverType','Fixed-step','Solver','FixedStepDiscrete','FixedStep','0.05', ...
    'StopTime','0.1','TargetLangStandard','C99 (ISO)');
save_system(name,fullfile(folder,[name '.slx']));
slbuild(name);
sic = fullfile(folder,[name '.sic']);
assert(isfile(sic),'DSRT did not generate the verification SIC.');
payload = fullfile(folder,'sic_contents');
unzip(sic,payload);
files = dir(fullfile(payload,'**','*'));
files = files(~[files.isdir]);
names = {files.name};
r = jsondecode(fileread(fullfile(out,'registration_manifest.json')));
required = [cellstr(string(r.sources));cellstr(string(r.libraries))];
for k = 1:numel(required)
    [~,base,ext] = fileparts(required{k});
    assert(any(strcmp(names,[base ext])), ...
        'Required dependency is absent from SIC: %s',required{k});
end
assert(isfile(fullfile(payload,'otherFiles','acados_c','ocp_nlp_interface.h')) ...
    || any(endsWith(string({files.folder}),fullfile('otherFiles','acados_c'))), ...
    'Qualified acados header tree was not preserved.');
fprintf('REGISTRATION VERIFIED: %d controller sources and 3 Windows libraries in %s\n', ...
    numel(r.sources),sic);
end

function restore(name,folder,fileConfig)
if bdIsLoaded(name), close_system(name,0); end
cd(folder);
Simulink.fileGenControl('setConfig','config',fileConfig);
end
