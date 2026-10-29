# Scenario configurations

a6/ contains the scenario families from Sheet A6. The default generated set
is instance 1 from F1-F4, as Week 2 requires.

Keep this folder for scenario definitions and small reproducible fixtures.
Closed-loop logs, timing measurements and experiment figures belong in results/.

The actual generator and motion/path helpers live in src/+ecu/+scenario.
Shared A6 constants live in config/scenario_config.m.

See docs/SCENARIOS.md for commands and the controller connection contract.
