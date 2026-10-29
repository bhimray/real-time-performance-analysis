function warmStart = shift_warm_start(predictedStates, predictedInputs)
%SHIFT_WARM_START Shift the solution by one stage as prescribed in Sheet A5.
%
%   predictedStates : State trajectory, 5-by-(N+1).
%   predictedInputs : Input trajectory, 3-by-N.
%
%   The first column is dropped and the final column is duplicated.
%   Only primal state/input trajectories are shifted by this helper.

assert(size(predictedStates, 1) == 5);
assert(size(predictedInputs, 1) == 3);
assert(size(predictedStates, 2) == size(predictedInputs, 2) + 1);

warmStart.x = [
    predictedStates(:, 2:end), predictedStates(:, end)
];

warmStart.u = [
    predictedInputs(:, 2:end), predictedInputs(:, end)
];

end
