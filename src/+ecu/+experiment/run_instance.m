function run = run_instance(laneData, bundle, options)
%RUN_INSTANCE Close the MATLAB NMPC loop around the seven-state A3 plant.
%
%   Load laneData and build bundle once before calling. A single solver is
%   reused for all samples and may be reset/reused for another scenario.
%
%   Returns controller-rate A7 logs, a 1 ms plant trajectory, termination
%   flags, a run summary and immutable result-file locations.
%
%   Defaults: 8 s, 50 ms controller, 1 ms plant, cap 200, no silent fallback.
%   Nonconvergence aborts the baseline and retains its failing problem.
%   A finite maximum_controller_steps is a debug run, not an A6 completion.

%% Resolve options and verify the shared experiment settings

defaults = ecu.experiment.run_options();

if nargin < 3
    options = struct();
end

providedFields = fieldnames(options);
assert(all(ismember(providedFields, fieldnames(defaults))), ...
    'ecu:RunOption', 'Unknown closed-loop option.');

names = fieldnames(defaults);

for fieldIndex = 1:numel(names)
    name = names{fieldIndex};

    if ~isfield(options, name)
        options.(name) = defaults.(name);
    end
end

instance = laneData.instance;
config = bundle.config;
solver = bundle.solver;

assert(config.Ts == instance.timing.controller_period_s);
if options.require_a6_timing
    assert(config.Ts == 0.05 && instance.timing.plant_step_s == 0.001, ...
        'ecu:A6Timing', 'A6 requires 50 ms control and 1 ms plant integration.');
end

assert(abs(instance.timing.number_of_control_samples * config.Ts ...
    - instance.timing.duration_s) < 1e-12);
assert(isequaln(laneData.vehicle, config.vehicle));

validateattributes(options.iteration_cap, {'double'}, ...
    {'scalar', 'integer', '>=', 1, '<=', config.max_iter});

validateattributes(options.warmup_solves, {'double'}, ...
    {'scalar', 'integer', 'nonnegative'});

validateattributes(options.maximum_controller_steps, {'double'}, ...
    {'scalar', 'real', 'positive'});

validateattributes(options.capture_instances, {'logical'}, {'scalar'});
validateattributes(options.allow_iteration_limit, {'logical'}, {'scalar'});
validateattributes(options.save_results, {'logical'}, {'scalar'});
validateattributes(options.require_a6_timing, {'logical'}, {'scalar'});

assert(isa(options.plant_model.create_context, 'function_handle'));
assert(isa(options.plant_model.advance, 'function_handle'));
assert(isa(options.controller_step, 'function_handle'));
assert(isa(options.prepare_horizon, 'function_handle'));

if ~isinf(options.maximum_controller_steps)
    validateattributes(options.maximum_controller_steps, {'double'}, ...
        {'scalar', 'integer', 'positive'});
end

plantStep = instance.timing.plant_step_s;
substeps = round(config.Ts / plantStep);

maximumSamples = min( ...
    instance.timing.number_of_control_samples, ...
    options.maximum_controller_steps);

context = options.plant_model.create_context(laneData, config);

%% Initialize the plant, log arrays and immutable run identity

plantState = [
    instance.ego.initial_state
    instance.ego.initial_longitudinal_speed_mps
    instance.ego.initial_station_m
];

identifier = char(java.util.UUID.randomUUID());
run.schema_version = 1;
run.id = ['F', num2str(instance.family_id), '_', ...
    sprintf('%04d', instance.instance_id), '_', identifier(1:8)];

run.instance = instance;
run.channels = ecu.logging.channel_dictionary();
run.source_snapshot = ecu.logging.capture_sources( ...
    char(currentProject().RootFolder));
run.config = config;
run.options = options;
run.reference_interval_m = laneData.reference.station_m([1, end]);
run.build_directory = bundle.build_dir;
run.build_id = bundle.build_id;

run.fingerprint = ecu.logging.run_fingerprint( ...
    bundle, plantStep, options.warmup_solves);

run.fingerprint.plant_model = options.plant_model.name;
run.fingerprint.plant_step_function = func2str(options.plant_model.advance);
run.fingerprint.controller_step_function = func2str(options.controller_step);
run.fingerprint.horizon_function = func2str(options.prepare_horizon);

run.log = ecu.logging.create_run_log(maximumSamples, config);
run.instances = [];
run.failure = struct('identifier', '', 'message', '', 'time_s', NaN);

run.plant.time_s = nan(1, maximumSamples * substeps + 1);
run.plant.state = nan(7, maximumSamples * substeps + 1);
run.plant.input = nan(3, maximumSamples * substeps);

run.plant.time_s(1) = 0;
run.plant.state(:, 1) = plantState;

plantColumns = 1;
solveCount = 0;
time = 0;

termination = ecu.scenario.check_termination( ...
    instance, time, plantState(7), plantState(1));

abortReason = '';
previousPrediction = nan(5, 1);
previousWarmStart = [];

%% Construct the first horizon and cold start

initialParameters = options.prepare_horizon( ...
    instance, 0, plantState(7), plantState(6), [], config, laneData);

warmStart = ecu.control.initial_guess( ...
    plantState(1:5), initialParameters, config);

settings = struct( ...
    'cap', options.iteration_cap, ...
    'capture_instance', false, ...
    'reset_solver', false ...
);

%% Discard warm-up solves, then reset to the same run initialization

solver.reset();

for warmupIndex = 1:options.warmup_solves
    options.controller_step( ...
        solver, config, plantState(1:5), initialParameters, ...
        instance.friction_coefficient, warmStart, settings);
end

solver.reset();
settings.capture_instance = options.capture_instances;

%% Execute one solve followed by fifty held-input RK4 steps

