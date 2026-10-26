# Interface contract draft
Schema version 1. Implement actual Simulink buses only after confirming existing model interfaces.
All physical fields use SI units; angles use radians.

| Interface | Contents | Shape |
|---|---|---|
| Measurement | x = [e, psi, v, vy, gamma], vx, s, sample index, timestamp | x: 5 by 1 |
| Control | u = [Fx, Fy, Mz], validity and applied-command source | u: 3 by 1 |
| Horizon | all A5 stage parameters, feedforward references and stage times | N+1 stages; packing order must be versioned |
| Solver diagnostics | cap, actual iterations, QP counts, status, cost, residuals, timing, slacks | variable histories retained |
| Frozen instance | measured x, vx, s, all stage parameters, init_x, init_u, obstacle data | complete problem snapshot |
| Run metadata | resolved config, versions, seed, source revision, target, completion reason | one per run |

Preserve additional initialization state used by the pinned solver, including dual/slack iterates when relevant. Record whether replay reconstructs the full internal state or only the prescribed primal warm start.
The A3 plant state order is [e, psi, v, vy, gamma, vx, s]. Prediction freezes vx over the horizon.
Controller period: 50 ms. Baseline plant step: 1 ms. Horizon: 40 intervals.
Define indexing, initial-sample handling, constraint ordering/scaling and status interpretation before collecting data.
Failure policy, reset semantics, ASM actuator conventions, hardware scheduling and AURELION synchronization remain open decisions.
