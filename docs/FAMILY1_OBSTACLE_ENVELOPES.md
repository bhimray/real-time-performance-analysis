# Family 1 obstacle envelopes

## Proposed settings

Use a fourth-power superellipse for the straight-road Family 1 test. The
semi-axis order is lateral, then longitudinal. All distances are in meters.

```matlab
config.collision_semi_axes_m = [3.0; 4.88 / (1 - (2.50 / 3.0)^4)^(1/4)];
config.safety_semi_axes_m    = [3.2; 5.38 / (1 - (2.80 / 3.2)^4)^(1/4)];
```

For an ego–fellow pair, let `deltaE` and `deltaS` be the differences between
their box-center lateral offsets and road stations.

```matlab
h = (deltaE ./ a).^4 + (deltaS ./ b).^4 - 1;
```

Here `a` is the lateral semi-axis and `b` is the longitudinal semi-axis.
Negative `h` means inside, zero means on the boundary, and positive means
outside. Count boundary contact as collision in the collision-envelope check.
The MPC safety constraint retains its lower slack, so it enforces
`hSafety + slack >= 0` with nonnegative slack.

## Geometry checks

With lateral semi-axis `a` fixed, solve `h = 0` at the target corner.
The longitudinal semi-axis is `b = deltaS / (1 - (deltaE/a)^4)^(1/4)`,
which requires `abs(deltaE) < a`. This gives approximately 5.752948 m
for collision and 6.707796 m for safety. Use the expressions in the
settings block to place the corners on the boundary to numerical precision.

The design assumes parallel vehicles with combined half-extents of
**2.50 m lateral** and **4.88 m longitudinal**. The safety envelope adds
**0.30 m lateral** and **0.50 m longitudinal** before checking the corners.

| Check | Lateral separation [m] | Longitudinal separation [m] | Margin |
|---|---:|---:|---:|
| Collision envelope at the overlap rectangle corner | 2.50 | 4.88 | 0 |
| Safety envelope at the buffered rectangle corner | 2.80 | 5.38 | 0 |
| Safety envelope at the recorded lane-center spacing | 3.625 | 0 | +0.647 |

The margin increases with either absolute separation. Placing the corner
on the boundary covers the corresponding parallel-vehicle rectangle. At
3.625 m side by side, the safety constraint can be satisfied with zero
obstacle slack. For a maneuver with yaw, verify actual overlap using both
oriented body boxes and their measured poses.

## Position references

Verify whether the ego position is already at the box center. If the
reported point is 1.56 m ahead of the box center, project the −1.56 m
offset along the road-relative heading
`state(2) + parameters(index.psi_pvr)`. On the straight road the station
and lateral corrections are the offset times cosine and sine, respectively.

The [Fellow 1 traffic object](../integrations/aurelion/project_2/Parameterization/MOD_Traffic/Pool/Environment/Objects/Vehicles/GER_Coupe_A.tro)
defines the sensor-box center at **−1.432 m** in the object's longitudinal
coordinate. Verify what point `s_Fellows_Ref` reports. Use it directly if it
reports the box center. If it reports the object origin, apply the
origin-to-box-center offset using the fellow heading. If it reports the
center of gravity, use the CG-to-box-center offset. Use each fellow's own
geometry.

## Integration and validation

The [scenario configuration](../config/scenario_config.m) stores the
rounded axes `[3.0; 5.75]` and `[3.2; 6.71]`. The constraint, collision
check, and replay currently use quadratic ellipses. The exact fourth-power
settings above are the target for this design.

1. Verify the body-center references. Load or regenerate the active Family 1
   instance and verify that the
   [scenario loader](../scripts/scenarios/load_scenario_2_model.m) puts
   the exact safety axes above into `roadFamilyData(5:6,1)`.
2. Apply the fourth-power margin to both MPC obstacle constraints in
   [constraint_expressions.m](../src/+ecu/+control/constraint_expressions.m)
   and the collision envelope in
   [check_termination.m](../src/+ecu/+scenario/check_termination.m).
   Use the same body-center convention in both.
3. Update the recorded and predicted margins and boundary drawings in the
   VEOS replay and paper plots. For drawing the boundary, use
   `s = sCenter + b*sign(cos(t)).*sqrt(abs(cos(t)))` and
   `e = eCenter + a*sign(sin(t)).*sqrt(abs(sin(t)))`.
   Keep the original geometry for historical solver recordings.
4. Regenerate the acados solver and rebuild VEOS. Verify the three margins
   in the table, then compare the recorded pass against the oriented boxes,
   safety slack, and solver status.