for sample = 1:maximumSamples
    if termination.stop || ~isempty(abortReason)
        break;
    end

    time = (sample - 1) * config.Ts;

    try
        assert(plantState(6) > 0, ...
            'ecu:NonpositiveMeasuredSpeed', ...
            'A4 has no defined nonpositive-vx controller rule.');

        if sample == 1
            previousSpeedErrors = [];
        else
            previousSpeedErrors = warmStart.x(3, 1:config.N);
        end

        controllerTimer = tic;
        horizonTimer = tic;

        parameters = options.prepare_horizon( ...
            instance, time, plantState(7), plantState(6), ...
            previousSpeedErrors, config, laneData);

        horizonPreparationTime = toc(horizonTimer);

        result = options.controller_step( ...
            solver, config, plantState(1:5), parameters, ...
            instance.friction_coefficient, warmStart, settings);

        fullControllerStepTime = toc(controllerTimer);
        result.instance_cap = options.iteration_cap;
        solveCount = solveCount + 1;

        run.log = ecu.logging.record_control_sample( ...
            run.log, solveCount, instance, time, plantState, parameters, ...
            warmStart, previousWarmStart, previousPrediction, result, config);

        run.log.horizon_preparation_time(solveCount) = horizonPreparationTime;
        run.log.controller_step_time(solveCount) = fullControllerStepTime;

        if options.capture_instances
            captured = result.instance;
            captured.family = instance.family_id;
            captured.instance = instance.instance_id;
            captured.k = sample - 1;
            captured.t = time;

            if solveCount == 1
                run.instances = captured;
            else
                run.instances(solveCount) = captured;
            end
        end

        %% Decide whether the candidate is usable under the recorded policy

        diagnostics = result.diagnostics;

        converged = diagnostics.status == 0 ...
            && all(diagnostics.residuals(:) <= config.tolerance);

        acceptedTruncation = options.allow_iteration_limit ...
            && diagnostics.status == 2;

        hardBoundsSatisfied = all( ...
            result.u_candidate >= config.lbu - config.tolerance & ...
            result.u_candidate <= config.ubu + config.tolerance);

        if ~result.finite_solution || ~hardBoundsSatisfied
            abortReason = 'invalid_solver_candidate';
        elseif ~converged && ~acceptedTruncation
            abortReason = 'solver_nonconvergence';
             printf( ...
                'status=%d; SQP iterations=%d; max residual=%.6g', ...
                diagnostics.status, diagnostics.sqp_iter, ...
                max(diagnostics.residuals(:)));
        end

        if ~isempty(abortReason)
            run.failure.identifier = abortReason;
            run.failure.message = sprintf( ...
                'status=%d; SQP iterations=%d; max residual=%.6g', ...
                diagnostics.status, diagnostics.sqp_iter, ...
                max(diagnostics.residuals(:)));

            run.failure.time_s = time;
            break;
        end

        %% Hold the accepted command through one controller interval

        appliedInput = result.u_candidate;

        run.log.u_applied(:, solveCount) = appliedInput;
        run.log.applied(solveCount) = true;

        previousWarmStart = warmStart;
        warmStart = result.next_warm;
        previousPrediction = result.x(:, 2);

        for substep = 1:substeps
            plantState = options.plant_model.advance( ...
                plantState, appliedInput, context, plantStep);

            time = (sample - 1) * config.Ts + substep * plantStep;

            plantColumns = plantColumns + 1;
            run.plant.time_s(plantColumns) = time;
            run.plant.state(:, plantColumns) = plantState;
            run.plant.input(:, plantColumns - 1) = appliedInput;

            run.log.applied_duration_s(solveCount) = ...
                substep * plantStep;

            termination = ecu.scenario.check_termination( ...
                instance, time, plantState(7), plantState(1));

            if termination.stop
                break;
            end
        end

    catch errorInfo
        % Preserve the last completed integration point and all prior solves.
        abortReason = 'execution_error';
        run.failure.identifier = errorInfo.identifier;
        run.failure.message = errorInfo.message;
        run.failure.stack = errorInfo.stack;
        run.failure.time_s = time;
        break;
    end
end

%% Trim preallocated arrays, retaining the final measured state

run.log = trim_log(run.log, solveCount);

run.plant.time_s = run.plant.time_s(1:plantColumns);
run.plant.state = run.plant.state(:, 1:plantColumns);
run.plant.input = run.plant.input(:, 1:(plantColumns - 1));

run.termination = termination;
run.aborted = ~isempty(abortReason);
run.abort_reason = abortReason;

if run.aborted
    run.termination.reason = abortReason;
elseif ~termination.stop
    run.termination.reason = 'debug_step_limit';
end

run.completed = termination.duration_reached ...
    && ~termination.collision && ~termination.run_off && ~run.aborted;
run.summary = ecu.analysis.summarize_run(run);

%% Always retain failed/terminated runs when persistence is enabled

run.output_directory = '';
run.files = struct();

if options.save_results
    run.output_directory = fullfile(options.output_root, run.id);
    run.files = ecu.logging.run_file_paths(run.output_directory, run.id);
    ecu.logging.save_run(run);
end

fprintf('F%d/%d: %s at %.3f s, %d solves, %d plant steps.\n', ...
    instance.family_id, instance.instance_id, run.termination.reason, ...
    run.plant.time_s(end), solveCount, plantColumns - 1);

end


function log = trim_log(log, numberOfSamples)
%TRIM_LOG Retain only actual controller executions, not unused capacity.

names = fieldnames(log);

for fieldIndex = 1:numel(names)
    name = names{fieldIndex};
    value = log.(name);

    if ~isempty(value)
        log.(name) = value(:, 1:numberOfSamples);
    end
end

end
