# Experiment outputs

Each experiment writes immutable run directories under `week02/<run-id>/` or
the external output root configured in `config/local.json`.

- `data/`: full multirate MAT data and scalar controller CSV.
- `metadata/`: configuration, scenario, channel dictionary, checksums and outcome.
- `plots/<plot-batch-id>/`: later offline PNG/FIG exports and source-data manifest.

Run IDs include family, instance and a unique suffix. Failed runs are retained.
Plot names include the same run ID and a descriptive plot ID. Bulk outputs are
ignored by Git. See docs/RUN_RECORDS.md and docs/MATLAB_CLOSED_LOOP.md.