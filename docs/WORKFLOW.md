# Clone and collaboration workflow
1. Clone repository and open the .prj in MATLAB R2025b.
2. Read dependencies/toolchain.json; obtain required vendor installations separately.
3. Copy config/local.example.json to config/local.json and set verified local paths.
4. Run check_environment and check_foundation.
5. Read STATUS.md; rebuild the required target with the documented recipe once implemented.
6. Resume pending experiment instances from the future batch manifest.

Do not assume a cloned repository includes software licenses, installed dependencies or generated binaries.
Use short feature branches and review source/configuration changes. Coordinate ownership of SLX/SLDD edits.
Tag verified milestones such as w2-baseline and w3-instrument-validated only after checks pass.
Keep source under Git. Preserve generated release packages separately with checksums and manifests.
Record decisions in DECISIONS.md. No remote, initial commit, or publication is selected automatically.

## Outputs
Each run has an immutable unique ID and resolved configuration. Never overwrite previous evidence.
Capture git revision and a patch or source snapshot for uncommitted changes; a dirty flag alone is insufficient.
Restart interrupted 8-second runs from their configuration. Exact mid-run continuation is not implemented.
For timing campaigns, a machine-local build/results directory can be selected in local.json to avoid synchronization activity; explicitly record that location.
