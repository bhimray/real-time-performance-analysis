function warmStart = shift_warm_start(predictedStates, predictedInputs)
%SHIFT_WARM_START Accept matrix or column-major flattened trajectories.
%#codegen
assert(mod(numel(predictedStates), 5) == 0);
assert(mod(numel(predictedInputs), 3) == 0);
% Separate variables preserve the fixed input types during code generation.
states = reshape(predictedStates, 5, []);
inputs = reshape(predictedInputs, 3, []);
assert(size(states, 2) == size(inputs, 2) + 1);
assert(size(inputs, 2) >= 1);
warmStart.x = [states(:, 2:end), states(:, end)];
warmStart.u = [inputs(:, 2:end), inputs(:, end)];
end
