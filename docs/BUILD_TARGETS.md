# VEOS and SCALEXIO builds

Project startup adds source paths and initializes controller parameters. It does
not select a compiled controller. There is no default target and no fallback to
another build when an artifact is missing.

## Controller builds

Run from the project root, with models using the solver closed:

```matlab
addpath(fullfile(pwd,'scripts','build'));
clear acados_solver_sfunction_ecu_vehicle_nmpc

% Choose one workflow explicitly.
result = build_scalexio(Jobs=4);
% result = build_veos_windows(Jobs=4);
```

Each builder first deactivates compiled controller paths. On success it selects
only its own generated directory. A failed build leaves no selected target.

| Artifact | VEOS | SCALEXIO |
| --- | --- | --- |
| Generated solver and hook | `buildVEOS/c_generated_code` | `buildSCALEXIO/c_generated_code` |
| Application libraries | `buildVEOS/install/lib/*.lib` | `buildSCALEXIO/install/lib/*.a` |
| Windows libraries for MATLAB MEX | `buildVEOS/install/lib` | `buildSCALEXIO/host/install/lib` |
| CMake cache for Windows MEX libraries | `buildVEOS/acados` | `buildSCALEXIO/host/acados` |

SCALEXIO does not read VEOS artifacts. Both workflows use the same pinned acados
source and Windows compiler definition. acados CMake writes metadata into the
source checkout's `lib` folder: a shared exclusive lock makes builds run sequentially, not concurrently
from two MATLAB sessions sharing this checkout. Each workflow copies that
metadata into its own installation immediately after the relevant build.

## Select an existing build

```matlab
select_controller_target('SCALEXIO');
% select_controller_target('VEOS');
```

The selector removes other build/cache directories from MATLAB's path and checks
the selected solver, hook, and manifest. If another solver MEX is loaded, close
its models and clear it first. The hooks recheck selection when code generation
runs; adding a folder to the path manually does not constitute target selection.

## Generate the ASM SCALEXIO SIC

Open this MATLAB project, save model edits, and close `ASM_Traffic`. Then:

```matlab
result = build_asm_scalexio(FamilyId=1);
disp(result.sic)
```

The wrapper runs ASM `go` in CPT/SCALEXIO mode, loads the project's two road-family
datasets, applies controller parameters, and rejects manual controller library
entries in the model. It builds into a new directory under `build/SCALEXIO_ASM`
with default DSRT file-generation settings. It restores the previous working
directory and file-generation settings on completion or failure.

After generation, validation requires SCALEXIO solver paths in the dependency
manifest, no VEOS controller paths or Windows acados libraries, and all three
Linux archives in `SCALEXIO_LNX64/bin` inside the SIC. Only a successful validation
writes `validated_build.json`. The result struct identifies the validated SIC;
do not transfer an older root-level SIC by accident. The generation log remains
in the new build directory, including when generation fails.

The wrapper does not remove unrelated ASM files for other platforms from a SIC.
It does not explicitly save model edits or deploy an application.

## Lab compatibility

The present SCALEXIO compiler remains CFD Compiler 26.1; this change does not
resolve the lab's older 2025-B ConfigurationDesk / CFD Compiler 24.1 setup.
Use a dSPACE-supported release/compiler/runtime combination before deployment.
The package checks validate dependency selection, not real-time deadlines or
hardware behavior.

## Local verification (2026-11-17)

- SCALEXIO controller build completed, including private Windows MEX libraries.
- ASM code generation completed in 7 minutes 37 seconds for Family 1.
- The generated SIC passed source-path and packaged-library checks.
- Selection tests rejected a stale VEOS hook and the original contaminated SIC.
- Installed ASM S-functions remained available after target cleanup.
- Source-metadata locking rejected a concurrent writer and released correctly.
- Tracked Simulink model files were unchanged by verification.

Validated package and its report:

```text
build/SCALEXIO_ASM/run_20261117_160643_297/ASM_Traffic.sic
build/SCALEXIO_ASM/run_20261117_160643_297/validated_build.json
```

ConfigurationDesk linking in the lab and execution on hardware remain untested.
