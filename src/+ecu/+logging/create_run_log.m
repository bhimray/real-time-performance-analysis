function log = create_run_log(maximumSamples, config)
%CREATE_RUN_LOG Allocate controller-rate fields corresponding to Sheet A7.
%
%   Columns are control samples. Unavailable first-sample prediction errors
%   use NaN; offline-only Week 3 quantities remain empty.

log.family = nan(1, maximumSamples);
log.instance = nan(1, maximumSamples);
log.k = nan(1, maximumSamples);
log.t = nan(1, maximumSamples);

log.x = nan(5, maximumSamples);
log.vx = nan(1, maximumSamples);
log.s = nan(1, maximumSamples);
log.x_pred_prev = nan(5, maximumSamples);
log.dx = nan(5, maximumSamples);
log.dx_norm = nan(1, maximumSamples);

log.u_candidate = nan(3, maximumSamples);
log.u_applied = nan(3, maximumSamples);
log.applied = false(1, maximumSamples);
log.applied_duration_s = zeros(1, maximumSamples);

log.member = ones(1, maximumSamples);
log.cap = nan(1, maximumSamples);
log.sqp_iter = nan(1, maximumSamples);
log.status = nan(1, maximumSamples);
log.qp_iter = cell(1, maximumSamples);
log.res_hist = cell(1, maximumSamples);
log.statistics = cell(1, maximumSamples);

scalarFields = {
    'time_tot', 'time_lin', 'time_qp', 'cost', ...
    'res_stat', 'res_eq', 'res_ineq', 'res_comp', 'slack_max', ...
    'znorm_prev', 'controller_step_time', 'horizon_preparation_time', ...
    'capture_time', 'solve_call_time'
};

for fieldIndex = 1:numel(scalarFields)
    log.(scalarFields{fieldIndex}) = nan(1, maximumSamples);
end

log.lam0 = nan(5, maximumSamples);
log.active = false(8 * config.N, maximumSamples);
log.obstacles = cell(1, maximumSamples);

% Full trajectories/histories remain in MAT, not the scalar CSV.
log.x_prediction = cell(1, maximumSamples);
log.u_prediction = cell(1, maximumSamples);

log.znorm_opt = [];
log.K0 = [];
log.e_stale = [];
log.kappa_input = [];
log.kappa_delay = [];

end
