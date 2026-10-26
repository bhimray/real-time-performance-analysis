# Week 2 baseline
Implement vehicle_model, ocp_nmpc_setup, plant_rk4, path_signals, gen_instance, run_instance and plotting in the owning modules.
Build models/harnesses/vehicle_cl.slx only after module interfaces are checked.
Run instance 1 of F1-F4. Save every instance and A7 available-online logs, CSV scalars, plots and fingerprint.
Plot trajectory/road/obstacles, states/inputs, iterations/timing, active constraints and maximum slack.
Repeat F1/1. Keep failed or terminated runs and report reasons. A cap of 200 is not proof of convergence.
Deliver one page per family and a progress log. Use protocol.json as the experiment manifest.
Acceptance: investigate collision-free nominal behavior, F4 braking, reproducibility and iteration variation without silently tuning scenarios.
