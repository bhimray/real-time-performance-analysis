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

![Figure 2 — states and inputs](figures/w2_report/F1_states_inputs.png), 
![Figure 3 — solver effort](figures/w2_report/F1_solver.png), 
![Figure 4 — maximum slack](figures/w2_report/F1_slack_max.png).

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

![Figure 6 — states and inputs](figures/w2_report/F2_states_inputs.png), 
![Figure 7 — solver effort](figures/w2_report/F2_solver.png), 
![Figure 8 — maximum slack](figures/w2_report/F2_slack_max.png).

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

![Figure 10 — states and inputs](figures/w2_report/F3_states_inputs.png), 
![Figure 11 — solver effort](figures/w2_report/F3_solver.png), 
![Figure 12 — maximum slack](figures/w2_report/F3_slack_max.png).

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

![14 — states and inputs](figures/w2_report/F4_states_inputs.png), ![Figure 15 — solver effort](figures/w2_report/F4_solver.png), ![Figure 16 — maximum slack](figures/w2_report/F4_slack_max.png).

## F1 Reproducibility

F1 instance 1 was repeated with the same experiment settings. The runs in `w2` and `w2_2run` were compared at matching timestamps without interpolation, using zero absolute tolerance. Archived model/controller provenance also matched.

| Check | Result |
|---|---:|
| Available numerical signal definitions compared | 29 |
| Maximum absolute numerical difference | 0 |
| Solver-status mismatches | 0 |
| SQP-iteration mismatches | 0 |
| Maximum solver-cost difference | 0 |
| Maximum solver-time difference (ms) | 9.923 |
| Unassessed numerical signal definitions | 12 |

The available numerical records are exactly reproducible. Solver execution time varied and was excluded from numerical acceptance. Full acceptance remains incomplete because 12 numerical definitions were unavailable and the generated build was unidentified in both archives. Repeating the same numerical result does not resolve the nonconverged solve already reported for F1.

![Figure 17 F1 lateral-error reproducibility](comparison/results/vehicle_lateral_error.png)

*Figure 17. Lateral-error overlay and Run 2 minus Run 1. The numerical difference is zero.*

![Figure 18 F1 solver-cost reproducibility](comparison/results/controller_solver_cost.png)

*Figure 18. Solver-cost overlay and difference. The cost records agree exactly.*

![Figure 19 F1 solver-time comparison](comparison/results/controller_solver_total_time.png)

*Figure 19. Solver execution-time overlay and difference in milliseconds. Timing is descriptive.*

The detailed [comparison table](comparison/results/reproducibility_table.csv) records signal-level differences, missing data and the locations of maximum differences.
