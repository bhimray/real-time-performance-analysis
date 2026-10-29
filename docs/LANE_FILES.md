# Saved lane and controller reference files

## Files created for Week 2

scenarios/a6/lanes_0p01m/ contains:
- F1_0001_lanes.mat and F1_0001_lanes.csv
- F2_0001_lanes.mat and F2_0001_lanes.csv
- F3_0001_lanes.mat and F3_0001_lanes.csv
- F4_0001_lanes.mat and F4_0001_lanes.csv

MAT is the primary runtime format. It preserves lane geometry, the complete
A6 scenario, vehicle parameters, controller-reference arrays and the lookup
table. CSV is a full-precision numeric companion for inspection or a separate
lookup/import workflow; it does not contain the complete traffic-motion
configuration stored in MAT.

Default exports cover stations 0 to 500 m at 0.01 m spacing.
These are lookup-grid choices, not A6 requirements. The sampler rejects any
horizon beyond the saved interval, so regenerate a longer file if required.

## Export or regenerate

```matlab
files = export_a6_lanes();

% An explicit alternative extent and grid:
station = (0:0.01:600).';
outputDirectory = fullfile(currentProject().RootFolder, ...
    'scenarios', 'a6', 'lanes_600m_0p01m');

files = export_a6_lanes(station, outputDirectory);
```

Existing matching files are preserved. Different data at the same filename
are rejected; use a new destination for changed references.

To save one chosen instance or a different global origin:
```matlab
instance = ecu.scenario.gen_instance(2, 1);
station = (0:0.01:500).';
originPose = [120; -35; pi/3];

files = ecu.scenario.save_lane_data( ...
    instance, station, outputDirectory, originPose);
```

An optional fifth argument supplies the vehicle parameters used for the
sideslip correction. The default is controller_config().vehicle.
prepare_horizon rejects a saved reference built for different vehicle values.

## Load once before starting the controller loop

```matlab
projectRoot = currentProject().RootFolder;

matFile = fullfile(projectRoot, 'scenarios', 'a6', 'lanes_0p01m', ...
    'F1_0001_lanes.mat');

laneData = ecu.scenario.load_lane_data(matFile);

instance = laneData.instance;
lanes = laneData.lanes;
config = controller_config();
```

Keep laneData in memory. Do not read MAT or CSV files inside each timed
controller step.

## Prepare the controller horizon directly from the loaded data

```matlab
time = 0;
station = instance.ego.initial_station_m;
vx = instance.ego.initial_longitudinal_speed_mps;

parameters = ecu.scenario.prepare_horizon( ...
    instance, time, station, vx, [], config, laneData);

warmStart = ecu.control.initial_guess( ...
    instance.ego.initial_state, parameters, config);
```

The seventh argument is optional. Existing six-argument calls retain the
original analytical A6 path preparation, including the previous-solution
station prediction and current obstacle-motion prediction.

For subsequent samples:
```matlab
previousSpeedErrors = warmStart.x(3, 1:config.N);

parameters = ecu.scenario.prepare_horizon( ...
    instance, time, station, vx, previousSpeedErrors, config, laneData);
```

Pass parameters to controller_step in the usual way. Current measurements,
obstacle predictions and warm starts still update every sample; saved lane
points alone are not a complete NMPC input.

## Stored signals and units

The reference contains station, global X/Y, unwrapped path heading, curvature,
reference speed and its derivative, sideslip correction and derivatives,
path-heading derivatives, and the controller's lateral bounds.

The CSV also includes physical boundary coordinates, the adjacent-lane
centerline, controller-bound curves, lane width and friction.
Column names include units. All angles are radians; all values use SI units.

Reference heading is global path heading. The sideslip correction is stored
separately; it must not be mistaken for path heading.
Physical boundaries and controller bounds remain separate.

## Interpolation

The runtime sampler returns the same signal names as path_signals.
A6 controller signals are constant along each path, so their linear
interpolation preserves the analytical controller parameters.
Interpolating sampled global X/Y approximates a circular arc between points;
reduce grid spacing if a downstream geometric projection needs more accuracy.
No extrapolation is performed.

## CSV loading

```matlab
lookupTable = readtable(files(1).csv_file, ...
    'VariableNamingRule', 'preserve');

stationGrid = lookupTable.station_m;
curvatureGrid = lookupTable.curvature_per_m;
speedGrid = lookupTable.reference_speed_mps;
```

For the provided controller, the MAT loader is recommended because it also
preserves the matching scenario and vehicle metadata.

## Verification

tests/test_lane_files.m verifies all four MAT and CSV exports, interpolation,
range checks, scenario matching and agreement with analytical A6 horizons.
The report is docs/validation/lane_file_validation.json.
No Simulink model is created or simulated.


## One-centimeter refinement

The default grid is 0:0.01:500 m: 50,001 points per family. Earlier 0.5 m files remain under scenarios/a6/archive/lanes_0p5m as a previous export. New calls to export_a6_lanes select lanes_0p01m. The controller sampling period, A6 scenario values and lane widths are unchanged. Refinement changes spatial lookup spacing only.
