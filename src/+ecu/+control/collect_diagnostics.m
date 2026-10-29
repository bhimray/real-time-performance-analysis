function diagnostics = collect_diagnostics(solver)
%COLLECT_DIAGNOSTICS Read raw solver outputs for performance analysis.
%
%   Status values are returned unchanged. In particular, a truncated solve
%   is not automatically replaced with a zero or nominal command.
%   Timing values use the fields available in pinned acados v0.5.4.

%% Termination status and iteration counts

diagnostics.status = solver.get('status');
diagnostics.converged = diagnostics.status == 0;

diagnostics.sqp_iter = solver.get('sqp_iter');
diagnostics.qp_iter = solver.get('qp_iter_all');

%% SQP history and final residuals

% The statistics and residual-history arrays include the initial iterate.
diagnostics.statistics = solver.get('stat');
diagnostics.res_hist = solver.get('res_all');
diagnostics.residuals = solver.get('residuals');

%% Solver timing and objective value

diagnostics.time_tot = solver.get('time_tot');
diagnostics.time_lin = solver.get('time_lin');

% time_qp_sol includes the QP solution/condensing work in this acados version.
diagnostics.time_qp = solver.get('time_qp_sol');
diagnostics.cost = solver.get_cost();

%% Soft-constraint slacks

numberOfIntervals = solver.ocp.solver_options.N_horizon;
numberOfSoftConstraints = 5;

diagnostics.slack_lower = zeros(numberOfSoftConstraints, numberOfIntervals);
diagnostics.slack_upper = zeros(numberOfSoftConstraints, numberOfIntervals);

% v0.5.4 exposes slacks stage by stage. The terminal stage has no slacks.
for stage = 0:(numberOfIntervals - 1)
    column = stage + 1;

    diagnostics.slack_lower(:, column) = solver.get('sl', stage);
    diagnostics.slack_upper(:, column) = solver.get('su', stage);
end

allSlacks = [
    0
    diagnostics.slack_lower(:)
    diagnostics.slack_upper(:)
];

diagnostics.slack_max = max(allSlacks);

%% Initial-state multipliers

diagnostics.lam0_raw = solver.get('lam', 0);

% For this formulation, each side of the multiplier vector contains:
%   3 input bounds, 5 initial-state bounds, 0 general constraints,
%   and 5 nonlinear constraints.
numberOfInputBounds = 3;
numberOfStateBounds = 5;
numberOfNonlinearBounds = 5;

stateEntries = 1:numberOfStateBounds;

lowerStateIndices = numberOfInputBounds + stateEntries;

upperSideOffset = numberOfInputBounds ...
    + numberOfStateBounds + numberOfNonlinearBounds;

upperStateIndices = upperSideOffset ...
    + numberOfInputBounds + stateEntries;

% A8 defines lambda0 as lambda_upper_state - lambda_lower_state.
% Its finite-difference calibration remains a Week 3 verification task.
diagnostics.lam0 = diagnostics.lam0_raw(upperStateIndices) ...
    - diagnostics.lam0_raw(lowerStateIndices);

end
