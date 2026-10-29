# Project folder guide

| Folder | Contents |
| --- | --- |
| `config/` | Authoritative MATLAB configuration and ignored local installation paths |
| `src/+ecu/+model/` | Controller equations, plant RHS, context and RK4 integrator |
| `src/+ecu/+control/` | OCP, controller step, initialization and diagnostics |
| `src/+ecu/+scenario/` | Scenario, obstacle, lane and horizon algorithms |
| `src/+ecu/+experiment/` | Reusable run orchestration and options |
| `src/+ecu/+logging/` | Multirate capture, data writer and provenance |
| `src/+ecu/+analysis/` | Offline summaries and future derived analysis |
| `src/+ecu/+replay/` | Reserved for Week 3 offline replay |
| `experiments/week02/` | Week 2 entry point, README and protocol |
| `experiments/week03/` | Week 3 protocol and future entry points |
| `scripts/setup/` | Dependency setup, environment checks and initial project creation |
| `scripts/build/` | MATLAB controller and later S-function build entry points |
| `scripts/validation/` | Foundation/controller/layout verification entry points |
| `scripts/scenarios/` | Scenario/lane export and geometry preview entry points |
| `scripts/plotting/` | Offline plotting from a saved run MAT file |
| `scripts/` | Project startup and status display only |
| `tests/` | Reusable checks for controller, plant, scenarios and lanes |
| `scenarios/a6/instances/` | Deterministic scenario inputs and index |
| `scenarios/a6/lanes_0p01m/` | Active 0.01 m MAT/CSV lane references |
| `scenarios/a6/archive/lanes_0p5m/` | Previous coarse exports; not selected by the runner |
| `results/week02/<run-id>/` | Saved run data, metadata and later offline plot batches |
| `docs/validation/` | Compact verification reports; not full experiment datasets |
| `docs/figures/a6/` | Scenario and road documentation illustrations |
| `docs/references/` | Original supplied project requirements |
| `build/logs/` | Build/validation console output |
| `build/archive/` | Previous source backups; never added to the MATLAB path |
| `models/` | User-owned Simulink components, harnesses and dictionaries |
| `integrations/` | ASM/AURELION projects, assets and adapters |
| `platforms/` | Desktop/VEOS/SCALEXIO recipes and deployment files |
| `dependencies/` | Pinned toolchain identity and local compatibility adapter |
| `resources/project/` | MATLAB-managed native project metadata |

Opening the .prj restores explicit paths for source, config, script groups and
the Week 2 experiment entry point. Function names and command syntax are
unchanged. Never add the entire repository recursively to the MATLAB path:
archives, generated solvers and snapshots can contain duplicate function names.

Examples:
```matlab
[run, bundle] = run_matlab_closed_loop(1, 1);
artifacts = plot_matlab_run(run.files.run_mat);
report = validate_project_organization();
```

The current folder audit is in docs/validation/folder_organization_validation.json.
Previous run data and validation reports retain the paths recorded at creation;
they are historical evidence, not the authoritative current folder map.