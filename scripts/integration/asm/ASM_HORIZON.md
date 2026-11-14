# ASM horizon preparation

The updated horizon_prep block uses five signal ports and produces a 19x41 matrix.

| Port | Size | Contents |
|---|---|---|
| s | Scalar | Ego station and preview origin [m] |
| vx | Scalar | Measured ego body longitudinal speed [m/s] |
| horizon_prep_in | 42 elements | Current target, scalar speed look-ahead, 15 curvatures, 25 distances |
| fellow | 120 elements | 30 lateral positions, 30 stations, 30 used flags, 30 speeds [km/h] |
| Xguess | 205x1 | Shifted warm-start states |

The existing controllerConfig and instance are block parameters. The instance
supplies road bounds and safety axes only. Match its geometry to the loaded
ASM scenario. The speed target and traffic data come from ASM.

The horizon advances station using the current speed target and the warm-start
speed errors. The curvature spline pairs the first 15 distances with the
curvature samples and provides spatial derivatives at all 41 nodes. The speed
look-ahead and the final ten lateral preview distances are available for logging.

The two active fellows are selected in slot order. Their lateral positions and
forward speeds are held over the horizon. Check that those speeds agree with the
rate of the common-frame station and that both actors use the ego's station origin
and lateral baseline. Check that ego station matches the ASM preview query
origin and that the preview covers all predicted nodes.

Run test_prepare_asm_horizon for the straight and curved checks. In Simulink,
confirm compiled widths of 42, 120 and 205 and output size 19x41. Compare
column one against the current ASM ego and fellow measurements.
