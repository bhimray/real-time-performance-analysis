function ocp = ocp_nmpc_setup( ...
    config, initialState, initialParameters, frictionCoefficient, exportDirectory)
%OCP_NMPC_SETUP Construct the optimal-control problem in Sheets A4 and A5.
%
%   config              : Settings from CONTROLLER_CONFIG.
%   initialState        : Measured state [e; psi; v; vy; gamma] (5-by-1).
%   initialParameters   : Initial A5 stage-parameter vector (19-by-1).
%   frictionCoefficient : Scenario friction coefficient mu.
%   exportDirectory     : Destination for generated solver source.
%
%   This function defines the problem. BUILD_CONTROLLER generates and
%   compiles it. Runtime measurements and bounds are set by CONTROLLER_STEP.

%% Validate the configuration and initial condition

ecu.control.validate_config(config);

validateattributes(initialState, {'double'}, ...
    {'size', [config.nx, 1], 'real', 'finite'});

[lowerBounds, upperBounds] = ecu.control.constraint_bounds( ...
    initialParameters, frictionCoefficient, config);

%% Create the model and its default stage parameters

ocp = AcadosOcp();
ocp.model = ecu.model.vehicle_model(config);
ocp.parameter_values = initialParameters;

%% Stage-zero, intermediate and terminal tracking costs

ocp.cost.cost_type_0 = 'NONLINEAR_LS'; %stage-zero
ocp.cost.cost_type = 'NONLINEAR_LS'; % intermediate
ocp.cost.cost_type_e = 'NONLINEAR_LS'; % terminal

ocp.cost.W_0 = config.W;
ocp.cost.W = config.W;
ocp.cost.W_e = config.We;

% Feedforward is already subtracted in the model's cost output expression.
ocp.cost.yref_0 = zeros(8, 1);
ocp.cost.yref = zeros(8, 1);
ocp.cost.yref_e = zeros(5, 1);

%% Initial state and hard force/moment bounds

ocp.constraints.x0 = initialState;

% acados indices are zero-based: [0; 1; 2] selects Fx, Fy and Mz.
ocp.constraints.idxbu = (0:2)';
ocp.constraints.lbu = config.lbu;
ocp.constraints.ubu = config.ubu;

%% Soft stability, road and obstacle constraints

ocp.constraints.lh_0 = lowerBounds;
ocp.constraints.uh_0 = upperBounds;
ocp.constraints.lh = lowerBounds;
ocp.constraints.uh = upperBounds;

% All five nonlinear constraints are soft. idxsh selects constraint entries,
% not state-vector entries, and uses zero-based indexing.
ocp.constraints.idxsh_0 = (0:4)';
ocp.constraints.idxsh = (0:4)';

%% Linear and quadratic penalties for lower and upper slacks

numberOfSoftConstraints = 5;

linearPenalty = ...
    config.slack_linear * ones(numberOfSoftConstraints, 1);

quadraticPenalty = ...
    config.slack_quadratic * ones(numberOfSoftConstraints, 1);

ocp.cost.zl_0 = linearPenalty;
ocp.cost.zu_0 = linearPenalty;
ocp.cost.Zl_0 = quadraticPenalty;
ocp.cost.Zu_0 = quadraticPenalty;

ocp.cost.zl = linearPenalty;
ocp.cost.zu = linearPenalty;
ocp.cost.Zl = quadraticPenalty;
ocp.cost.Zu = quadraticPenalty;

%% Prediction horizon and RK4 integration

options = ocp.solver_options;

options.N_horizon = config.N;
options.tf = config.N * config.Ts;

options.integrator_type = 'ERK';
options.sim_method_num_stages = 4;
options.sim_method_num_steps = 1;

%% SQP and QP solver settings

options.nlp_solver_type = 'SQP';
options.qp_solver = 'PARTIAL_CONDENSING_HPIPM';
options.qp_solver_cond_N = config.cond_N;
options.qp_solver_iter_max = config.qp_max_iter;

options.hessian_approx = 'GAUSS_NEWTON';
options.regularize_method = 'CONVEXIFY';

options.globalization = 'FIXED_STEP';
options.globalization_fixed_step_length = 1;

options.nlp_solver_max_iter = config.max_iter;
options.nlp_solver_tol_stat = config.tolerance;
options.nlp_solver_tol_eq = config.tolerance;
options.nlp_solver_tol_ineq = config.tolerance;
options.nlp_solver_tol_comp = config.tolerance;

%% Cost scaling and generated-code settings

% A5 defines an unscaled discrete sum. Do not multiply stage costs by Ts.
options.cost_scaling = ones(config.N + 1, 1);
options.ext_fun_compile_flags = '-O2';

ocp.code_gen_opts.code_export_directory = exportDirectory;
ocp.code_gen_opts.json_file = ...
    fullfile(fileparts(exportDirectory), 'ocp.json');

% Define the future S-function interface without creating a Simulink model.
ocp.simulink_opts = ecu.control.simulink_options();

end
