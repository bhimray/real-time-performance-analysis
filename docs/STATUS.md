# Project status
## Goal
Measure ECU-level computation and investigate how computation choices improve control performance.

## Confirmed decisions
- Begin at Week 2; previous work covers Week 1 prerequisites.
- MATLAB R2025b is the installed 2025 release selected for this foundation.
- Reusable logic, target deployment and vendor projects have separate owners.
- User will create the native AURELION project inside integrations/aurelion/project.
- ASM/controller coupling is a later integration step.
- Week 3 adds instrumentation without changing the Week 2 formulation.

## Completed
Folder scaffold, native project creation recipe, environment inspection, configuration templates, reference documents and experiment protocols.

## Not yet implemented
Vehicle equations, acados OCP, Simulink models, online logger, offline replay, ASM adapters, vendor projects, deployment and batch-resume engine.

## Next action
Inventory the user's existing Week 2 MATLAB/Simulink files. Map each to docs/ARCHITECTURE.md, then establish one F1 closed-loop run.

## Resume record
Last validated run: none.
Last solver build: none.
Current blocker for implementation: existing files and pinned acados toolchain not yet identified.
Update this file after each verified milestone; record run/build IDs and exact next action.
