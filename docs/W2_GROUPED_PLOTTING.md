# Week 2 plotting from grouped data

Open experiments/week02/plots/run_w2_plots.m and change groupsDirectory to the
desired data/groups folder. The script lists all paths explicitly and calls
w2_plots. Add the project src folder to the MATLAB path through the project.

| Input path field | File | Used by |
| --- | --- | --- |
| files.vehicle | groups/vehicle.mat | Trajectory and state panels |
| files.commands | groups/commands_applied.mat or commands_candidate.mat | Input panels |
| files.solver | groups/solver_summary.mat | SQP iterations and maximum slack |
| files.timing | groups/timing.mat | Solver total time |
| files.context | metadata/request.mat | Scenario obstacles, road bounds and input limits |
| files.active | Optional MAT group with controller.constraints.active | Active-constraint count |

The runner prefers applied commands when the file exists. It otherwise uses
the explicitly labeled candidate commands. The maximum slack is calculated
across the rows of controller.solver.slacks in solver_summary.mat, so there is
no separate slack input file. Scalar CSVs do not contain this vector.

The functions have three clear responsibilities:

1. run_w2_plots.m selects file paths and plot options.
2. load_w2_plot_groups.m loads groups and saved scenario/configuration, checks
   group names and run IDs, and prepares arrays through the existing adapter.
3. w2_plots.m calls the four existing single-purpose plotting functions and
   saves PNG/FIG files plus plot_manifest.json.

The four existing ecu.analysis.plot_w2_* functions remain unchanged. Their
arguments are data arrays/structures rather than file paths. For example:

```matlab
[data, context] = load_w2_plot_groups(files);
fig = ecu.analysis.plot_w2_slack(data.slack);
fig = ecu.analysis.plot_w2_trajectory(data.plant,context.instance,[0 2 4]);
```

Trajectory uses road coordinates and scenario-defined obstacle safety ellipses
at selected times. Scenario and input bounds are not contained in vehicle.mat;
request.mat is required. Do not substitute today's controller configuration.

The current grouped archive has no active flags. Leave files.active empty and
the panel is marked unavailable. Values are not inferred from slacks or
multipliers. For future flags supply a MAT file containing group.run_id,
group.name and a canonical group.signals entry controller.constraints.active.

By default output goes to <run>/plots/w2, or the explicit OutputDirectory.
Rerunning replaces the four plot files and the plotting manifest. Source MATs
are not edited. The manifest records paths and SHA256 for the selected inputs,
obstacle times and missing-data notes. Files from different run IDs are rejected;
keep request.mat from the same run as the selected group files.
