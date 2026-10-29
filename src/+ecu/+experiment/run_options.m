function options = run_options()
%RUN_OPTIONS Default MATLAB experiment policy and output settings.
%
%   The baseline uses cap 200 and aborts on nonconvergence. Later iteration
%   studies may explicitly allow status 2 (iteration limit), while retaining
%   raw statuses and rejecting nonfinite commands or violated hard bounds.

projectRoot = char(currentProject().RootFolder);

%% Replaceable components with stable controller/plant data contracts

options.plant_model = struct( ...
    'name', 'A3 seven-state kinodynamic plant', ...
    'create_context', @ecu.model.create_plant_context, ...
    'advance', @ecu.model.plant_rk4 ...
);

options.controller_step = @ecu.control.controller_step;
options.prepare_horizon = @ecu.scenario.prepare_horizon;

% Future experiments can explicitly relax A6 timing, rather than silently
% modifying the baseline. State/input contracts still remain seven/three.
options.require_a6_timing = true;

%% Execution policy

options.iteration_cap = 200;
options.allow_iteration_limit = true;
options.capture_instances = true;

% A10 requires discarding the first 200 solves before reporting timing.
% Set to zero only for debug runs; the metadata records this distinction.
options.warmup_solves = 200; % 200

% Inf means the complete A6 run. A finite value is a declared debug limit.
options.maximum_controller_steps = Inf;

options.save_results = true;
options.output_root = fullfile(projectRoot, 'results', 'week02');

localFile = fullfile(projectRoot, 'config', 'local.json');

if isfile(localFile)
    local = jsondecode(fileread(localFile));

    if isfield(local, 'external_results_root') && ~isempty(local.external_results_root)
        options.output_root = fullfile(local.external_results_root, 'week02');
    end
end

end
