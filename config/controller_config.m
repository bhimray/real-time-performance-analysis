function config = controller_config()
%CONTROLLER_CONFIG Return the baseline NMPC settings from Sheets A4 and A5.
%
%   CONFIG = CONTROLLER_CONFIG() returns the settings used to construct an
%   acados solver. Physical constants come from VEHICLE_PARAMETERS.
%
%   Change experiment settings here, rather than inside the model equations.
%   Changes to dimensions, dynamics or integration require a new solver build.

%% Model dimensions and prediction horizon

config.schema_version = 1;
config.vehicle = vehicle_parameters();

config.Ts = 0.05;       % Controller sample time [s].
config.N = 40;          % Shooting intervals: 40 * 0.05 = 2 s preview.
config.nx = 5;          % States: [e; psi; v; vy; gamma].
config.nu = 3;          % Inputs: [Fx; Fy; Mz].
config.np = 19;         % Stage parameters, ordered by parameter_layout.

%% Tracking and input weights

% Stage output order: [e; psi; v; vy; gamma; Fx; Fy; Mz].
config.W = diag([
    20                  % Lateral tracking error.
    50                  % Heading tracking error.
    2                   % Along-path speed error.
    0.1                 % Lateral velocity.
    0.1                 % Yaw rate.
    1e-6                % Longitudinal force.
    1e-6                % Lateral force.
    1e-7                % Yaw moment.
]);

% The terminal cost penalizes the five states only.
config.We = 10 * diag([20, 50, 2, 0.1, 0.1]);

%% Hard input bounds

config.lbu = [
    -9000               % Minimum Fx [N].
    -9000               % Minimum Fy [N].
    -6000               % Minimum Mz [N m].
];

config.ubu = [
    4500                % Maximum Fx [N].
    9000                % Maximum Fy [N].
    6000                % Maximum Mz [N m].
];

%% Soft-constraint penalties

% Each nonnegative slack has cost z * slack + 0.5 * Z * slack^2.
config.slack_linear = 1e3;
config.slack_quadratic = 1e3;

%% Solver limits and tolerances

config.max_iter = 200;       % Maximum SQP cap allowed after code generation.
config.tolerance = 1e-6;     % All four NLP convergence tolerances.
config.qp_max_iter = 100;    % Maximum QP iterations.
config.cond_N = 10;          % Partial-condensing horizon.

%% Generated solver identity and pinned dependency

config.model_name = 'ecu_vehicle_nmpc';
config.required_acados_tag = 'v0.5.4';
config.required_acados_commit = ...
    'd9d0ba2e8f127855119d38874af8a9570df1d8e5';

end
