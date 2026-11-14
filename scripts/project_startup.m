% Restore compiled Simulink artifacts without rebuilding or editing models.
project = currentProject();
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
sfunctionDirectory = fullfile(char(project.RootFolder), 'buildVEOS', 'c_generated_code');
if ~isfile(fullfile(sfunctionDirectory, ...
        ['acados_solver_sfunction_ecu_vehicle_nmpc.' mexext]))
    sfunctionDirectory = fullfile(char(project.RootFolder), 'build', 'simulink');
end
if isfolder(sfunctionDirectory)
    addpath(sfunctionDirectory, '-begin');
end
fprintf('\nECU Real-Time Control Performance\n');
fprintf('Foundation ready. Begin with check_environment and docs/STATUS.md.\n');




