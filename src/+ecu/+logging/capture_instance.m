function instance = capture_instance( ...
    solver, measuredState, parameterTrajectory, ...
    frictionCoefficient, config, warmStart)
%CAPTURE_INSTANCE Save an initialized OCP as ordinary MATLAB data.
%
%   Call after setting the parameters, bounds and initial guesses, but before
%   solver.solve(). The resulting structure supports offline replay.
%
%   Both the prescribed primal warm start and the solver's NLP dual/slack
%   initialization are recorded. QP-internal memory is not serialized.

%% Problem definition and prescribed primal initialization

instance.schema_version = 1;
instance.x0 = measuredState;
instance.vx = parameterTrajectory(1, 1);
instance.s = parameterTrajectory(2, 1);
instance.P = parameterTrajectory;
instance.mu = frictionCoefficient;
instance.config = config;

instance.init_x = warmStart.x;
instance.init_u = warmStart.u;
instance.obstacles = parameterTrajectory(10:17, :);

%% Preserve the initialized NLP iterate without storing solver handles

iterate = solver.get_iterate();
fieldNames = {'x', 'u', 'z', 'sl', 'su', 'lam', 'pi'};

for field = 1:numel(fieldNames)
    fieldName = fieldNames{field};

    instance.nlp_initialization.(fieldName) = iterate.(fieldName);
end

instance.replay_scope = ...
    'NLP iterate captured; QP-internal memory is not serialized';

end
