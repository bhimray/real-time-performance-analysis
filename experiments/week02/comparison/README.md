# Reproducibility comparison

Run compare_w2_reproducibility with the MATLAB project open. It compares F1
instance 1 in w2 and w2_2run. Outputs go to this folder's results subdirectory.
The original archives are never edited. Rerunning replaces comparison outputs.

compare_runs loads archives, verifies normalized checksums, checks settings and
archived model/controller provenance, and compares canonical signal arrays.
Timing fields are descriptive. Discrete signals require exact equality. Valid
history entries include initialization; padding is excluded using matching
history_length records. Nonfinite valid values, differing clocks, or different
array sizes fail rather than being resampled or silently skipped.

Tolerance defaults to zero. A nonzero tolerance applies only to continuous
values and requires an explicit documented reason; the governing W2 allowance
is 1e-12 for the multithreaded case. Numerical equality means identical MATLAB
numeric values, not identical MAT container bytes. The table includes maximum
absolute differences, mismatch counts, and the component/time of the largest
difference (history components refer to flattened buffer rows).

Overall PASS requires settings/provenance agreement, available numerical
agreement, full numerical coverage, and an identified build. FAIL means a
settings/provenance or available numerical mismatch. INCOMPLETE means the
compared data agree but missing numerical signals or build identification
prevent full acceptance. The generated summary separates these checks. Timing
does not affect numerical pass/fail. Absolute paths in archived provenance are
compared literally; relocated identical builds may need a separately verified
path mapping. Unknown retained solver state is not certified by this test.

To plot just one state, load the two run structures and call the independent
plot function; it never loads or saves files itself:

```matlab
a = load(fullfile(firstDirectory,"data","run.mat"),"run");
b = load(fullfile(secondDirectory,"data","run.mat"),"run");
fig = ecu.comparison.plot_signal(a.run,b.run,"vehicle.state", ...
    Component=6,Label="Longitudinal speed [m/s]");
```

State component order is e, psi, speed error, vy, gamma, vx, station. Scalar
IDs such as vehicle.lateral_error require no Component option. Each figure has
an overlay and a Run 2 minus Run 1 panel, using native matching timestamps.

## Recorded F1 comparison result

All 29 available numerical signal definitions match exactly with zero tolerance. Settings and archived model/controller provenance match. Solver status and SQP iteration records have zero mismatches, and the solver-cost difference is zero. Solver-time difference reaches 9.923 ms and is assessed separately.

Overall assessment is INCOMPLETE: 12 numerical definitions are missing and neither archive identifies the generated build. Exact agreement applies to the available records only.

Results: [comparison table](results/reproducibility_table.csv), [assessment](results/reproducibility_summary.md), [lateral-error plot](results/vehicle_lateral_error.png), [solver-cost plot](results/controller_solver_cost.png), and [solver-time plot](results/controller_solver_total_time.png). Figures show overlays and a single Run 2 minus Run 1 curve.
