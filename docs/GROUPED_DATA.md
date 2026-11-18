# Grouped simulation data

After every future archived run, `data/groups` contains subject based exports.
Original `raw.mat`, normalized `run.mat` and `controller.csv` remain available.
Exporting happens after simulation, not inside controller execution.

| File stem | Contents |
| --- | --- |
| vehicle | Plant errors, velocities, yaw rate, station and full state |
| measurements | Actual controller measurements including named state components |
| commands_candidate | Proposed forces and yaw moment |
| commands_applied | Applied forces and yaw moment |
| execution | Iteration cap, enable and reset |
| solver_summary | Status, iteration count, cost, slacks and raw multipliers |
| timing | Solver total, QP, linearization and measured controller time if logged |
| solver_residuals | Stationarity, equality, inequality and complementarity |
| solver_histories | Residual and QP histories plus valid history length |
| predictions | Predicted state and input trajectories |
| replay | Incoming guesses, stage parameters and bounds |
| other | Any available signals outside these categories |

Each available group has a MAT file containing `group.signals`, preserving all
original arrays and individual clocks, and `group.scalars`, a plotting table.
Groups with scalar data also have a CSV with `time_s` as the first column.
Controller state and final residual vectors additionally receive named columns.
The state columns are e_m, psi_rad, speed_error_mps, vy_mps and gamma_radps.
Large predictions, buffers and replay arrays stay in MAT rather than sprawling
CSV files. Array values are components by samples, as in run.mat. Buffer padding
is preserved; use history_length and the solver's documented buffer ordering.

`signal_dictionary.csv` maps every available stable signal ID to its group,
units, original source, rate, component/sample counts and CSV columns.
`availability.csv` identifies expected channels that were not captured. Empty
groups do not get dummy files. No missing value is replaced with zero.
`index.json` records the source run ID and group file checksums.

The grouping does not filter, resample, smooth or change physical units. Plant
and controller clocks remain separate. The existing final-stop-time convention
comes from normalized run.mat. A successful export does not override failed
logging validation. The export refuses an existing destination to avoid mixing
files; the runner clears its owned outputs on an identical-settings rerun.

## Plot a vehicle quantity

```matlab
folder = fullfile(result.directory,"data","groups");
vehicle = readtable(fullfile(folder,"vehicle.csv"));
plot(vehicle.time_s,vehicle.lateral_error)
xlabel('Time [s]'); ylabel('Lateral error [m]'); grid on
```

## Plot solver time in milliseconds

```matlab
timing = readtable(fullfile(folder,"timing.csv"));
plot(timing.time_s,1000*timing.solver_total_time)
xlabel('Time [s]'); ylabel('Solver time [ms]'); grid on
```

## Inspect arrays and available signals

```matlab
dictionary = readtable(fullfile(folder,"signal_dictionary.csv"));
disp(dictionary)
saved = load(fullfile(folder,"predictions.mat"),"group");
disp(string({saved.group.signals.id}))
```

To export an older normalized archive without simulation, choose a fresh folder:

```matlab
saved = load(fullfile(runDirectory,"data","run.mat"),"run");
ecu.simulation.export_groups(saved.run, ...
    fullfile(runDirectory,"analysis","grouped_export_01"));
```

The dictionary's MAT paths are relative to the normal `data` directory. When
using a custom destination, locate each group by its basename in that destination.
No model logging is enabled by this exporter; missing capture must be fixed
separately. Changes apply on subsequent invocations of the runner.
