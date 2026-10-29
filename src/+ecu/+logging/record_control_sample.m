function log = record_control_sample( ...
    log, column, instance, time, plantState, parameters, ...
    warmStart, previousWarmStart, previousPrediction, result, config)
%RECORD_CONTROL_SAMPLE Populate available online A7 fields for one solve.
%
%   Active flags test unrelaxed physical bounds in scaled units:
%   3 input bounds and 5 nonlinear constraints per stage, stages 0:N-1.
%   Initial-state equalities are not counted as operating active constraints.

stateScale = [1; 0.1; 5; 1; 0.5];
inputScale = [9000; 9000; 6000];
constraintScale = [1; 0.5; 1; 1; 1];
activeTolerance = 1e-4;

diagnostics = result.diagnostics;

%% Measurements, previous prediction and candidate command

log.family(column) = instance.family_id;
log.instance(column) = instance.instance_id;
log.k(column) = column - 1;
log.t(column) = time;

log.x(:, column) = plantState(1:5);
log.vx(column) = plantState(6);
log.s(column) = plantState(7);

log.x_pred_prev(:, column) = previousPrediction;
log.dx(:, column) = plantState(1:5) - previousPrediction;
log.dx_norm(column) = norm(log.dx(:, column) ./ stateScale);

log.u_candidate(:, column) = result.u_candidate;
log.cap(column) = result.instance_cap;

%% Iterations, termination status, costs and residual histories

log.sqp_iter(column) = diagnostics.sqp_iter;
log.status(column) = diagnostics.status;
log.qp_iter{column} = diagnostics.qp_iter(2:end);
log.statistics{column} = diagnostics.statistics;

% Keep the full initial row in statistics; A7 res_hist contains SQP updates.
log.res_hist{column} = diagnostics.res_hist(2:end, :);

residuals = diagnostics.residuals(:);

log.res_stat(column) = residuals(1);
log.res_eq(column) = residuals(2);
log.res_ineq(column) = residuals(3);
log.res_comp(column) = residuals(4);

log.time_tot(column) = diagnostics.time_tot;
log.time_lin(column) = diagnostics.time_lin;
log.time_qp(column) = diagnostics.time_qp;
log.cost(column) = diagnostics.cost;
log.slack_max(column) = diagnostics.slack_max;

log.controller_step_time(column) = result.controller_step_time;
log.capture_time(column) = result.capture_time;
log.solve_call_time(column) = result.solve_call_time;

log.lam0(:, column) = diagnostics.lam0;
log.x_prediction{column} = result.x;
log.u_prediction{column} = result.u;

%% Scaled difference between consecutive incoming primal warm starts

if ~isempty(previousWarmStart)
    stateDifference = (warmStart.x - previousWarmStart.x) ./ stateScale;
    inputDifference = (warmStart.u - previousWarmStart.u) ./ inputScale;

    log.znorm_prev(column) = sqrt( ...
        sum(stateDifference.^2, 'all') + sum(inputDifference.^2, 'all'));
end

%% Active physical input/state/obstacle bounds along the returned horizon

activeByStage = false(8, config.N);

for stageColumn = 1:config.N
    input = result.u(:, stageColumn);

    inputDistance = min( ...
        abs(input - config.lbu), abs(input - config.ubu)) ./ inputScale;

    constraintValues = ecu.control.constraint_expressions( ...
        result.x(:, stageColumn), parameters(:, stageColumn));

    [lowerBounds, upperBounds] = ecu.control.constraint_bounds( ...
        parameters(:, stageColumn), instance.friction_coefficient, config);

    constraintDistance = min( ...
        abs(constraintValues - lowerBounds), ...
        abs(constraintValues - upperBounds)) ./ constraintScale;

    activeByStage(:, stageColumn) = [
        inputDistance <= activeTolerance
        constraintDistance <= activeTolerance
    ];
end

log.active(:, column) = activeByStage(:);
log.obstacles{column} = ecu.scenario.obstacle_states(instance, time);

end
