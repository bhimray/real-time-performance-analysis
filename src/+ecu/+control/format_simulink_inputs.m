function ports = format_simulink_inputs( ...
    measuredState, parameterTrajectory, frictionCoefficient, warmStart, config)
%FORMAT_SIMULINK_INPUTS Pack signals for the configured acados S-function.
%
%   This MATLAB helper prepares data; it does not create a Simulink model.
%   See docs/SIMULINK_GUIDE.md for port dimensions and connection guidance.
%
%   Each trajectory column represents one prediction node. Flattening with
%   (:) therefore places all entries of stage zero before stage one.

% Dimensions are compile-time constants for the baseline Simulink interface.
if coder.target('MATLAB')
    N = config.N;
    np = config.np;
else
    N = 40;
    np = 19;
    assert(config.N == N && config.np == np, ...
        'Generated S-function input layout requires N=40 and np=19.');
end
%% Validate measurements and initial guesses

validateattributes(measuredState, {'double'}, ...
    {'size', [5, 1], 'finite', 'real'});

validateattributes(parameterTrajectory, {'double'}, ...
    {'size', [np, N + 1], 'finite', 'real'});

validateattributes(warmStart.x, {'double'}, ...
    {'size', [5, N + 1], 'finite', 'real'});

validateattributes(warmStart.u, {'double'}, ...
    {'size', [3, N], 'finite', 'real'});

assert(all(parameterTrajectory(1, :) == parameterTrajectory(1, 1)), ...
    'ecu:FrozenVx', ...
    'vx must be frozen.');

%% Calculate bounds for the initial and intermediate stages

lowerBounds = zeros(5, N);
upperBounds = zeros(5, N);

for node = 1:(N + 1)
    [nodeLowerBounds, nodeUpperBounds] = ecu.control.constraint_bounds( ...
        parameterTrajectory(:, node), frictionCoefficient, config);

    if node <= N
        lowerBounds(:, node) = nodeLowerBounds;
        upperBounds(:, node) = nodeUpperBounds;
    end
end

%% Pack the named S-function inputs

ports.lbx_0 = measuredState;
ports.ubx_0 = measuredState;
ports.parameter_traj = parameterTrajectory(:);

% Stage zero has separate ports; the path ports contain stages 1 through N-1.
ports.lh_0 = lowerBounds(:, 1);
ports.uh_0 = upperBounds(:, 1);
ports.lh = reshape(lowerBounds(:, 2:end), 5 * (N - 1), 1);
ports.uh = reshape(upperBounds(:, 2:end), 5 * (N - 1), 1);

ports.x_init = warmStart.x(:);
ports.u_init = warmStart.u(:);

end

