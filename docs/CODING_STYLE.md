# MATLAB coding conventions

Controller source follows these conventions:
- Four spaces per indentation level; no tabs.
- One executable statement per line.
- Spaces around operators and after commas.
- Descriptive camelCase local variables.
- Existing public struct fields and function filenames retain their established names.
- A function help block states purpose, inputs, dimensions and outputs.
- MATLAB section markers separate meaningful mathematical or workflow steps.
- Comments explain units, guideline references, zero-based acados indices and decisions.
- Long expressions are split at logical boundaries using continuation lines.
- Mathematical definitions are kept separate from acados setup, build and runtime code.

Read the controller in this order:
1. config/vehicle_parameters.m and config/controller_config.m.
2. src/+ecu/+model/vehicle_rhs.m.
3. src/+ecu/+control/feedforward.m.
4. constraint_expressions.m and constraint_bounds.m.
5. src/+ecu/+control/ocp_nmpc_setup.m.
6. src/+ecu/+control/controller_step.m.
7. scripts/build/build_controller.m and tests/test_controller.m.

Short public fields such as x, u, P, N, W, lh and uh belong to the existing
data/acados interfaces. Local variables explain their physical meaning.
