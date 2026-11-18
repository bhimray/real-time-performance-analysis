# Week 2 plotting

Add scripts/plotting to the MATLAB path if the project does not already do so.
Pass a saved run MAT filename, a run directory or a data directory:

```matlab
artifacts = plot_matlab_run( ...
    "C:/Users/bxr240009/Downloads/bim/real-time-performance-analysis/results/simulink/F1_I0001_mu0p9_cap200_T8");
```

Four PNG and editable FIG files are written to plots/w2 under that run.
Rerunning plotting replaces those four files and plot_manifest.json. Raw data
is not modified. Use OutputDirectory for a separate export. Figures are shown
by default; Visible="off" exports without displaying them.

```matlab
artifacts = plot_matlab_run("C:/path/to/run.mat", ...
    ObstacleTimes=[0 1 2 4 6], OutputDirectory="C:/path/to/figures");
```

The entry function loads and checks the source, calls the adapter and the four
plot functions, and exports files. The adapter supports canonical Simulink
signals and the older MATLAB run fields. The four functions do no file loading
or exporting, so their presentation can be changed independently:

| Function in src/+ecu/+analysis | Required data |
| --- | --- |
| plot_w2_trajectory | plant.time_s, plant.state, instance, obstacle times |
| plot_w2_states_inputs | plant, inputs.time_s/values/label, lower/upper input bounds |
| plot_w2_solver | iterations, totalTime, activeCount; each has time_s and values |
| plot_w2_slack | slack.time_s and slack.values |

Trajectory is shown in road coordinates s/e. Road bounds are lateral bounds;
obstacle safety envelopes use the scenario's prescribed motion at selected
times reached by the run. These are not logged obstacle measurements. For
curved roads this is a path-coordinate view, not a global XY rendering.

The states plot contains all seven plant states and three input panels.
Applied inputs are preferred. If only candidate inputs exist, the plot and
manifest explicitly label them as candidates. Their timestamps are not shifted
or resampled to imitate applied inputs.

Solver panels show SQP count, solver total time converted from seconds to ms,
and active-constraint count. Active flags come from controller.constraints.active
when present, or legacy log.active. Counts sum flags across constraint rows,
including the prediction horizon as defined by the logger. The plotter does
not infer activity from multiplier signs, slack values or missing predictions.
The current Simulink contract does not capture active flags, so that panel is
explicitly marked unavailable until the flags are logged. No zero curve is
invented. Missing optional data is also recorded in artifacts.notes.

The slack plot uses legacy log.slack_max or the per-solve maximum of all logged
solver slack entries. Slacks have mixed constraint units and are labeled that
way. All signals retain their native clocks; no smoothing is applied. The
manifest records the source checksum, obstacle times and data limitations.
Source checksum verification accepts metadata/manifest.json or the older
metadata/run_manifest.json. Plotting does not certify logging/research readiness
or whole-controller/ECU timing.
