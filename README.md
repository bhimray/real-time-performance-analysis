# ECU Real-Time Control Performance

Study ECU-level real-time computation and use the findings to improve control performance. The first case study is acados NMPC for kinodynamic vehicle control; later integration includes ASM, AURELION, VEOS, and SCALEXIO.

## Current state
The MATLAB controller, modular plant, closed-loop runner and offline data/plot workflow are implemented. Analytic plant checks and F1 repeatability passed. All four first nominal instances stopped on solver nonconvergence; the closed-loop acceptance gate remains open. See docs/MATLAB_CLOSED_LOOP.md and docs/validation/closed_loop_validation.json. Week 3 instrumentation and dSPACE integration remain pending. The user creates and edits all Simulink models; docs/SIMULINK_GUIDE.md describes connection steps.

## Start or resume
1. Open ECU_RealTime_Control_Performance.prj in MATLAB R2025b.
2. Run the Check environment project shortcut.
3. Read docs/STATUS.md and docs/OPEN_QUESTIONS.md.
4. On a new machine, copy config/local.example.json to config/local.json and fill verified installation paths. This machine is already configured. Run setup_controller_environment.
5. Follow experiments/week02/README.md; import existing work into the owning modules.
6. Record evidence and the next action in docs/STATUS.md.

Project startup does not compile, start experiments, install dependencies, connect hardware, or change power/affinity settings.
The project manages explicit source, configuration, script-group and Week 2 experiment paths. Do not use recursive addpath on this repository. See docs/FOLDER_GUIDE.md for the owning folder of every file type.

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
