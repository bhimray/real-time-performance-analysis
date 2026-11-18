# Standalone controller preparation

Open the MATLAB project first so its source/configuration/setup paths exist.

## Prepare without models, compilation, or simulation

```matlab
prepared = ecu.control.prepare_controller(FamilyId=1, InstanceId=1, IterationCap=200);
prepared.variables.mu
```

The default scenario is the existing A6 lane fixture, not an ASM scenario.
Use ReferenceFile="absolute/path/to/compatible_lanes.mat" to select another
reference in the format validated by ecu.scenario.load_lane_data. Its vehicle,
road, friction, traffic and initial-state assumptions must match the plant.
Config=controller_config() can supply an explicitly selected configuration.

## Initialize before a manual simulation or target build

```matlab
initialize_controller(prepared);
% Or initialize execution constants in the owning top-level model as well:
initialize_controller(prepared, ExecutionModel="ASM_Traffic");
```

ExecutionModel must match the actual loaded model name and its constants must
reference executionCap, executionEnable and executionReset. This function only
sets controller workspace variables and, optionally, these execution constants.
It does not initialize ASM, replace ModelDesk initialization, select a target,
modify code-generation settings, save SLX files, or change dictionary entries.
Call it before each manual Run/Update/Generate action in the MATLAB session.
Workspace assignments are session state, not a persistent build configuration.

The six controller-local parameters are controllerConfig, instance, mu,
laneData, initialXguess and initialUguess. Full metadata is kept in prepared;
prepared.variables contains numeric structures for model parameters. Keep
structure and dimension-defining MATLAB Function parameters nontunable.
Dynamic measurements, enable/reset and runtime iteration caps belong on inputs.

## Explicit desktop solver build

```matlab
setup_controller_environment;
bundle = build_controller(prepared.config, prepared.initial);
```

For the fixed-name Simulink binary, explicitly run
build_controller_sfunction(bundle.build_dir). These are separate build actions;
neither is invoked by preparation or initialization. Desktop MEX success does
not validate VEOS/SCALEXIO code generation or target library/compiler support.

## Existing experiments

ecu.simulation.prepare_vehicle uses the same controller preparation and then
adds the kinodynamic plant context, initial state, logging and workspace bindings.
run_simulink_closed_loop retains its existing behavior. Build/run outputs are
not produced by the standalone preparation functions.
