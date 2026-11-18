% Add source folders without choosing a deployment target or rebuilding.
% Select VEOS or SCALEXIO explicitly after startup. Never infer a target from
% whichever MEX happens to exist on disk.
project = currentProject();
% Configure explicit source roots; do not add the entire checkout recursively.
% Only maintained sources and model entry points belong on the session path.
% Builders own dependency paths; generated and archived trees are excluded.
root = char(project.RootFolder);
addpath(root,fullfile(root,'src'),fullfile(root,'config'),'-begin');
addpath(genpath(fullfile(root,'scripts')),'-end');
addpath(genpath(fullfile(root,'models')),'-end');
simulationFolder = fullfile(root,'integrations','aurelion','project_2','Simulation');
addpath(simulationFolder,fullfile(simulationFolder,'Models'),'-end');
addpath(fullfile(char(project.RootFolder),'scripts','build'),'-begin');
select_controller_target('NONE',Root=project.RootFolder);

% Prefer this project's controller code before preparing its parameters.
addpath(fullfile(char(project.RootFolder), 'src'), '-begin');
prepared = ecu.control.prepare_controller( ...
    Root=string(project.RootFolder), ...
    FamilyId=1, InstanceId=1, IterationCap=200);

% Shared controller parameters for blocks using the global workspace.
controllerNames = fieldnames(prepared.variables);
for k = 1:numel(controllerNames)
    assignin('base', controllerNames{k}, ...
        prepared.variables.(controllerNames{k}));
end
executionNames = fieldnames(prepared.execution);
for k = 1:numel(executionNames)
    assignin('base', executionNames{k}, ...
        prepared.execution.(executionNames{k}));
end

% Retain initialization of the standalone controller model.
initialize_controller(prepared);
fprintf('\nECU Real-Time Control Performance\n');
fprintf('Foundation ready. Begin with check_environment and docs/STATUS.md.\n');
fprintf('No controller target selected. Use select_controller_target(''VEOS'') or (''SCALEXIO'').\n');




