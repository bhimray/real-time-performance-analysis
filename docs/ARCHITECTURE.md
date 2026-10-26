# Architecture
Keep shared MATLAB code under src/+ecu. A week owns an experiment protocol, not a duplicate controller.
Use referenced component models when implemented. Top-level harnesses own wiring and platform scheduling.
Configuration functions supply physical and experimental parameters; shared dictionaries own bus/type definitions. Never maintain duplicate authoritative values.
Explicitly load inputs at each run. Do not rely on a previous MATLAB base workspace.
The dependency direction is experiments -> orchestration -> shared modules and target adapters.
Shared controller/model modules must not depend on VEOS, SCALEXIO or AURELION paths.

## Modules
- +model: kinodynamic equations and shared physical computations.
- +control: OCP construction, solver lifecycle, warm starts and cap policy.
- +scenario: deterministic scenario generation and horizon parameter preparation.
- +logging: online measurements and frozen problem capture.
- +replay: offline converged solves and cap sweeps.
- +analysis: quality, sensitivities, timing and reporting.
- +experiment: run lifecycle and future batch manifest/resume.
- models/components: controller and kinodynamic plant.
- models/harnesses: desktop and later integration wiring.
- integrations/asm: state projection and actuator allocation.
- integrations/aurelion: user-created vendor project, assets and interface contract.
- platforms: target-specific build settings, packaging, deployment and I/O.

## Build and measurement separation
Keep build outputs isolated by platform and configuration fingerprint. Generated acados libraries must match the target compiler and CPU. Desktop binaries are not deployment evidence.
Measure solver, full controller step, and later ECU scheduling/communication timing separately. Record logging overhead and clock source. Visualization timing must not silently enter controller execution measurements.
AURELION connection and synchronization are unconfirmed; no transport or clock ownership is assumed.
