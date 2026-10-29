function results = test_controller(bundle)
%TEST_CONTROLLER Verify the MATLAB NMPC implementation in isolation.
%
%   Tests use synthetic problems, not the A6 scenario-family experiments.
%   Results and raw solver outputs are saved in the controller build folder.

config = bundle.config;
solver = bundle.solver;

initial = ecu.control.controller_initialization(config);
parameterTrajectory = initial.P;

%% Check A3 dynamics at a nonzero state, curvature and force/moment

parameters = parameterTrajectory(:, 1);

parameters(1) = 22;
parameters(3) = 0.02;
parameters(4) = 1 / 400;
parameters(5) = 0.0001;
parameters(6) = 2e-6;
parameters(7) = -1e-6;
parameters(8) = 24;
parameters(9) = 0.01;

state = [0.3; 0.04; -1; 0.2; 0.03];
input = [1000; 1500; 200];

theta = 0.06;
stationRate = 23;
lateralErrorRate = 22 * sin(theta) + 0.2 * cos(theta);

% Calculate expected values independently of vehicle_rhs.
expectedDerivative = [
    lateralErrorRate
    0.03 - (1 / 400 + 0.0001) * stationRate
    1000 / 1723 * cos(theta) - 1500 / 1723 * sin(theta) ...
        + (1 / 400) * stationRate * lateralErrorRate - 0.01 * stationRate
    1500 / 1723 - 22 * 0.03
    200 / 1960
];

actualDerivative = ecu.model.vehicle_rhs(state, input, parameters, config);

assert(norm(actualDerivative - expectedDerivative, inf) < 1e-12);

%% Check A5 feedforward independently

expectedReferenceInput = [
    1723 * (cos(0.02) * 0.01 * 24 + sin(0.02) / 400 * 24^2)
    1723 * (cos(0.02) / 400 * 24^2 - sin(0.02) * 0.01 * 24)
    1960 * ((2e-6 - 1e-6) * 24^2 + (1 / 400 + 0.0001) * 0.01 * 24)
];

actualReferenceInput = ecu.control.feedforward(parameters, config);

assert(norm(actualReferenceInput - expectedReferenceInput, inf) < 1e-10);

%% Compare symbolic state derivatives with central finite differences

import casadi.*

model = ecu.model.vehicle_model(config);

dynamicsFunction = Function( ...
    'dynamics', ...
    {model.x, model.u, model.p}, ...
    {model.f_expl_expr} ...
);

jacobianFunction = Function( ...
    'jacobian_x', ...
    {model.x, model.u, model.p}, ...
    {jacobian(model.f_expl_expr, model.x)} ...
);

finiteDifferenceJacobian = zeros(5);

for stateIndex = 1:5
    perturbation = zeros(5, 1);
    perturbation(stateIndex) = 1e-6;

    upperValue = dynamicsFunction(state + perturbation, input, parameters);
    lowerValue = dynamicsFunction(state - perturbation, input, parameters);

    finiteDifferenceJacobian(:, stateIndex) = ...
        full(upperValue - lowerValue) / (2e-6);
end

symbolicJacobian = full(jacobianFunction(state, input, parameters));

jacobianError = ...
    norm(symbolicJacobian - finiteDifferenceJacobian, inf);

assert(jacobianError < 1e-7);

%% Check obstacle-center and obstacle-boundary geometry

parameters = parameterTrajectory(:, 1);
parameters(2) = parameters(10);

centerValues = ecu.control.constraint_expressions(zeros(5, 1), parameters);
assert(abs(centerValues(4) + 1) < 1e-12);

parameters(2) = parameters(10) + parameters(13);

boundaryValues = ecu.control.constraint_expressions(zeros(5, 1), parameters);
assert(abs(boundaryValues(4)) < 1e-12);

%% Check how the stability envelope changes with friction

[lowerBounds, highFrictionBounds] = ecu.control.constraint_bounds( ...
    parameterTrajectory(:, 1), 0.9, config);

[~, lowFrictionBounds] = ecu.control.constraint_bounds( ...
    parameterTrajectory(:, 1), 0.6, config);

expectedLowFrictionBounds = highFrictionBounds(1:2) * (0.6 / 0.9);

assert(norm(lowFrictionBounds(1:2) - expectedLowFrictionBounds, inf) < 1e-12);
assert(isequal(lowerBounds(3:5), [-1.75; 0; 0]));

%% Check horizon-dependent parameter packing

warmStart = ecu.control.initial_guess( ...
    zeros(5, 1), parameterTrajectory, config);

ports = ecu.control.format_simulink_inputs( ...
    zeros(5, 1), parameterTrajectory, 0.9, warmStart, config);

assert(numel(ports.parameter_traj) == 19 * (config.N + 1));
assert(numel(ports.lh) == 5 * (config.N - 1));

unpackedParameters = reshape(ports.parameter_traj, 19, []);
assert(isequal(unpackedParameters, parameterTrajectory));

%% Check warm-start column shifting

stateTrajectory = reshape(1:(5 * (config.N + 1)), 5, []);
inputTrajectory = reshape(1:(3 * config.N), 3, []);

shifted = ecu.control.shift_warm_start(stateTrajectory, inputTrajectory);

