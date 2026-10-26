# ECU Real-Time Control Performance

Study ECU-level real-time computation and use the findings to improve control performance. The first case study is acados NMPC for kinodynamic vehicle control; later integration includes ASM, AURELION, VEOS, and SCALEXIO.

## Current state
Project foundation only. No controller, plant, solver, hardware mapping, or vendor project has been implemented or validated. Week 1 prerequisites are satisfied by the user's previous experience. Begin at Week 2, then instrument the same formulation for Week 3.

## Start or resume
1. Open ECU_RealTime_Control_Performance.prj in MATLAB R2025b.
2. Run the Check environment project shortcut.
3. Read docs/STATUS.md and docs/OPEN_QUESTIONS.md.
4. Copy config/local.example.json to config/local.json; fill only verified installation paths and versions.
5. Follow experiments/week02/README.md; import existing work into the owning modules.
6. Record evidence and the next action in docs/STATUS.md.

Project startup does not compile, start experiments, install dependencies, connect hardware, or change power/affinity settings.
The project manages src, scripts, and config on the MATLAB path. Do not use recursive addpath on this repository.

## Ownership
- config: experiment, vehicle, controller and target configuration.
- src/+ecu: reusable MATLAB components; qualified package names prevent collisions.
- models: component models, integration harnesses, buses and data dictionaries.
- integrations: ASM allocation/state conversion, AURELION scenes and interfaces.
- platforms: desktop, VEOS and SCALEXIO build/deployment recipes.
- experiments: versioned protocols; implementation stays in reusable modules.
- build, results: generated and measured outputs, excluded from Git.
- docs: interfaces, status, decisions, handoff and original specifications.

## Collaboration and cloning
See docs/WORKFLOW.md. Commit MATLAB project definition files (including resources/project), source, protocols, and configuration. Do not commit local installation paths, licenses, binary caches or bulk run outputs.
The folder is prepared for Git; no remote or hosting account is chosen.
