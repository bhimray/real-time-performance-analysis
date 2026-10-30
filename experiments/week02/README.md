# Week 2 baseline
Implement vehicle_model, ocp_nmpc_setup, plant_rk4, path_signals, gen_instance, run_instance and plotting in the owning modules.
Build models/harnesses/vehicle_cl.slx only after module interfaces are checked.
Run instance 1 of F1-F4. Save every instance and A7 available-online logs, CSV scalars, plots and fingerprint.
Plot trajectory/road/obstacles, states/inputs, iterations/timing, active constraints and maximum slack.
Repeat F1/1. Keep failed or terminated runs and report reasons. A cap of 200 is not proof of convergence.
Deliver one page per family and a progress log. Use protocol.json as the experiment manifest.
Acceptance: investigate collision-free nominal behavior, F4 braking, reproducibility and iteration variation without silently tuning scenarios.

## Available MATLAB entry point

`run_matlab_closed_loop.m` lives in this experiment folder. Open the .prj, then:
```matlab
[run, bundle] = run_matlab_closed_loop(1, 1);
artifacts = plot_matlab_run(run.files.run_mat);
```
Reusable implementation stays in src/+ecu. Offline plotting is in
scripts/plotting. Current nominal runs stop on nonconvergence; see
docs/validation/closed_loop_validation.json before advancing the acceptance gate.

# Week 2 Vehicle Closed Loop Results

**Date:** 30 October 2026  
**Scope:** Instance 1 of scenario families F1–F4, NMPC iteration cap 200.

Each run contains 8 s of motion, 160 controller records at 50 ms and 8001 plant samples at 1 ms. Obstacle snapshots are shown at 0, 2 and 4 s. Trajectories use road coordinates; F2 follows a curved reference despite its horizontal reference line in this view. Input plots show candidate commands. Timing values are unadjusted desktop solver measurements; they do not establish full-controller or ECU timing.

## Traffic conditions

The target vehicle occupies the left lane at lateral position +3.75 m. Its signed longitudinal gap is **target station minus ego station**: positive means ahead; negative means behind. These are station gaps, not bumper clearances.

| Family | Road | Friction μ | Target speed (m/s) | Initial target gap (m) | Final target gap (m) |
|---|---|---:|---:|---:|---:|
| F1 | Straight | 0.9 | 13.331 | +23.82 | −45.22 |
| F2 | Curved, radius 600 m | 0.9 | 22.581 | +32.24 | −24.02 |
| F3 | Straight | 0.6 | 19.663 | +31.40 | −48.29 |
| F4 | Straight, adjacent lane blocked | 0.9 | 24.803 | −1.24 | −42.64 |

## F1 Straight road with lane change available

The ego passed the lead vehicle through lateral avoidance and returned near the reference. No physical collision or run-off was detected at the recorded samples. The lead-vehicle safety constraint crossed its unrelaxed bound at 29 plant samples; minimum safety expression was −0.003715. The solve at 2.30 s returned status 2.

| Measurement | Result |
|---|---:|
| Initial → final longitudinal speed (m/s) | 21.961 → 21.959 |
| Lateral error RMS / maximum absolute value (m) | 0.521 / 1.298 |
| Successful solves / total | 159 / 160 |
| SQP iterations minimum / median / maximum | 1 / 2 / 200 |
| Solver time median / maximum (ms) | 1.418 / 154.333 |
| Maximum slack | 5.24 × 10⁻⁷ |

![Figure 1 F1 trajectory](figures/w2_report/F1_trajectory.png)

*Figure 1. F1 trajectory, road bounds and obstacle safety and collision boundaries at 0, 2 and 4 s.*

Supporting figures: [2 — states and inputs](figures/w2_report/F1_states_inputs.png), [3 — solver effort](figures/w2_report/F1_solver.png), [4 — maximum slack](figures/w2_report/F1_slack_max.png).

## F2 Curved road with lane change available

The saved reference curvature was −1/600 m⁻¹. The ego completed the curved-road run without sampled collision or run-off. The lead-vehicle safety constraint crossed its bound at 16 plant samples; minimum safety expression was −0.001113. Ten solves returned status 2, including six at startup and four between 5.40 and 5.75 s.

| Measurement | Result |
|---|---:|
| Initial → final longitudinal speed (m/s) | 29.602 → 29.575 |
| Lateral error RMS / maximum absolute value (m) | 0.543 / 1.301 |
| Successful solves / total | 150 / 160 |
| SQP iterations minimum / median / maximum | 2 / 2 / 200 |
| Solver time median / maximum (ms) | 1.541 / 166.035 |
| Maximum slack | 6.24 × 10⁻¹⁰ |

