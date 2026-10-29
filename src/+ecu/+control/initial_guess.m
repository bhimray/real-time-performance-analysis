function warmStart = initial_guess(measuredState, parameterTrajectory, config)
%INITIAL_GUESS Construct the canonical cold start defined in Sheet A8.
%
%   State guesses repeat the current measurement at every node.
%   Input guesses use the feedforward reference at each input stage.

%% Validate trajectory dimensions

validateattributes(measuredState, {'double'}, ...
    {'size', [config.nx, 1], 'finite', 'real'});

validateattributes(parameterTrajectory, {'double'}, ...
    {'size', [config.np, config.N + 1], 'finite', 'real'});

%% State and input initial guesses

warmStart.x = repmat(measuredState, 1, config.N + 1);
warmStart.u = zeros(config.nu, config.N);

for column = 1:config.N
    warmStart.u(:, column) = ecu.control.feedforward( ...
        parameterTrajectory(:, column), config);
end

end
