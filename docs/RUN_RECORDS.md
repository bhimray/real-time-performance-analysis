# Run and build records

The runtime writer is implemented in `src/+ecu/+logging/save_run.m`.

```text
results/week02/<run-id>/
  data/<run-id>__run.mat
  data/<run-id>__controller.csv
  metadata/run_manifest.json
  metadata/summary.json
  metadata/fingerprint.json
  metadata/scenario.json
  metadata/resolved_config.json
  metadata/channels.json
  plots/<plot-batch-id>/
    <run-id>__trajectory.png / .fig
    <run-id>__plant_states.png / .fig
    <run-id>__applied_inputs.png / .fig
    <run-id>__solver_diagnostics.png / .fig
    plot_manifest.json
```

MAT retains separate plant/controller time grids, variable-length solver
statistics, predictions, frozen instances, source snapshots and failure details.
CSV is a named scalar subset. Channel metadata records units and array order.
Candidate commands and applied commands are distinct. Unavailable values use
NaN or explicit empty fields rather than misleading zeros.

The simulation never plots. `plot_matlab_run(savedMatFilename)` reloads saved
data and verifies its checksum when the manifest exists. Plot manifests record
the parent run, source-data hash, plotting-code hash and data fields used.
New plotting batches preserve earlier figures and the original data.

Build manifests identify compiler, toolchain, source and configuration. Active
desktop builds use the short external cache configured in local.json; the
latest pointer stays at build/latest_controller.json. Console logs belong in
build/logs; previous source backups belong in build/archive. Neither is a run.
Machine and raw timing records do not certify ECU timing performance.

A future batch/resume manifest is not yet implemented. A saved failed run is
diagnostic evidence and is never marked as a completed acceptance run.