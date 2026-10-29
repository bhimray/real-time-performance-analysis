function nextState = plant_rk4(plantState, appliedInput, context, stepSize)
%PLANT_RK4 Advance all seven plant states by one fixed RK4 step.
%
%   Use stepSize=0.001 s for the prescribed A6 plant.
%   The input is held constant; all state derivatives are recomputed at
%   each intermediate RK4 state. No solver or scenario state is modified.
%   context.rhs selects the derivative function, so another seven-state
%   model can reuse the integrator without editing its numerical algorithm.

validateattributes(plantState, {'double'}, ...
    {'size', [7, 1], 'real', 'finite'});

validateattributes(appliedInput, {'double'}, ...
    {'size', [3, 1], 'real', 'finite'});

validateattributes(stepSize, {'double'}, ...
    {'scalar', 'real', 'finite', 'positive'});

rhs = context.rhs;

firstSlope = rhs(plantState, appliedInput, context);

secondState = plantState + 0.5 * stepSize * firstSlope;
secondSlope = rhs(secondState, appliedInput, context);

thirdState = plantState + 0.5 * stepSize * secondSlope;
thirdSlope = rhs(thirdState, appliedInput, context);

fourthState = plantState + stepSize * thirdSlope;
fourthSlope = rhs(fourthState, appliedInput, context);

nextState = plantState + stepSize / 6 * ( ...
    firstSlope + 2 * secondSlope + 2 * thirdSlope + fourthSlope);

assert(all(isfinite(nextState)), ...
    'ecu:PlantNonfiniteState', ...
    'RK4 produced a nonfinite plant state.');

end
