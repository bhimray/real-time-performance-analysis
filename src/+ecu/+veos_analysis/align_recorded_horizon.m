function horizon = align_recorded_horizon(signals, dictionary)
%ALIGN_RECORDED_HORIZON Restore the stage order of the ASM N=40 recording.
% The third array dimension indexes solver updates on the recording clock.
names = dictionary.OriginalName;
paths = dictionary.OriginalPath;

% Solver telemetry is held between solves. Detect the update phase from
% execution time and validate it against the changing predictions.
time = seconds(signals.Properties.RowTimes);
solveTime = signals.solver_time_s;
solverRows = find(isfinite(solveTime));
rows = solverRows([false; diff(solveTime(solverRows)) ~= 0]);
assert(numel(rows) >= 2, 'Could not identify solver updates in solver_time_s.');
period = median(diff(time(rows)));
clockStep = median(diff(time(solverRows)));
assert(all(abs(diff(time(rows)) - period) < clockStep / 2), ...
    'Solver update times are irregular. Check the recorded controller clock.');

P = read_grid("P", "/horizon_prep", 19, 41, rows);
solverP = read_grid("solverInputs.parameter_traj", "/assemble_problem", 779, 1, rows);
assert(isequaln(P, reshape(solverP, size(P))), ...
    'Recorded P and the solver parameter input disagree at the detected updates.');

x = read_grid("x_pred", "/warm_start", 5, 41, solverRows);
u = read_grid("u_pred", "/warm_start", 3, 40, solverRows);
changed = reshape(any(any(diff(x, 1, 3) ~= 0, 1), 2), [], 1) | ...
    reshape(any(any(diff(u, 1, 3) ~= 0, 1), 2), [], 1);
assert(all(ismember(solverRows(find(changed) + 1), rows)), ...
    'Warm-start predictions changed outside the detected solver updates.');
[~, snapshot] = ismember(rows, solverRows);

% Warm start omits original stage zero and repeats the terminal sample.
% The fixed initial state is available as lbx_0. Leave missing u0 as NaN.
x0 = read_grid("solverInputs.lbx_0", "/assemble_problem", 5, 1, rows);
horizon.X = cat(2, x0, x(:, 1:40, snapshot));
horizon.U = cat(2, NaN(3, 1, numel(rows)), u(:, 1:39, snapshot));
horizon.P = P;
horizon.Time_s = time(rows);
horizon.StageTime_s = (0:40) * period;
horizon.SolverStatus = signals.solver_status(rows);
horizon.SolverCost = signals.solver_cost(rows);

flags = read_grid("fellow", "/state_conversion", 30, 1, solverRows, 60);
active = reshape(sum(flags ~= 0, 1) == 2, [], 1);
horizon.TrafficTime_s = time(solverRows);
horizon.TrafficActive = active;
horizon.ActiveAtSolve = active(snapshot);

% acados returns [five lower; five upper] slacks per stage, 0 through 39.
packedSlack = read_grid("Out1", "/telemetry_unwrapped/slack_values", 400, 1, rows);
stageSlack = reshape(packedSlack, 10, 40, []);
horizon.ObstacleSlack = stageSlack(4:5, :, :);

layout = ecu.control.parameter_layout();
obstacles = [layout.obstacle1; layout.obstacle2];
margin = NaN(2, 40, numel(rows));
for fellow = 1:2
    geometry = P(obstacles(fellow, :), 1:40, :);
    margin(fellow, :, :) = ...
        ((horizon.X(1, 1:40, :) - geometry(2, :, :)) ./ geometry(3, :, :)).^2 + ...
        ((P(layout.s, 1:40, :) - geometry(1, :, :)) ./ geometry(4, :, :)).^2 - 1;
end
% Failed solves and inactive fellows do not have a usable prediction.
valid = horizon.ActiveAtSolve & horizon.SolverStatus == 0;
margin(:, :, ~valid) = NaN;
horizon.ObstacleMargin = margin;
horizon.ObstacleSlack(:, :, ~valid) = NaN;

    function values = read_grid(base, block, nRows, nCols, sampleRows, offset)
        if nargin < 6
            offset = 0;
        end
        % Exact names select the original channels over ControlDesk aliases.
        available = find(endsWith(paths, block));
        [i, j] = ndgrid(0:nRows-1, 0:nCols-1);
        requested = base + "[" + (i(:) + offset) + "]";
        if nCols > 1
            requested = requested + "[" + j(:) + "]";
        end
        [found, positions] = ismember(requested, names(available));
        assert(all(found), 'Incomplete channel grid for %s under %s.', base, block);
        data = signals{sampleRows, cellstr(dictionary.SignalName(available(positions)))};
        assert(all(isfinite(data), 'all'), 'Missing or nonfinite samples in %s.', base);
        values = reshape(data.', nRows, nCols, []);
    end
end
