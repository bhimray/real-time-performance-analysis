# Project status

## Goal
Measure ECU-level real-time computation and investigate how computation choices improve control performance.

## Current verified milestone
Week 2 MATLAB NMPC controller implemented and compiled with MATLAB R2025b Update 7, acados v0.5.4, CasADi 3.7.0 and MinGW 8.1.0.

## Completed
- A3 five-state prediction equations and A5 feedforward references.
- A4 hard input bounds and soft stability, road and obstacle constraints.
- A5 OCP, 40 intervals, 50 ms period, unscaled cost sum and prescribed SQP settings.
- Named parameter contract, warm starts, per-sample iteration cap and raw diagnostics.
- Frozen NLP instance capture and isolated replay verification.
- Source/configuration build fingerprints and short Windows build cache.
- User-run optional S-function build helper and Simulink wiring guide.

## Validation
See docs/validation/controller_validation.json. Nominal and perturbed solves converged; perturbed solve used 3 SQP iterations. Cap 1 returned status 2 and used 1 iteration. Relative cost error 1.913e-16; Jacobian error 1.118e-10; repeat and replay input errors zero.
These are isolated controller tests. No closed-loop simulation or ECU timing experiment has been validated.

## Resume
Run setup_controller_environment after opening the project. Read docs/CONTROLLER.md.
The latest successful build location is recorded in build/latest_controller.json; raw controller test data are in that build's controller_tests.mat.
Run validate_controller to reproduce the build and tests on this machine.

## Next action
Implement/verify the kinodynamic plant and deterministic scenario/horizon preparation, then connect the controller in the user's own Simulink model and run the Week 2 nominal families.

## Ownership and pending work
The user always creates and edits Simulink models. Agent provides MATLAB controller code and model connection guidance.
User will create AURELION inside integrations/aurelion/project. ASM coupling is later.
Full A7 online instrumentation, active-constraint analysis, W3 replay experiments/calibration, VEOS/SCALEXIO deployment and ECU scheduling topology remain pending.
Stock v0.5.4 S-function needs a later interface extension for runtime cap/full history ports.
No SLX model was created, edited, opened or simulated during controller implementation.

## A6 scenario preparation completed
Four nominal fixtures generated under scenarios/a6/instances. All 1200 possible instances passed scenario/helper checks. See docs/SCENARIOS.md and docs/validation/scenario_validation.json. Closed-loop plant integration and simulations remain pending.


## A6 physical lane geometry completed
generate_lanes returns two 3.75 m lanes, separate controller-bound curves and optional global-frame transforms. Geometry checks passed for all families and all six nonzero curvatures; all 1200 scenario regression checks still pass. No simulator road/model was created.


## Lane MAT and CSV exports completed
Four nominal families exported under scenarios/a6/lanes. The 0:0.5:500 m grid is configurable. Saved MAT references can feed prepare_horizon through its optional seventh argument; existing six-argument calls and user edits remain intact. File round-trips, saved-vs-analytical horizons, lane geometry and all 1200 scenario checks passed. No simulator model was created.


## Active lane references refined to 0.01 m
The default MAT/CSV exports now use scenarios/a6/lanes_0p01m, with 50,001 points per family over 0-500 m. The earlier 0.5 m exports remain intact. File round-trips, saved controller horizons, spatial spacing and lane geometry checks passed. See docs/validation/lane_refinement_validation.json.


## MATLAB plant and closed-loop runner implemented
Seven-state RHS, injectable RK4 plant, reusable runner and immutable multirate logging are implemented. Plant analytic tests and a one-period integration test passed. Full nominal outcomes, repeatability and offline plot manifests are recorded in docs/validation/closed_loop_validation.json. Inspect actual nominal outcomes before approving S-function generation. All plotting reads saved MAT files after the runs; none occurs online.


## Folder organization audited (2026-10-26)
Entry points are grouped under scripts/setup, build, validation, scenarios and
plotting. The Week 2 runner stays under experiments/week02 and is on the native
project path. Coarse lane exports and source backups are archived; console logs
and documentation figures have dedicated folders. Source discovery includes
all script groups and experiment entry points. Raw run data is preserved.
See docs/FOLDER_GUIDE.md and docs/validation/folder_organization_validation.json.