![Figure 5 F2 trajectory](figures/w2_report/F2_trajectory.png)

*Figure 5. F2 trajectory in road coordinates, with obstacle snapshots at 0, 2 and 4 s.*

Supporting figures: [6 — states and inputs](figures/w2_report/F2_states_inputs.png), [7 — solver effort](figures/w2_report/F2_solver.png), [8 — maximum slack](figures/w2_report/F2_slack_max.png).

## F3 Straight road with reduced friction

At μ = 0.6, the ego completed the run without sampled collision or run-off. The lead-vehicle safety constraint crossed its bound at 47 plant samples; minimum safety expression was −0.005238. Status 2 occurred at 4.15, 4.55 and 4.75 s. These results describe this nominal instance and do not establish robustness across the scenario family.

| Measurement | Result |
|---|---:|
| Initial → final longitudinal speed (m/s) | 29.621 → 29.608 |
| Lateral error RMS / maximum absolute value (m) | 0.537 / 1.299 |
| Successful solves / total | 157 / 160 |
| SQP iterations minimum / median / maximum | 2 / 2 / 200 |
| Solver time median / maximum (ms) | 1.326 / 190.049 |
| Maximum slack | 9.52 × 10⁻¹⁰ |

![Figure 9 F3 trajectory](figures/w2_report/F3_trajectory.png)

*Figure 9. F3 trajectory and obstacle boundaries under reduced friction.*

Supporting figures: [10 — states and inputs](figures/w2_report/F3_states_inputs.png), [11 — solver effort](figures/w2_report/F3_solver.png), [12 — maximum slack](figures/w2_report/F3_slack_max.png).

## F4 Blocked adjacent lane

The ego passed the lead vehicle at a lateral offset of approximately −1.30 m while remaining within the ±1.75 m road bounds. Speed remained approximately 29.97 m/s; the final lead-vehicle gap was −88.76 m. The required behavior of braking and remaining behind the lead vehicle was not achieved. No sampled physical collision, run-off or beyond-tolerance A4 state violation was detected. Six plant samples were near the lead-vehicle safety boundary. Status 2 occurred at 2.40 s.

| Measurement | Result |
|---|---:|
| Initial → final longitudinal speed (m/s) | 29.978 → 29.971 |
| Lateral error RMS / maximum absolute value (m) | 0.522 / 1.301 |
| Successful solves / total | 159 / 160 |
| SQP iterations minimum / median / maximum | 1 / 2 / 200 |
| Solver time median / maximum (ms) | 0.971 / 138.775 |
| Maximum slack | 1.15 × 10⁻⁷ |

![Figure 13 F4 trajectory](figures/w2_report/F4_trajectory.png)

*Figure 13. F4 lateral passing maneuver with the adjacent lane blocked.*

Supporting figures: [14 — states and inputs](figures/w2_report/F4_states_inputs.png), [15 — solver effort](figures/w2_report/F4_solver.png), [16 — maximum slack](figures/w2_report/F4_slack_max.png).

## Acceptance and remaining verification

All four runs reached 8 s without sampled physical collision or run-off, and SQP counts varied within each run. Every run contained nonconverged solves and a maximum recorded solver time above 50 ms. F4 failed the required braking behavior. Exact agreement has been demonstrated for the available F1 numerical records; full coverage and generated-build identification remain incomplete.

Constraint observations use recorded states and candidate inputs with a scaled tolerance of 10⁻⁴. They are separate from prediction-horizon activity. Raw and normalized archive checksums were verified, but research logging validation remains incomplete and the generated build was not identified in the saved metadata. Week 2 acceptance therefore remains incomplete.

## F1 reproducibility results

The repeated F1 instance 1 runs in `w2` and `w2_2run` agree exactly across all 29 available numerical signal definitions at matching timestamps. Maximum numerical and solver-cost differences are zero; solver-status and SQP-iteration mismatch counts are zero. Experiment settings and archived model/controller provenance match.

Solver timing varied by up to 9.923 ms and is excluded from numerical acceptance. Overall acceptance remains incomplete because 12 numerical definitions were unavailable and the generated build was unidentified.

See the [report and comparison figures](w2_report.md#f1-reproducibility), [signal comparison table](comparison/results/reproducibility_table.csv), and [comparison summary](comparison/results/reproducibility_summary.md).
