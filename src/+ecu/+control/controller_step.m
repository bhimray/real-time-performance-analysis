function result = controller_step( ...
    solver, config, measuredState, parameterTrajectory, ...
    frictionCoefficient, warmStart, settings)
%CONTROLLER_STEP Execute one NMPC update and return its candidate command.
%
%   solver              : Generated AcadosOcpSolver handle.
%   config              : Configuration returned in the solver bundle.
%   measuredState       : [e; psi; v; vy; gamma] (5-by-1).
%   parameterTrajectory : A5 parameters at nodes 0:N (19-by-(N+1)).
%   frictionCoefficient : Scenario friction coefficient mu.
%   warmStart.x         : Initial state trajectory (5-by-(N+1)).
%   warmStart.u         : Initial input trajectory (3-by-N).
%   settings.cap        : Requested SQP iteration limit.
%
%   Optional settings:
%     capture_instance  : Save the initialized problem for replay (true).
%     reset_solver      : Reset internal solver memory before updating (false).
%
%   RESULT contains the candidate input, predictions, raw diagnostics and
%   shifted warm start. The caller owns command application and failure policy.

controllerTimer = tic;

%% Fill optional runtime settings

if ~isfield(settings, 'capture_instance')
    settings.capture_instance = true;
end

if ~isfield(settings, 'reset_solver')
    settings.reset_solver = false;
end

%% Validate inputs before changing solver state

validateattributes(measuredState, {'double'}, ...
    {'size', [5, 1], 'finite', 'real'});

validateattributes(parameterTrajectory, {'double'}, ...
    {'size', [config.np, config.N + 1], 'finite', 'real'});

validateattributes(settings.cap, {'double'}, ...
    {'scalar', 'integer', '>=', 1, '<=', config.max_iter});

validateattributes(warmStart.x, {'double'}, ...
    {'size', [5, config.N + 1], 'finite', 'real'});

validateattributes(warmStart.u, {'double'}, ...
    {'size', [3, config.N], 'finite', 'real'});

% A3 holds measured longitudinal velocity constant across the horizon.
assert(all(parameterTrajectory(1, :) == parameterTrajectory(1, 1)), ...
    'ecu:FrozenVx', ...
    'A3 prediction vx must be frozen over the horizon.');

%% Prepare stage-dependent nonlinear bounds

lowerBounds = zeros(5, config.N);
upperBounds = zeros(5, config.N);

for node = 1:(config.N + 1)
    [nodeLowerBounds, nodeUpperBounds] = ecu.control.constraint_bounds( ...
        parameterTrajectory(:, node), frictionCoefficient, config);

    % The terminal parameters are validated, but A5 has no terminal bounds.
    if node <= config.N
        lowerBounds(:, node) = nodeLowerBounds;
        upperBounds(:, node) = nodeUpperBounds;
    end
end

%% Update the measured initial state, parameters and bounds

updateTimer = tic;

if settings.reset_solver
    solver.reset();
end

solver.set('constr_x0', measuredState);

for stage = 0:config.N
    % acados stages start at zero; MATLAB columns start at one.
    column = stage + 1;

    solver.set('p', parameterTrajectory(:, column), stage);

    if stage < config.N
        solver.set('constr_lh', lowerBounds(:, column), stage);
        solver.set('constr_uh', upperBounds(:, column), stage);
    end
end

%% Apply the primal warm start and requested SQP cap

solver.set('init_x', warmStart.x);
solver.set('init_u', warmStart.u);
solver.set('nlp_solver_max_iter', settings.cap);

result.parameter_and_initialization_time = toc(updateTimer);

%% Optionally capture the initialized problem before solving

captureTimer = tic;

if settings.capture_instance
    result.instance = ecu.logging.capture_instance( ...
        solver, measuredState, parameterTrajectory, ...
        frictionCoefficient, config, warmStart);

    result.instance.cap = settings.cap;
else
    result.instance = [];
end

result.capture_time = toc(captureTimer);

%% Solve the OCP

solveTimer = tic;

solver.solve();

result.solve_call_time = toc(solveTimer);

%% Read the candidate solution and preserve raw diagnostics

result.diagnostics = ecu.control.collect_diagnostics(solver);

result.x = solver.get('x');
result.u = solver.get('u');
result.u_candidate = result.u(:, 1);

result.finite_solution = ...
    all(isfinite(result.x), 'all') && all(isfinite(result.u), 'all');

%% Prepare the next sample's warm start

result.next_warm = ecu.control.shift_warm_start(result.x, result.u);

% This full-step time includes validation, updates, capture and diagnostics.
result.controller_step_time = toc(controllerTimer);

end
