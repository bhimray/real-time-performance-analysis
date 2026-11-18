# Recorded A4 constraint analysis

The plots now include constraints.png and constraints.fig with eight constraint
panels and one count panel. Existing solver plots show recorded near-boundary
counts when logged horizon flags are unavailable, and label that distinction.

## Data flow

run_w2_plots selects files. load_w2_plot_groups loads vehicle, command and saved
scenario/configuration data. It calls evaluate_a4_constraints with plant,
inputs, instance and config. w2_plots passes the resulting report to
plot_w2_constraints and saves its arrays/tables. The original archives and
simulation are unchanged.

## Evaluator from top to bottom

1. Arguments define the four data structures and default scaled tolerance 1e-4.
2. Plant dimensions, finite values and ordered timestamps are checked.
3. obstacle_states computes both scenario obstacles at those exact timestamps.
4. For each plant sample a 19-entry parameter vector is filled with current vx,
   station, obstacle centers/axes and road bounds. Only entries consumed by A4
   evaluation are needed. Existing constraint_expressions and constraint_bounds
   compute vy, gamma, road e and the two safety-ellipse expressions. This
   deliberately reuses the project's formulas instead of a second definition.
5. classify computes distance to the nearest bound and a signed feasible margin.
   Both are divided by the same quantity scales used in record_control_sample.
6. The three recorded command components are checked against config.lbu/ubu on
   their own clock. The report records whether they are applied or candidate
   commands. Missing inputs are not replaced with zero data.
7. For combined counts, each command timestamp must match a recorded plant
   timestamp within 1e-9 seconds. No interpolation or previous-value assumption
   is introduced. State and command flags are summed into separate counts and
   totals, each with a maximum of eight groups.
8. summary reports sample counts, near-boundary samples, violation samples and
   minimum signed scaled margin per group on its own clock. State sampling is
   normally 1 ms; command sampling 50 ms, so raw sample totals are not comparable
   durations or percentages of a shared sample set.

## Constraint definitions

| Group | Quantity and bounds |
| --- | --- |
| Fx, Fy, Mz | Saved hard input lower and upper bounds |
| vy | Absolute value <= 0.02 mu g vx |
| gamma | Absolute value <= 0.85 mu g / vx |
| road_e | Saved lower/upper lateral road bounds |
| obstacle_1, obstacle_2 | h = ((e-eo)/a)^2 + ((s-so)/b)^2 - 1 >= 0 |

These checks use current recorded vx. Horizon bounds instead use the speed
frozen at the corresponding solve, so this report is not a horizon replay.
Obstacle safety semi-axes are taken from the saved scenario, normally lateral
1.3 m and longitudinal 4.5 m. Physical collision uses different axes and is a
separate check. Numerical obstacle upper infinity is ignored as a physical bound.

Scaled distance is min(abs(value-lower),abs(upper-value))/scale.
Signed margin is min(value-lower,upper-value)/scale.
Near-boundary means distance <= tolerance. Violated means margin < -tolerance.
Thus small numerical crossings within tolerance are classified near-boundary;
clear violations are counted separately, not described as active constraints.
Use report.state.scaled_margin and report.input.scaled_margin for signed results.

Scales are [9000,9000,6000] for inputs and [1,0.5,1,1,1] for state/obstacle
groups. With tolerance 1e-4, the bands are 0.9 N, 0.9 N, 0.6 N m, 1e-4 m/s,
5e-5 rad/s, 1e-4 m, and 1e-4 for each dimensionless ellipse expression.

## Plot and saved outputs

plot_w2_constraints creates a 3 by 3 layout. Blue is the recorded quantity,
black dashed lines are its bounds, orange dots are near-boundary samples, and
red dots are beyond-tolerance violations. Obstacle panels default to a boundary
zoom that clips distant feasible values to expose small negative h. Call
plot_w2_constraints(report,ZoomObstacles=false) for their full range. No arrays
are changed by the zoom. The last panel shows total counts on the synchronized
command clock and a separate state-violation count at plant ticks to expose
events between controller ticks. The title identifies candidate/applied inputs.

constraints.mat contains constraintReport with full state/input clocks, values,
bounds, signed scaled margins and flags. constraint_summary.csv has eight rows.
constraint_counts.csv contains synchronized state/input/total counts over time.
All are written under the selected plotting output folder.

## Interpretation

One group is counted once even if it has two bounds. The five state groups and
three input groups give a maximum count of eight at each instant. This differs
from the legacy log.active count over N horizon stages (up to 8*N entries).
Entering a safety ellipse is a realized safety-envelope violation, not proof
of physical collision. Soft constraints may be relaxed in the optimizer; this
analysis evaluates the unrelaxed physical bounds rather than the slack-adjusted
optimization inequalities. It does not establish KKT activity or multiplier
binding. Candidate inputs cannot establish the actual applied-input violation.
