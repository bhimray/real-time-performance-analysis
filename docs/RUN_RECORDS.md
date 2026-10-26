# Run and build records
Proposed run layout:
results/<experiment>/<run-id>/
  config.json
  fingerprint.json
  source.patch
  run.mat
  scalars.csv
  termination.json
  figures/
  analysis/

The runtime writer is not implemented yet. Keep variable-length statistics and full replay instances in MAT files.
Record all A7 fields with schema version and availability reason. Do not fill unavailable values with misleading zeros.
Separate raw online measurements from derived offline results and preserve their parent run/sample IDs.
Fingerprint includes A9 machine/toolchain fields, build identity, clock source, target CPU and scheduling settings when applicable.
Build folders are keyed by target, configuration and toolchain identity.
A future batch manifest will record pending/running/completed/failed state plus output validation. A partial file is not a completed run.
