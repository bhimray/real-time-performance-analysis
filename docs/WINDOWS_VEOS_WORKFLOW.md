# Windows VEOS controller workflow

Open the project in MATLAB R2026a. Build the controller with one command:

```matlab
build_veos_windows
```

This command does not initialize, inspect, edit or build ASM. It builds the
Windows static numerical libraries with the dSPACE GCC 14.2 toolchain,
generates the current controller from controller_config/prepare_controller
directly in buildVEOS, compiles its Windows MEX, selects VEOS_WIN64_GCC and
publishes the dependency manifest and rtwmakecfg.m beside the MEX.
It does not import stale desktop generated code or create a Simulink model.
Close models using the S-function and clear its MEX before rebuilding.

The CMake library tree is reused. Controller output paths and the S-function
name remain fixed across builds. Run the build command when the controller
design or compiler changes, not when opening the project or starting a run.

## Responsibilities

- project_startup.m only initializes controller parameters, their workspace
  availability, and the S-function path. It does not initialize or build ASM.
- ASM initialization and the saved Windows VEOS application target remain
  under the existing ASM workflow. This controller command does not switch
  the ASM target or alter its dictionary, root ports, buses or custom code.
- rtwmakecfg.m supplies the generated model/cost/constraint/solver sources,
  headers and three Windows libraries automatically during code generation.
  Simulink supplies the S-function wrapper. Example mains and MATLAB MEX
  wrappers are not added to the VEOS application.
- The Linux build is retained but is not selected by this Windows workflow.

Once, remove only obsolete/manual acados entries from the ASM model's Custom
Code source/include/library lists if present; preserve unrelated ASM entries.
Those lists are no longer required for controller dependencies. The model is
not edited automatically. Then use the existing Generate VEOS Application
operation with Windows HostPC64/GCC.

## Fixed output locations

- buildVEOS/acados: reusable Windows numerical-library CMake tree.
- buildVEOS/install: Windows headers and acados.lib/hpipm.lib/blasfeo.lib.
- buildVEOS/c_generated_code: newly generated controller and fixed-name MEX.
- buildVEOS/registration_headers: flat header copies for DSRT include lookup.
- buildVEOS/controller_sources.json: native S-function compile source list.
- buildVEOS/registration_manifest.json: automatic code-generation dependencies.
- buildVEOS/veos_target.json: Windows target selected on successful build.
- buildVEOS/windows_workflow_manifest.json: completed controller configuration.
- buildVEOS/windows_libraries.log: CMake configure/build/install log.

Both flat and directory-qualified header includes are supported in the SIC;
the installed dSPACE API treats Destination-only files as payload, not include
paths, so the hook also registers flat header copies as HeaderFile.

Generate and compile the full ASM application only through the existing ASM
workflow. A successful controller build does not prove whole-vehicle runtime
correctness.
