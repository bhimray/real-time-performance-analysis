# Timestamped motion animation

Run experiments/week02/plots/animate_motion.m with the MATLAB project open.
Select experimentStage and runName near the top. It loads vehicle.mat,
commands_applied.mat if available (otherwise commands_candidate.mat), and the
saved metadata/request.mat. Source archives and models are not modified.

The caller prepares plant arrays and uses obstacle_states to evaluate the
prescribed scenario motion at each plant timestamp. These obstacles are
scenario-derived, not a separately measured obstacle log. A4 flags come from
evaluate_a4_constraints at the original plant/input sample times. The reusable
function under src/+ecu/+animation performs no file loading or model execution:

```matlab
fig = ecu.animation.animate_trajectory( ...
    plant,obstacles,instance.road,constraintReport, ...
    PlaybackSpeed=1,FrameRate=25);
```

plant has time_s and state (7 by samples). obstacles has matching time_s,
s/e (2 by samples), safety_semi_axes_m and collision_semi_axes_m. The function
requires aligned plant, obstacle and state-constraint clocks; preprocess any
different measured obstacle clocks explicitly before using it. Input checks
retain their separate clock and the status shows the latest recorded command
check, including its timestamp and candidate/applied identity. That annotation
does not reinterpret candidate commands as the applied inputs.

PlaybackSpeed=1 targets one simulation second per wall-clock second. Use 0.25
for slow motion or 2 for double speed. FrameRate controls display sampling;
state values are selected from actual recorded samples, not interpolated.
Graphics overhead can slow playback. This replay is not ECU execution timing.
Pause/Resume stops/continues playback; closing the figure ends the loop.

The spatial view uses global X/Y with equal axis scaling. road.bounds_m and
road.curvature_per_m come from the saved instance. road_to_global implements
the A6 constant-curvature reference with origin (0,0) and initial heading zero:
X=Xref(s)-e*sin(kappa*s), Y=Yref(s)+e*cos(kappa*s). It maps the ego, obstacle
centers, road bounds, reference line and every ellipse boundary point using
the same transform. For zero curvature X=s and Y=e. For nonzero curvature the
reference is Xref=sin(kappa*s)/kappa, Yref=(1-cos(kappa*s))/kappa. Ellipse boundaries
therefore follow the curved coordinate map; they are not left axis-aligned.
This helper covers the current A6 constant-curvature families, not arbitrary
roads with varying curvature. Use the figure zoom/pan tools for close inspection.
The ego is a point, consistent with this collision check. Road bounds apply to
the ego. Static W2 plots remain in road coordinates. Constraint and collision
calculations remain in their original road coordinates; only display changes.

Blue ego means no state flag. Amber means near an A4 boundary, red means a
state constraint is violated beyond tolerance, and magenta means physical
collision. Red crosses persist at all prior state-violation samples, including
samples skipped by the display frame rate. Magenta crosses similarly preserve
physical collision samples. The status names the current violated state
constraints and any latest command-bound violations. Near-boundary is not
called a violation. Flags use the evaluator's scaled tolerance, normally 1e-4.

The lower panel shows each obstacle safety expression h(t) on the same time
axis as playback. The horizontal boundary is h=0; negative means inside the
safety envelope. Distant positive values are clipped for boundary inspection.
This does not change the data. Physical collision uses its own smaller ellipse
and index <=1, not the safety-expression threshold. State/input flags describe
recorded motion/commands and do not establish horizon-wide KKT activity.

Markers are calculated from all saved samples, but no check can detect a
collision occurring strictly between those samples. The animation retains the
final frame for inspection and returns its figure handle. No video file is
automatically created.