assert(isequal(shifted.x(:, 1), stateTrajectory(:, 2)));
assert(isequal(shifted.x(:, end), stateTrajectory(:, end)));
assert(isequal(shifted.u(:, end), inputTrajectory(:, end)));

%% Solve the nominal straight-road problem

settings = struct( ...
    'cap', 200, ...
    'capture_instance', true, ...
    'reset_solver', true ...
);

nominal = ecu.control.controller_step( ...
    solver, config, zeros(5, 1), ...
    parameterTrajectory, 0.9, warmStart, settings);

assert(nominal.diagnostics.status == 0, ...
    'Nominal OCP did not converge.');

assert(norm(nominal.u_candidate, inf) < 1, ...
    'Unexpected nominal straight-road command.');

%% Solve a perturbed tracking problem and check hard input bounds

measuredState = [0.2; 0.01; 0; 0; 0];

warmStart = ecu.control.initial_guess( ...
    measuredState, parameterTrajectory, config);

perturbed = ecu.control.controller_step( ...
    solver, config, measuredState, ...
    parameterTrajectory, 0.9, warmStart, settings);

assert(perturbed.diagnostics.status == 0, ...
    'Perturbed OCP did not converge.');

assert(all( ...
    perturbed.u >= config.lbu - 1e-6 & ...
    perturbed.u <= config.ubu + 1e-6, ...
    'all' ...
));

%% Independently reconstruct the unscaled A5 objective

reconstructedCost = 0;

for column = 1:config.N
    referenceInput = ecu.control.feedforward( ...
        parameterTrajectory(:, column), config);

    trackingOutput = [
        perturbed.x(:, column)
        perturbed.u(:, column) - referenceInput
    ];

    lowerSlack = solver.get('sl', column - 1);
    upperSlack = solver.get('su', column - 1);

    stageCost = 0.5 * trackingOutput' * config.W * trackingOutput;

    slackCost = config.slack_linear * sum(lowerSlack + upperSlack) ...
        + 0.5 * config.slack_quadratic ...
        * sum(lowerSlack.^2 + upperSlack.^2);

    reconstructedCost = reconstructedCost + stageCost + slackCost;
end

terminalState = perturbed.x(:, end);

reconstructedCost = reconstructedCost ...
    + 0.5 * terminalState' * config.We * terminalState;

costError = abs(reconstructedCost - perturbed.diagnostics.cost) ...
    / max(1, abs(reconstructedCost));

assert(costError < 1e-8, ...
    'Stage cost scaling differs from A5.');

%% Verify the commanded iteration cap

settings.cap = 1;

limited = ecu.control.controller_step( ...
    solver, config, measuredState, ...
    parameterTrajectory, 0.9, warmStart, settings);

assert(limited.diagnostics.sqp_iter <= 1, ...
    'Iteration cap was not honored.');

%% Repeat the same frozen problem from a reset solver

settings.cap = 200;

repeat = ecu.control.controller_step( ...
    solver, config, measuredState, ...
    parameterTrajectory, 0.9, warmStart, settings);

repeatError = norm(repeat.u - perturbed.u, inf);

assert(repeatError < 1e-10, ...
    'Frozen problem repeat failed.');

%% Reconstruct the problem from its saved NLP initialization

captured = perturbed.instance;
solver.reset();

iterateFields = {'x', 'u', 'z', 'sl', 'su', 'lam', 'pi'};

for stage = 0:config.N
    column = stage + 1;

    solver.set('p', captured.P(:, column), stage);

    if stage < config.N
        [nodeLowerBounds, nodeUpperBounds] = ecu.control.constraint_bounds( ...
            captured.P(:, column), captured.mu, config);

        solver.set('constr_lh', nodeLowerBounds, stage);
        solver.set('constr_uh', nodeUpperBounds, stage);
    end

    for field = 1:numel(iterateFields)
        fieldName = iterateFields{field};

        % The terminal node has no input, algebraic state or dynamics dual.
        if stage == config.N && ismember(fieldName, {'u', 'z', 'pi'})
            continue;
        end

        value = captured.nlp_initialization.(fieldName){column};

        if ~isempty(value)
            solver.set(fieldName, value, stage);
        end
    end
end

solver.set('constr_x0', captured.x0);
solver.set('nlp_solver_max_iter', 200);
solver.solve();

replayError = norm(solver.get('u') - perturbed.u, inf);

assert(solver.get('status') == 0 && replayError < 1e-10);

%% Save the summary and raw problems

results = struct( ...
    'nominal_status', nominal.diagnostics.status, ...
    'perturbed_status', perturbed.diagnostics.status, ...
    'perturbed_sqp_iter', perturbed.diagnostics.sqp_iter, ...
    'limited_status', limited.diagnostics.status, ...
    'limited_sqp_iter', limited.diagnostics.sqp_iter, ...
    'cost_relative_error', costError, ...
    'jacobian_error', jacobianError, ...
    'input_repeat_error', repeatError, ...
    'captured_replay_error', replayError, ...
    'build_dir', bundle.build_dir, ...
    'scope', [ ...
        'Controller-only MATLAB validation; ' ...
        'no Simulink model or ECU timing validation.' ...
    ] ...
);

save( ...
    fullfile(bundle.build_dir, 'controller_tests.mat'), ...
    'results', 'nominal', 'perturbed', 'limited' ...
);

disp(results);

end
