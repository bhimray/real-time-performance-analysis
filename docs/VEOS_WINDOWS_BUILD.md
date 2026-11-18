# Windows VEOS controller build

`buildVEOS` is the fixed output folder. Windows libraries use the installed
dSPACE GCC 14.2 x86_64 compiler and the HostPC64/GCC instruction-set options.
They are not compatible with HostPCLinux64/GCC.

## Rebuild libraries and import generated controller code

From PowerShell in the repository:

```powershell
& .\scripts\build\Build-VEOS.ps1
```

By default this imports the existing controller sources from
`build/desktop/controller/c_generated_code`. It does not regenerate the OCP.
After changing controller equations, dimensions, or generation options,
regenerate them using the existing MATLAB controller workflow first, then rerun
this script. An alternate source can be selected with `-GeneratedSource`.
The compiler, source origin and target are recorded in
`buildVEOS/toolchain_manifest.json`. CMake reuses `buildVEOS/acados`.

## Compile and select the S-function in MATLAB R2026a

With the project open:

```matlab
build_controller_veos
which acados_solver_sfunction_ecu_vehicle_nmpc -all
```

The first result must be the MEX in `buildVEOS/c_generated_code`.
If another MEX is loaded, close models that use it and run:

```matlab
clear acados_solver_sfunction_ecu_vehicle_nmpc
activate_controller_veos
```

The existing fixed S-function name is retained. No SLX files are changed.
Project startup now prefers a successfully built `buildVEOS` S-function and
falls back to `build/simulink` only if the new binary is absent. For the
already-open MATLAB session call `activate_controller_veos` explicitly.
Compiling this Windows MEX does not require the acados MATLAB setup routine;
it selects the dSPACE GCC MEX options explicitly for this invocation.

Initialize the controller where its blocks actually live. For the controller
pasted into ASM_Traffic:

```matlab
prepared = ecu.control.prepare_controller();
initialize_controller(prepared, Model="ASM_Traffic", ExecutionModel="ASM_Traffic");
```

## DSRT/VEOS dependencies

The S-function folder contains its own `rtwmakecfg.m`. It registers installed
acados/HPIPM/BLASFEO headers, static libraries and Windows VEOS binary platform
`VEOS_WIN64_GCC`. Acados 0.5.4 deliberately names its MinGW static archives
`acados.lib`, `hpipm.lib`, and `blasfeo.lib`; do not rename them to Linux `.a`.

The existing extracted ASM application currently selects HostPCLinux64 with
GCC 10.3_lx. Select Windows HostPC64/GCC in the actual VEOS application build
configuration and regenerate the application. Changing this acados toolchain
does not change the ASM application platform. Do not infer the execution OS
from the DSRT 32/64-bit architecture label.

The existing root Out Bus Element unsupported-dimension error is independent
of the compiler/library build. This workflow does not modify that interface
or claim that the whole ASM application builds successfully.

## Layout

- `buildVEOS/acados`: reusable CMake build tree.
- `buildVEOS/install/include`: target headers.
- `buildVEOS/install/lib`: static Windows libraries.
- `buildVEOS/c_generated_code`: imported generated sources, MEX, DSRT hook.
- `buildVEOS/controller_sources.json`: explicit S-function source list.
- `buildVEOS/ocp.json`: imported controller description (if available).

The old desktop build and dependency installation are not replaced.
