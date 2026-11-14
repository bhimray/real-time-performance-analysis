function prepared = initialize_controller(prepared, options)
%INITIALIZE_CONTROLLER Apply prepared parameters for manual runs or builds.
% Initializes model workspaces in memory; does not save, compile or simulate.
% Initialize the execution-signal owner explicitly with ExecutionModel.
arguments
    prepared (1,1) struct = struct()
    options.Model (1,1) string = "nmpc_controller"
    options.ExecutionModel (1,1) string = ""
end
if isempty(fieldnames(prepared))
    prepared = ecu.control.prepare_controller();
end
assert(isfield(prepared,'schema_version') && prepared.schema_version == 1 ...
    && isfield(prepared,'variables') && isfield(prepared,'execution'), ...
    'ecu:ControllerPreparation', 'Use ecu.control.prepare_controller first.');
names = {'controllerConfig','instance','mu','laneData', ...
    'initialXguess','initialUguess'};
assert(all(isfield(prepared.variables,names)), ...
    'ecu:ControllerPreparation', 'Prepared controller variables are incomplete.');
% Load all requested models before modifying any workspace.
load_system(options.Model);
if strlength(options.ExecutionModel) > 0
    load_system(options.ExecutionModel);
end
workspace = get_param(options.Model,'ModelWorkspace');
for k = 1:numel(names)
    assignin(workspace,names{k},prepared.variables.(names{k}));
end
if strlength(options.ExecutionModel) > 0
    workspace = get_param(options.ExecutionModel,'ModelWorkspace');
    names = fieldnames(prepared.execution);
    for k = 1:numel(names)
        assignin(workspace,names{k},prepared.execution.(names{k}));
    end
end
fprintf('Controller parameters initialized in %s (no build or simulation).\n', ...
    options.Model);
end
