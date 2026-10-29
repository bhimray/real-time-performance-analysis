function summary = summarize_run(run)
%SUMMARIZE_RUN Describe numerical outcomes without claiming an ECU benchmark.

summary.family = run.instance.family_id;
summary.instance = run.instance.instance_id;
summary.build_id = run.build_id;
summary.final_time_s = run.plant.time_s(end);
summary.controller_solves = numel(run.log.t);
summary.plant_steps = numel(run.plant.time_s) - 1;
summary.reason = run.termination.reason;

summary.completed = run.completed;
summary.aborted = run.aborted;
summary.collision = run.termination.collision;
summary.run_off = run.termination.run_off;

summary.week2_nominal_success = run.completed ...
    && ~summary.collision && ~summary.run_off;

if isempty(run.log.sqp_iter)
    summary.sqp_iter_min = NaN;
    summary.sqp_iter_median = NaN;
    summary.sqp_iter_max = NaN;
    summary.converged_solve_fraction = NaN;
    summary.maximum_slack = NaN;
else
    summary.sqp_iter_min = min(run.log.sqp_iter);
    summary.sqp_iter_median = median(run.log.sqp_iter);
    summary.sqp_iter_max = max(run.log.sqp_iter);
    summary.converged_solve_fraction = mean(run.log.status == 0);
    summary.maximum_slack = max(run.log.slack_max);
end

summary.lateral_error_rmse_m = sqrt(mean(run.plant.state(1, :).^2));
summary.maximum_absolute_lateral_error_m = max(abs(run.plant.state(1, :)));
summary.minimum_longitudinal_speed_mps = min(run.plant.state(6, :));
summary.final_longitudinal_speed_mps = run.plant.state(6, end);

if summary.family == 4
    obstacles = ecu.scenario.obstacle_states( ...
        run.instance, summary.final_time_s);

    summary.final_lead_station_gap_m = ...
        obstacles.s(1) - run.plant.state(7, end);

    summary.speed_reduction_mps = ...
        run.plant.state(6, 1) - run.plant.state(6, end);

    % These raw measures support checking F4 braking; no new pass threshold
    % for stopping speed or gap is invented here.
end

summary.timing_scope = run.fingerprint.timing_scope;

end
