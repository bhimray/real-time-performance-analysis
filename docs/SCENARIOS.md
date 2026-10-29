# A6 scenarios

## Generate and inspect

Open the MATLAB Project and run:
```matlab
catalog = generate_a6_scenarios();
instance = ecu.scenario.gen_instance(2, 1);
```

The default creates instance 1 of each family:
- scenarios/a6/instances/F1_0001.mat and .json
- scenarios/a6/instances/F2_0001.mat and .json
- scenarios/a6/instances/F3_0001.mat and .json
- scenarios/a6/instances/F4_0001.mat and .json

For additional instances, use generate_a6_scenarios(1:3).
All 300 IDs per family are supported. This does not run 1200 simulations.
Existing matching fixtures are preserved; edited fixtures are not overwritten.

## What each instance contains

Road curvature, lane width, road bounds, friction, constant reference speed,
five-state ego initialization, measured initial vx, station, both vehicles'
motion, safety/collision geometry, timing, random seed and every drawn value.

The MATLAB state order is [e; psi; v; vy; gamma]. A6 initializes v, vy and
gamma to zero, and reference speed to the drawn initial longitudinal speed.
Heading error is stored in radians.

## Reproducibility

Seed: 1000*familyId + instanceId, using rng(seed,'twister').
Draw order: e0, psi0, vx0, d0, alead, vt, dt, curvature.
The caller's RNG state is restored after generation.

F2 selects a discrete uniform curvature by randi(6), after the seven uniform
draws. The explicit mapping is [+1/600,-1/600,+1/400,-1/400,+1/300,-1/300].
A6 supplies the set but not its index ordering; this ordering is an
implementation convention recorded here. Other families have fixed zero
curvature and consume no curvature draw.

## Traffic motion and obstacle prediction

obstacle_states evaluates the actual A6 traffic:
- Lead cruises until t=1 s, brakes at the drawn constant acceleration and
  stays at its stopping position after speed reaches zero.
- Target remains in the left lane at constant speed.

prepare_horizon uses current obstacle speed and current active acceleration
as the A4 predictor. Before the lead starts braking, it predicts cruising.
After braking starts, it predicts braking and clips the integrated motion
at the stopping time. Do not substitute actual future traffic samples for
this predictor without declaring that changed information assumption.

## Prepare the controller inputs

```matlab
config = controller_config();
instance = ecu.scenario.gen_instance(1, 1);

time = 0;
station = instance.ego.initial_station_m;
vx = instance.ego.initial_longitudinal_speed_mps;

parameters = ecu.scenario.prepare_horizon( ...
    instance, time, station, vx, [], config);

warmStart = ecu.control.initial_guess( ...
    instance.ego.initial_state, parameters, config);
```

parameters is 19-by-41 for the baseline controller. vx is frozen across
the horizon. Friction remains a separate controller_step argument:
instance.friction_coefficient.

At later samples, pass the speed-error row of the shifted previous solution:
```matlab
previousSpeedErrors = warmStart.x(3, 1:config.N);

parameters = ecu.scenario.prepare_horizon( ...
    instance, time, station, vx, previousSpeedErrors, config);
```

The helper validates scenario/controller sample-time agreement.
A6 paths have constant curvature and reference speed; A3 path derivatives
are evaluated accordingly. Display geometry uses origin (0,0) and heading
zero at s=0, which does not alter the path-coordinate scenario.

## Stop conditions

Use ecu.scenario.check_termination(instance,time,s,e).
It records collision, run-off and duration flags independently.
Collision uses lateral/longitudinal semi-axes [0.9;2.5], not safety axes
[1.3;4.5]. Contact on the collision boundary is included.
Road departure is strictly abs(e)>6 m; duration is 8 s.
Keep terminated runs and their flags in the eventual run dataset.

## Simulink ownership

The user creates and edits all models. Suggested external signal preparation:
scenario instance -> path/obstacle predictor -> controller parameter vector.
Apply the current friction and road bounds when formatting controller ports.
Keep the mathematical plant and logging separate.

These are MATLAB preparation helpers. Compiling them inside a MATLAB Function
block would require a separate code-generation compatibility check.
No Simulink model, AURELION project or ASM setup is created here.

## Validation scope

tests/test_scenarios.m checks all 1200 instances, draw order, RNG preservation,
repeatability, braking/stopping motion, horizon preparation and stop flags.
The recorded report is docs/validation/scenario_validation.json.
Collision-free controller performance still requires the Week 2 closed loop.


## Export fingerprint

scenarios/a6/dataset_manifest.json records the current export's source hashes, fixture hashes, software and machine identity. The scenario validation report carries the same fingerprint. Unknown fields are explicit. These are scenario checks, not benchmark timings; no power or affinity settings were changed.


## Physical lanes

Use ecu.scenario.generate_lanes(instance,station) to obtain physical lane boundaries, lane centers and separate controller limits. See docs/LANE_GEOMETRY.md for dimensions and examples.
