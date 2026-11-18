function result = build_asm_scalexio(options)
%BUILD_ASM_SCALEXIO Initialize ASM and generate a validated SCALEXIO SIC.
% Prerequisite: run build_scalexio successfully. Hardware is not needed here.
% Open this MATLAB project first; close ASM_Traffic before calling this function.
% Each invocation gets a new folder so stale VEOS build caches cannot be reused.
arguments
    options.Root (1,1) string = string(fileparts(fileparts(fileparts(mfilename('fullpath')))))
    options.FamilyId (1,1) double {mustBeMember(options.FamilyId,[1,2])} = 1
end
root = char(java.io.File(char(options.Root)).getCanonicalPath());
model = 'ASM_Traffic';
assert(~bdIsLoaded(model),'ecu:ASMAlreadyLoaded', ...
    'Close ASM_Traffic first, saving your edits. This build initializes a fresh model session.');
assert(strcmpi(currentProject().RootFolder,root),'ecu:ASMProject', ...
    'Open the intended MATLAB project before building.');
select_controller_target('SCALEXIO',Root=root);
simulationFolder = fullfile(root,'integrations','aurelion','project_2','Simulation');
oldFolder = pwd;
folderCleanup = onCleanup(@() cd(oldFolder));
cd(simulationFolder);

%% 1. Initialize ASM and the same scenario parameters used by this project
fprintf('1/3 Initializing ASM for SCALEXIO.\n');
evalin('base','go(''simmode'',''CPT'',''platform'',''SCALEXIO'');');
assert(bdIsLoaded(model),'ecu:ASMInitialization','ASM initialization failed; inspect the GO messages.');
% ASM SimulationInit resets the MATLAB path. Restore only our source entry
% points, then select the same target again before resolving controller code.
addpath(fullfile(root,'src'),fullfile(root,'config'), ...
    fullfile(root,'scripts','build'),'-begin');
select_controller_target('SCALEXIO',Root=root);
assert(strcmpi(get_param(model,'FileName'),fullfile(simulationFolder,'Models',[model '.slx'])), ...
    'ecu:ASMWrongModel','A different ASM_Traffic model was loaded. Inspect which ASM_Traffic -all.');
scenarioLoader = fullfile(root,'scripts','scenarios','load_scenario_2_model.m');
assert(isfile(scenarioLoader),'ecu:ASMScenario','Missing scenario loader: %s.',scenarioLoader);
% RUN is evaluated in base because ASM blocks resolve their parameters there.
assignin('base','ecuScenarioLoaderFile',scenarioLoader);
loaderCleanup = onCleanup(@() evalin('base','clear ecuScenarioLoaderFile'));
evalin('base','run(ecuScenarioLoaderFile);');
evalin('base',sprintf('roadFamilyId.Value = uint8(%d);',options.FamilyId));
prepared = ecu.control.prepare_controller(Root=root,FamilyId=options.FamilyId,InstanceId=1,IterationCap=200);
groups = {prepared.variables,prepared.execution};
for group = 1:numel(groups)
    names = fieldnames(groups{group});
    for k = 1:numel(names)
        assignin('base',names{k},groups{group}.(names{k}));
    end
end

%% 2. Reject conflicting target settings before compiling
select_controller_target('SCALEXIO',Root=root,CheckOnly=true);
assert(strcmp(get_param(model,'SystemTargetFile'),'dsrt.tlc'), ...
    'ecu:ASMTarget','GO did not select dsrt.tlc.');
for property = ["CustomLibrary","SimUserLibraries"]
    value = string(get_param(model,char(property)));
    assert(isempty(regexpi(char(value),'acados|hpipm|blasfeo|buildVEOS','once')), ...
        'ecu:ASMManualLibraries', ...
        'Remove manual controller library entries from %s. The target hook owns them. Current value: %s',property,value);
end
set_param(model,'GenCodeOnly','on');
oldFileGen = Simulink.fileGenControl('getConfig');
fileGenCleanup = onCleanup(@() Simulink.fileGenControl('setConfig','config',oldFileGen));
Simulink.fileGenControl('set','CodeGenFolder','','CacheFolder','');
buildParent = fullfile(root,'build','SCALEXIO_ASM');
if ~isfolder(buildParent), mkdir(buildParent); end
runName = ['run_' char(datetime('now','Format','yyyyMMdd_HHmmss_SSS'))];
buildFolder = fullfile(buildParent,runName);
assert(~isfolder(buildFolder),'ecu:ASMBuildFolder','Build folder already exists: %s.',buildFolder);
mkdir(buildFolder);
cd(buildFolder);
fprintf('2/3 Generating SIC in %s\n',buildFolder);
diaryFile = fullfile(buildFolder,'generation.log');
diary(diaryFile);
diaryCleanup = onCleanup(@() diary('off'));
slbuild(model);

%% 3. Validate the actual package, not just the selected path
fprintf('3/3 Checking the generated SIC and controller dependencies.\n');
select_controller_target('SCALEXIO',Root=root,CheckOnly=true);
sic = fullfile(buildFolder,[model '.sic']);
manifest = fullfile(buildFolder,[model '_dsrt'],[model '_manifest.txt']);
result = validate_scalexio_sic(sic,BuildManifest=manifest);
result.build_folder = string(buildFolder);
result.family_id = options.FamilyId;
writelines(jsonencode(result,PrettyPrint=true),fullfile(buildFolder,'validated_build.json'));
fprintf('Validated SIC ready for ConfigurationDesk: %s\n',sic);
end
