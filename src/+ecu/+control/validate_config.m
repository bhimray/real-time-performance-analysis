function validate_config(config)
%VALIDATE_CONFIG Check controller dimensions and settings before a build.
%
%   The five-state, three-input, nineteen-parameter layout is fixed by A3-A5.
%   This function catches inconsistent settings before acados generates code.

%% Model and horizon dimensions

validateattributes(config.N, {'double'}, ...
    {'scalar', 'integer', '>=', 1});

validateattributes(config.Ts, {'double'}, ...
    {'scalar', 'positive', 'finite'});

assert(config.nx == 5 && config.nu == 3 && config.np == 19, ...
    'ecu:Dimensions', ...
    'A3-A5 require nx=5, nu=3, np=19.');

%% Symmetric positive-definite cost matrices

validateattributes(config.W, {'double'}, ...
    {'size', [8, 8], 'finite', 'real'});

validateattributes(config.We, {'double'}, ...
    {'size', [5, 5], 'finite', 'real'});

assert(isequal(config.W, config.W.') && all(eig(config.W) > 0));
assert(isequal(config.We, config.We.') && all(eig(config.We) > 0));

%% Input bounds

validateattributes(config.lbu, {'double'}, ...
    {'size', [3, 1], 'finite', 'real'});

validateattributes(config.ubu, {'double'}, ...
    {'size', [3, 1], 'finite', 'real'});

assert(all(config.lbu < config.ubu));

%% Solver settings and slack penalties

validateattributes(config.max_iter, {'double'}, ...
    {'scalar', 'integer', 'positive'});

validateattributes(config.cond_N, {'double'}, ...
    {'scalar', 'integer', '>=', 1, '<=', config.N});

validateattributes(config.qp_max_iter, {'double'}, ...
    {'scalar', 'integer', 'positive'});

validateattributes(config.tolerance, {'double'}, ...
    {'scalar', 'positive', 'finite'});

validateattributes(config.slack_linear, {'double'}, ...
    {'scalar', 'positive', 'finite'});

validateattributes(config.slack_quadratic, {'double'}, ...
    {'scalar', 'positive', 'finite'});

%% Physical constants

parameterNames = fieldnames(config.vehicle);

for parameter = 1:numel(parameterNames)
    value = config.vehicle.(parameterNames{parameter});

    validateattributes(value, {'double'}, ...
        {'scalar', 'positive', 'finite'});
end

end
