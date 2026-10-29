function results = test_plant(laneData, config)
%TEST_PLANT Check seven-state dynamics before connecting the controller.
%
%   Uses independent analytical solutions and an RK4 convergence comparison.
%   No solver or simulator model is needed.

context = ecu.model.create_plant_context(laneData, config);
referenceSpeed = laneData.instance.reference.speed_mps;

assert(context.parameter_template(context.index.dpsi_pr) == 0, ...
    'Use a straight-road fixture for the analytic plant tests.');

initialState = [zeros(5, 1); referenceSpeed; 0];

%% Zero-input straight-line motion

finalState = integrate(initialState, zeros(3, 1), context, 0.001, 1.0);
expected = initialState;
expected(7) = referenceSpeed;

zeroInputError = norm(finalState - expected, inf);
assert(zeroInputError < 1e-10);

%% Constant longitudinal force: independent speed and station solutions

force = 1200;
duration = 0.2;

finalState = integrate( ...
    initialState, [force; 0; 0], context, 0.001, duration);

acceleration = force / config.vehicle.m;

expected = initialState;
expected(3) = acceleration * duration;
expected(6) = referenceSpeed + acceleration * duration;
expected(7) = referenceSpeed * duration + 0.5 * acceleration * duration^2;

forceError = norm(finalState - expected, inf);
assert(forceError < 1e-10);

%% Constant yaw moment gives an exactly linear yaw-rate response

moment = 400;
duration = 0.1;

finalState = integrate( ...
    initialState, [0; 0; moment], context, 0.001, duration);

yawError = abs(finalState(5) - moment / config.vehicle.Iz * duration);
assert(yawError < 1e-12);

%% Instantaneous vx and the vy*gamma term must be used by the plant

testState = [0.1; 0.02; 0; 0.3; 0.1; 27; 1];
testInput = [1000; 1800; 200];

derivative = ecu.model.plant_rhs(testState, testInput, context);

assert(abs(derivative(4) - (1800 / config.vehicle.m - 27 * 0.1)) < 1e-12);
assert(abs(derivative(6) - (1000 / config.vehicle.m + 0.3 * 0.1)) < 1e-12);
assert(derivative(7) == testState(3) + referenceSpeed);

%% RK4 refinement with nonlinear lateral/yaw motion

testState = [0.1; 0.04; 0; 0.2; 0.1; referenceSpeed; 1];
testInput = [1200; 3500; 900];

coarse = integrate(testState, testInput, context, 0.02, 0.4);
refined = integrate(testState, testInput, context, 0.01, 0.4);
reference = integrate(testState, testInput, context, 0.0005, 0.4);

coarseError = norm(coarse - reference, inf);
refinedError = norm(refined - reference, inf);

assert(refinedError < coarseError);

%% A different RHS can reuse the same RK4 engine without changing its code

customContext = context;
customContext.rhs = @constant_test_derivative;
customInitial = zeros(7, 1);

customResult = ecu.model.plant_rk4( ...
    customInitial, zeros(3, 1), customContext, 0.001);

assert(norm(customResult - (1:7)' * 0.001, inf) < 1e-15);

results = struct( ...
    'zero_input_error', zeroInputError, ...
    'constant_force_error', forceError, ...
    'constant_yaw_moment_error', yawError, ...
    'coarse_rk4_error', coarseError, ...
    'refined_rk4_error', refinedError, ...
    'instantaneous_velocity_check_passed', true ...
);

disp(results);

end


function state = integrate(state, input, context, step, duration)
%INTEGRATE Repeat the same held-input RK4 step for the specified duration.

numberOfSteps = round(duration / step);
assert(abs(numberOfSteps * step - duration) < 1e-12);

for index = 1:numberOfSteps
    state = ecu.model.plant_rk4(state, input, context, step);
end

end


function derivative = constant_test_derivative(~, ~, ~)
%CONSTANT_TEST_DERIVATIVE Verify the numerical engine dispatches context.rhs.

derivative = (1:7)';

end
