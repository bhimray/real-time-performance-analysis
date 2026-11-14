# Direct ASM measurements

Keep the existing MeasurementBus with x, vx and s. Paste the wrapper from
`adapters/asm_adapter.m` into `state_conversion/ASM_adapter` and ensure the
adapter directory is on the MATLAB path. Keep the output typed as
`Bus: MeasurementBus`.

| Input | Contents |
|---|---|
| kinematicsSI (4x1) | CoG vx, CoG vy, vehicle earth yaw, CoG yaw rate |
| vehicleXY (2x1) | Vehicle earth X and Y |
| referenceSI (7x1) | Road reference earth X and Y, station s, road heading, curvature, psi_pvr, reference speed |

Keep the existing Gains of 1/3.6 for vx and vy and pi/180 for vehicle yaw
and yaw rate. Apply pi/180 to the road heading if it is in degrees.

In the ASM measurement interface, inspect `Road.Road_ASMVeh` for
`s_Total_Veh_Road`, `Angle_Yaw_Veh_Road` and
`Curv_Veh_Road`. Verify origin, sign, and reference line before using
them. The controller uses the fixed right lane center for Family 1.
Check e = 0 at that center and e = +3.75 m at the left lane center for
the same road station. Select the current projected point on the fixed
right-lane center for road XY. An active-lane reference can change
the error baseline during the lane change. Use the same station coordinate for ego,
road preview and traffic. Check the ASM road projection's vehicle
reference point against the state convention used by the controller.

For the straight Family 1 road, psi_pvr = 0. Use the ASM maneuver
reference speed in m/s. The exported XML contains
`Maneuver.ManeuverScheduler.RefSignals.v_Vehicle_Ref_Maneuver[m|s]`.
Use the scheduled target speed.

Keep the vehicle XY and road XY signals. Remove the old path, rotation
and station-history connections
from the adapter block. The road preview feeds horizon_prep separately.
The adapter returns x = [e; psi; v; vy; r], measured vx, and station s.

The adapter computes e = -sin(road heading)*(vehicle X - road X)
+ cos(road heading)*(vehicle Y - road Y).
With theta = vehicle yaw minus road heading, the adapter evaluates
psi = wrap(theta - psi_pvr) and
v = (vx*cos(theta) - vy*sin(theta))/(1 - curvature*e) - reference_speed.
It assumes the reference inputs describe the current ego sample in a
usable Frenet frame. Run `test_asm_measurement_adapter` for a MATLAB
check of the conversion.
