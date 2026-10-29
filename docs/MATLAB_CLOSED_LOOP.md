# MATLAB plant and closed-loop runner

## Run an A6 instance

Open the project in MATLAB R2025b. The experiment entry point is in
experiments/week02; the offline plot entry point is in scripts/plotting:
```matlab
[run, bundle] = run_matlab_closed_loop(1, 1);
plotFiles = plot_matlab_run(run.files.run_mat);

% Reuse the compiled controller for another family.
secondRun = run_matlab_closed_loop(2, 1, bundle);
```

The runner loads the corresponding 0.01 m MAT lookup once.
It does not compile a solver inside the sample loop, build an S-function,
or create/open/simulate a Simulink model.

## Inspect one interval first

```matlab
options = ecu.experiment.run_options();
options.maximum_controller_steps = 1;
options.warmup_solves = 0;

[debugRun, bundle] = run_matlab_closed_loop(1, 1, [], options);
```

This ends at a declared debug limit, not as an A6 success.
A complete run has 160 controller executions, 8000 plant steps and 8001
plant-state samples, unless it terminates or aborts earlier.

## Plant implementation

plantState = [e; psi; v; vy; gamma; vx; s].
The first five derivatives reuse vehicle_rhs with instantaneous plant vx.
The additional equations are vx_dot=Fx/m+vy*gamma and s_dot=v+vr.
All seven states are advanced together by fixed-step RK4 at 1 ms.
The command is held constant for 50 substeps of each 50 ms controller period.

create_plant_context verifies that A6 reference terms are constant and caches
them once. This avoids repeatedly scanning a dense lookup during integration.
The plant still propagates vx and station at every RK4 substage.
No clamping or new low-speed vehicle behavior is introduced.

## Controller loop and failure policy

- Initialize from the exact A6 state and canonical A8 cold start.
- Reset solver memory once per run, after discarding warm-up solves.
- Prepare parameters using the saved reference and prior shifted speed errors.
- Freeze measured vx across the controller horizon only.
- Solve with cap 200 by default.
- Apply only finite candidates satisfying hard input bounds.
- Require status 0 and the configured residual tolerances for baseline runs.
- Check actual A6 obstacle motion, collision and run-off every 1 ms.

Nonconvergence or an execution/domain error aborts and preserves the run.
No zero-input fallback, scenario tuning or controller retuning is performed.
A nonpositive measured vx is recorded as an unsupported controller domain;
A4 divides by vx and supplies no stop/low-speed rule.

For future truncation studies, allow_iteration_limit=true explicitly permits
finite, bounded status-2 candidates. Raw statuses remain unchanged.

## Results

Each call writes a unique directory under results/week02/<run-id>:
- data/<run-id>__run.mat: full run, dense plant trajectory and A7 snapshots.
- data/<run-id>__controller.csv: scalar controller-rate measurements.
- metadata/: manifest, source checksums, resolved configuration, scenario,
  fingerprint, summary and channel dictionary.
- plots/<plot-batch-id>/: later offline PNG/FIG files and their plot manifest.

The MAT includes production source snapshots so a run remains identifiable
when uncommitted source files are edited later. The CSV is a convenient
subset, not a replacement for the raw multirate MAT dataset.

run.log.u_candidate and u_applied are separate. A failing solve has no applied
command. applied_duration_s states how much integration used a selected input.
Plant input columns describe intervals between consecutive plant-state samples.

Initial prediction-error and warm-start-difference values are NaN because no
previous solve exists. Offline A7 quantities remain empty at this Week 2 stage.
res_hist omits the initial row; statistics retains the complete solver table.

Active flags use physical, unrelaxed bounds: Fx/Fy/Mz and vy/gamma/e/two ellipses
at each stage 0:N-1. Initial-state equalities are not operating active flags.
Input scales are the explicit A8 vector [9000;9000;6000]; nonlinear scales are
[1;0.5;1;1;1], matching the A8 state units and dimensionless ellipses.
A violated soft constraint with nonzero slack is not relabeled as a physical
near-bound constraint. Its slack is recorded separately.

## Timing

Default warmup_solves=200 discards the first 200 fixed-problem solves before
the experiment and resets initialization afterward.
controller_step_time includes horizon preparation, updates, snapshot capture,
solve, diagnostic extraction and warm-start shift. File writing and plant
integration are outside that time. Raw solver time_tot is recorded separately.
Power plan, process affinity, machine, compiler and library identity are recorded.
No settings are changed automatically. No ECU or certified benchmark timing
claim is made from these MATLAB diagnostic runs.

## Validation and S-function gate

test_plant checks analytic straight/force/yaw cases and RK4 refinement.
The campaign checks one interval, F1 full/repeat runs and the other families.
A terminated or aborted nominal run is evidence, not a passed safety gate.
All results are kept unchanged for diagnosing the guideline formulation.
S-function generation remains a separate later step after required closed-loop
behavior passes; this implementation does not generate an S-function.


## Reuse and extension

The components share explicit contracts:
- Plant state: seven elements [e;psi;v;vy;gamma;vx;s].
- Command: three elements [Fx;Fy;Mz].
- Controller result: predictions, candidate command, diagnostics and next_warm.
- Horizon: the A5 19-by-(N+1) parameter matrix.

The runner accepts function handles rather than embedding implementation code:
```matlab
options = ecu.experiment.run_options();

options.plant_model.create_context = @my_plant_context;
options.plant_model.advance = @my_plant_step;
options.controller_step = @my_controller_adapter;
options.prepare_horizon = @my_horizon_preparer;
```

Custom components must honor these contracts. The default A6 implementations
remain selected unless explicitly changed. Each selected function name is
recorded in the run fingerprint. Changing state/input dimensions requires
updating the declared interfaces and their logging, not an implicit resize.

The RK4 engine separately dispatches context.rhs, so another continuous-time
seven-state RHS can reuse the integrator. A3's default context caches constant
reference terms; another context factory can supply a future path/model policy.

For non-A6 experiments, require_a6_timing=false permits another explicitly
configured sample period and integer plant-step ratio. Baseline A6 runs retain
the required 50 ms / 1 ms timing. Options and the scenario are saved with each run.


## Offline plotting and traceability

The control loop never plots. plot_matlab_run accepts only a saved MAT filename:
```matlab
savedRunFile = run.files.run_mat;
artifacts = plot_matlab_run(savedRunFile);
```

It reloads the saved data, verifies its checksum when the run manifest is
present, and creates a new plot batch without overwriting the raw files.
It also works after moving the whole run directory; stored old absolute
output paths are not used to choose the offline plot destination.

Each PNG/FIG name starts with the unique run ID and ends with a plot ID:
- <run-id>__trajectory: plant station versus lateral error.
- <run-id>__plant_states: all seven states against plant time.
- <run-id>__applied_inputs: held commands against plant interval time.
- <run-id>__solver_diagnostics: iterations, raw time, active flags and slack.

plot_manifest.json records the source MAT path/checksum, source run ID,
plotting-code checksum and exact data fields for every figure.
metadata/channels.json gives state/input row order, units, time axes and CSV
column mappings. Raw plant and control time grids are kept separate.

A zero applied_duration_s means a selected command advanced no plant time.
A failing candidate is retained in u_candidate and never disguised as an
applied command. Failed runs use the same data layout and may be plotted.
