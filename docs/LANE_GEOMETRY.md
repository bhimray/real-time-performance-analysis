# A6 lane geometry

## Generate the road

Open the MATLAB Project:
```matlab
instance = ecu.scenario.gen_instance(2, 1);
station = (0:0.01:100).';

lanes = ecu.scenario.generate_lanes(instance, station);
```

Station is distance along the ego reference path, not global X.
The example's 100 m segment and 0.01 m spacing are display/export choices,
not changes to A6 timing or its scenario distributions.
Pass any required strictly increasing station vector; negative stations are
also supported for geometry behind the reference origin.

## Output arrays

For N requested points:
- lanes.reference contains N-by-1 X_m, Y_m and heading_rad.
- lanes.boundaries contains N-by-3 X_m and Y_m arrays.
- lanes.centerlines contains N-by-2 X_m and Y_m arrays.
- lanes.controller_bounds contains N-by-2 X_m and Y_m arrays.
- Each group has names and lateral offsets for its columns.

Boundary columns:
1. Right road edge, e = -1.875 m.
2. Lane divider, e = +1.875 m.
3. Left road edge, e = +5.625 m.

Centerline columns:
1. Ego reference lane, e = 0 m.
2. Adjacent left lane, e = +3.75 m.

All A6 roads retain two physical lanes. F4's controller limits remain
[-1.75;1.75] m; its adjacent lane is not removed from the road geometry.
F1-F3 controller limits remain [-1.75;5.25] m.

## Offset equations

At each reference station, the left-pointing unit normal is
[-sin(reference_heading); cos(reference_heading)].
For lateral offset d:
- X_d = X_reference - d*sin(reference_heading).
- Y_d = Y_reference + d*cos(reference_heading).

Reference heading is the path heading, not the controller heading error
and not the sideslip-corrected desired vehicle heading.
The existing path_signals function supplies the centerline geometry.

## Change the global origin

```matlab
originPose = [120; -35; pi/3];   % [X0 m; Y0 m; heading0 rad]

lanes = ecu.scenario.generate_lanes(instance, station, originPose);
```

The default is [0;0;0]. Rotation/translation changes the coordinate frame,
not the scenario's physical lane width or curvature.

## Plot or export

```matlab
plot(lanes.boundaries.X_m, lanes.boundaries.Y_m);
axis equal;
grid on;
xlabel('Global X [m]');
ylabel('Global Y [m]');

previewFile = preview_a6_lanes();
```

The preview is saved as docs/figures/a6/lane_geometry.png.
It shows the four nominal families in global coordinates, so F2 visibly
curves. Controller bounds are red dotted curves, separate from black
physical boundaries.

The returned arrays can be saved or used as input to a later road import
workflow. Creating a native ASM road, AURELION scene or Simulink model is
a separate user-controlled step; this helper creates none of those.

## Verification

tests/test_lane_geometry.m checks lane widths, normal offsets, all six
curvatures, arbitrary origin transforms, input shape handling and the
distinction between physical boundaries and controller bounds.


## Saved controller lookups

Run export_a6_lanes to save each nominal family as MAT and CSV. Load the MAT once with ecu.scenario.load_lane_data and pass it as the optional seventh prepare_horizon argument. See docs/LANE_FILES.md for complete examples.
