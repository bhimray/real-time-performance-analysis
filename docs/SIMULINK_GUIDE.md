# User-created Simulink controller integration

You own model creation and editing. MATLAB controller scripts do not create or modify SLX files.

## Build the compiled block when you are ready
```matlab
bundle = build_controller();
sfunctionFile = build_controller_sfunction(bundle.build_dir);
```
The second command is optional and user-run. Automatic generated-block creation is disabled.
Add the build's c_generated_code folder to the MATLAB path and use a Simulink S-Function block with the generated binary's base name (without .mexw64).
Read port order from that build's make_sfun.m output/generated C. Never infer port numbers from struct field order.
Use a 0.05-second controller sample time. Plant integration belongs in a separate component.

## Input contract at the baseline N=40
Use ecu.control.format_simulink_inputs to prepare matching vectors:
| Name | Length | Meaning |
|---|---:|---|
| lbx_0 / ubx_0 | 5 each | Both equal measured [e;psi;v;vy;gamma] |
| parameter_traj | 779 | 19 parameters per node, nodes 0:40 |
| lh_0 / uh_0 | 5 each | Initial nonlinear bounds |
| lh / uh | 195 each | 5 bounds per node, nodes 1:39 |
| x_init | 205 | State guesses, nodes 0:40 |
| u_init | 120 | Input guesses, nodes 0:39 |

Constraint order is [vy,gamma,e,obstacle1,obstacle2].
Road and stability bounds depend on current parameters and scenario friction.
Each stage is one MATLAB matrix column; flatten using (:).
Cost references are built into the model through feedforward; no y_ref ports are enabled.
No terminal constraint ports are enabled.

## Outputs
u0 is [Fx;Fy;Mz], NOT steering or torque.
xtraj and utraj contain the full predicted trajectories. Reshape to 5-by-41 and 3-by-40.
Use a one-step memory to form shifted warm starts; duplicate the last column as A5 requires.
Reset memory at run initialization; do not create an algebraic loop from current output to current initialization.
Record raw solver status, iterations, cost, KKT residuals, CPU times and slacks.
Keep candidate command, applied command and any selected failure policy separately logged.

## Week 3 interface limitation
Stock acados v0.5.4 has no runtime SQP-cap S-function input and does not expose every A7 history field.
MATLAB controller_step supports runtime caps and full SQP statistics.
A later versioned wrapper extension is needed for equivalent online Simulink instrumentation; it has not been implemented or claimed here.

## Suggested model layout
Scenario/path preparation -> controller wrapper -> kinodynamic plant -> measurement feedback.
Keep initialization and logging outside the solver core.
Later ASM integration uses separate state-projection and actuator-allocation adapters.
No ASM, AURELION, VEOS or SCALEXIO mapping is assumed in this controller.
