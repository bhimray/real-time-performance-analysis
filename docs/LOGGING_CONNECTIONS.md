# Logging connections for the current harness

## Commands and diagnostics

The contract uses opt_cmd.Fx, opt_cmd.Fy and opt_cmd.Mz for candidate commands.
The saved vehicle_cl harness routes this controller output through Unit Delay
SID 16 before the plant. Do not use opt_cmd as the applied command. Log the bus
at the output of that delay with custom logging name command_applied. This
preserves the measured distinction without reconstructing a delay or assuming
its initial condition. If the harness is changed, check the command path again.

Solver sources now use telemetry rather than solver_outputs. Stable analysis
IDs are unchanged, so grouped-export names remain unchanged.

## Prediction and history bus fields

The complete telemetry bus should include the following exact leaf names.

| Leaf | Components per controller record |
| --- | --- |
| xtraj | nx times N plus 1, currently 205 |
| utraj | nu times N, currently 120 |
| qp_iteration_history | max_iter plus 1, currently 201 |
| residual_history | 4 times max_iter plus 1, currently 804 |
| history_length | 1 |
| lam_stage0 | Generated stage zero multiplier dimension, observed build 36 |

The formulas for state and residual entries mean nx*(N+1) and
4*(max_iter+1). Connect xtraj and utraj from the actual solver outputs to
telemetry. A Bus Selector can drop these even if the solver produces them.
Generated output labels can differ in case from the telemetry adapter; the
contract follows the final logged leaf names. Histories include their allocated
padding; use history_length for valid entries and distinguish initialization.
Raw lam_stage0 is not yet the five component research lam0: that requires a
verified index/sign mapping and sensitivity checks.

The existing archived raw.mat predates the newly added history/multiplier
capture. A new saved run is required to verify their actual values, shapes,
ordering and clocks. Synthetic extraction checks are not that acceptance test.

## Replay bus

Inside nmpc_controller, branch the actual input lines immediately before the
acados S-function into a Bus Creator. Name its elements exactly as below and
log its output with custom logging name replay. Do not insert delays, switches,
or calculations on the solver path just for logging. Use the existing signals,
not reconstructed post-solve trajectories.

| Bus element | Actual input to capture | Current component count |
| --- | --- | --- |
| x_init | Warm start state guess consumed by solver | 205 |
| u_init | Warm start input guess consumed by solver | 120 |
| parameter_traj | Packed stage parameters | 779 |
| lbx_0 | Initial state lower bound | 5 |
| ubx_0 | Initial state upper bound | 5 |
| lh | Path lower bounds for stages 1 through N minus 1 | 195 |
| uh | Corresponding path upper bounds | 195 |
| lh_0 | Stage zero lower bounds | 5 |
| uh_0 | Stage zero upper bounds | 5 |

These are the named outputs of ecu.control.format_simulink_inputs. Capture
after any override/reset/selection that can alter what actually enters the
solver. In particular capture the current incoming warm start, not the newly
returned xtraj/utraj or next tick's shifted guess. Log once per controller
execution at 0.05 s with decimation 1 and no last-N truncation. The bus must
contain the inputs for that same solve. Inspect their time alignment after a
short run. Also record any retained dual, slack or QP state initialization
policy before claiming exact initialized-solver replay.

## Measurements and execution settings

The plant-rate meas_states archive is not automatically relabeled as the
controller-rate controller_measurements record. Log the measurements actually
latched/consumed by the controller on its 0.05 s schedule as
controller_measurements, containing x, vx and s. Similarly log the consumed
execution settings as execution at controller ticks. The current exec snapshot
at time zero is not a per-solve execution history. The contract keeps these
requirements visible rather than silently interpolating or repeating values.

## Complete controller timing

controller_step_time is elapsed computation time covering one controller
execution: horizon preparation, packing, solve, command selection and warm
start update. Solver cpu_time covers only the solver's timing scope. A Digital
Clock measures simulation time; it cannot measure this elapsed computation.

This signal is optional in research/debug profiles and required in the timing
profile. It needs instrumentation using a suitable monotonic execution clock
for the chosen desktop/target implementation, with a documented start/end scope
and overhead. A generic signal name does not create a timing measurement.
Defer the timing profile until that instrumentation is implemented and checked.
Desktop timing does not establish ECU timing. Report the defined 200-solve warm
up and machine conditions separately when publishing timing results.

## Checks after wiring

Save the models and run a short experiment, then inspect metadata/validation.json.
For an 8 second run expect 160 normalized controller records (0 to 7.95 s) and
8001 plant samples including the endpoint. Raw controller data may include a
161st evaluation at 8 s. Missing or mismatched fields remain validation failures.
Existing archives retain their original contract and are not rewritten by this
source change. Use a new run to validate the updated model and contract together.
