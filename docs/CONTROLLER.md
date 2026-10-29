# Week 2 NMPC controller

This controller implements A3-A5. Its mathematical model differs from the older SDV project: five tracking states and three force/moment inputs, with no actuator-rate augmentation.

## Start
Open the MATLAB project, then run:
```matlab
report = setup_controller_environment();
results = validate_controller();
```
For interactive development:
```matlab
cfg = controller_config();
initial = ecu.control.controller_initialization(cfg);
bundle = build_controller(cfg,initial);
warm = ecu.control.initial_guess(initial.x0,initial.P,bundle.config);
settings = struct('cap',200,'capture_instance',true,'reset_solver',true);
result = ecu.control.controller_step(bundle.solver,bundle.config, ...
    initial.x0,initial.P,initial.mu,warm,settings);
```
The codegen initialization is a synthetic isolated test, not an A6 family instance.
For consecutive online samples set reset_solver=false and use result.next_warm.
The caller owns whether and how to apply returned candidates after truncation/failure.

## Modules
- config/vehicle_parameters.m: A3 physical constants.
- config/controller_config.m: A4-A5 bounds, weights and solver settings.
- +model/vehicle_rhs.m: equations, usable numerically or symbolically.
- +model/vehicle_model.m: AcadosModel adapter.
- +control/feedforward.m: A5 input references.
- +control/parameter_layout.m and pack_parameters.m: 19-parameter contract.
- +control/constraint_expressions.m and constraint_bounds.m: A4 expressions and limits.
- +control/ocp_nmpc_setup.m: formulation without compiling.
- +control/controller_step.m: stage updates, initialization, cap, solve and diagnostics.
- +logging/capture_instance.m: complete stage parameters and NLP initialization.
- scripts/build/build_controller.m: uniquely named generated solver, build manifest and source/configuration hash.
- tests/test_controller.m: independent numerical, geometric and optimization checks.

## Guideline decisions
A3.3 uses edot, not e. Prediction vx is frozen.
A4 friction is passed to constraint_bounds and never inserted as an extra stage parameter.
State, road and obstacle constraints are soft at stages 0 through N-1.
A5 specifies no terminal constraint; terminal cost remains We.
Feedforward is subtracted inside the least-squares output; zero yref is algebraically equivalent to A5.
Stage costs have scaling one. Independent cost-sum verification includes linear and quadratic slack penalties.
A4 has no defined low-speed handling: vx<=0 is rejected rather than silently clamped.
A8's fixed Uscale discrepancy and W3's changed-grid cost test remain open questions.

## Build and runtime separation
Changes to dimensions, dynamics, constraint structure, integration or target toolchain require a new build.
State, horizon parameters, bounds, initial guesses and cap are runtime updates.
Builds use short, uniquely named MEX modules and fingerprinted directories. On Windows the default cache is %LOCALAPPDATA%/ECUControl/build/desktop to avoid compiler path-length limits. Override external_build_root in config/local.json. The project keeps build/latest_controller.json as the pointer to the latest successful build.
No upstream acados source is modified. A local renderer shim addresses the Windows glob/quoting issue also handled in SDV.
The pinned source and library commit are verified before building.

## Measurements and replay
Raw statuses are preserved; nonzero does not automatically replace the candidate input with zero.
Diagnostics retain SQP statistics, residual histories, QP iterations, timing, slacks and raw initial-state multipliers.
controller_step_time includes validation, updates, capture, solve, diagnostics and warm-start shift.
solve_call_time and solver time_tot are separate. capture_time records snapshot overhead.
Captured NLP initialization includes primal, dual and slack values. QP-internal memory is not serialized.
Controller tests use explicit resets for comparisons. Week 3's full experiment runner and calibration are not implemented.

## Simulink
See SIMULINK_GUIDE.md. User creates/edits all Simulink models.
No SLX model is opened, created, modified or simulated by controller validation.
Optional build_controller_sfunction compiles only the S-function with automatic block generation disabled.

## SDV review
Reuses the pinned dependency and renderer compatibility approach.
Removes fixed N=100 formatting and recursive project path additions.
Keeps parameter packing separate from scenario/track-table logic.
Uses one source for equations and A5 weights; does not inherit SDV's seven-state actuator-rate model.
Preserves raw status and failed/truncated candidates for the performance study.


## MinGW selection and A9 compiler fingerprint

Every MATLAB or optional S-function build first runs setup_controller_environment.
It requires runnable MinGW GCC and G++ matching compiler_policy.required_version
in dependencies/toolchain.json (8.1.0 for the R2025b baseline). It selects MinGW
explicitly for both MEX languages and never falls back to Microsoft Visual C++.
An optional config/local.json mingw_root overrides automatic detection; point it
at the compiler root, not its bin directory. Otherwise detection checks MATLAB's
environment, its current-release support package and installed configurations.

Before code generation, the available acados CMake compiler metadata must agree
with the selected compiler. A mismatch raises ecu:AcadosCompilerMismatch.
Missing/unusable tools raise ecu:MinGWUnavailable. Libraries are never rebuilt
or replaced automatically. Configure a matching acados installation explicitly.

A9 compiler records contain C/C++ names, versions, executable paths and SHA-256,
target architecture, MEX options files/checksums, actual optimization/link flags,
and available acados CMake settings/library hashes. The build fingerprint includes
these records, excluding the probe timestamp. Existing run fingerprints inherit
the toolchain record through bundle.environment. Hardware/timing qualification
remains the separate A9/A10 run policy; successful selection does not certify it.