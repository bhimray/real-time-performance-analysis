# Linux VEOS controller libraries

This workflow cross-compiles on Windows using the same dSPACE GCC 10.3.0
`x86_64-linux-gnu` compiler selected by the existing HostPCLinux64 ASM build.
It does not install Linux or change the Windows MATLAB S-function binary.

## Rebuild

From PowerShell in the project root:

```powershell
& .\scripts\build\Build-VEOS-Linux.ps1
```

Outputs are reused in `buildVEOS/linux`:

- `acados`: CMake build tree.
- `install/include`: Linux-target acados, HPIPM and BLASFEO headers.
- `install/lib/libacados.a`, `libhpipm.a`, `libblasfeo.a`: static Linux archives.
- `toolchain_manifest.json`: compiler, architecture and source provenance.

On success, the script selects `VEOS_LINUX64_GCC` in
`buildVEOS/veos_target.json` and publishes the dependency hook beside the
S-function in `buildVEOS/c_generated_code/rtwmakecfg.m`.
Both this active hook and its template in `scripts/build/rtwmakecfg_veos.m`
read that selection, so a later Windows MEX rebuild does not silently switch
the VEOS libraries back to Windows.

## Use in MATLAB

Close models using an older S-function before clearing it:

```matlab
clear acados_solver_sfunction_ecu_vehicle_nmpc
activate_controller_veos
which acados_solver_sfunction_ecu_vehicle_nmpc -all
```

The first MEX must be in `buildVEOS/c_generated_code`.
If model parameters need preparation for the pasted ASM controller:

```matlab
prepared = ecu.control.prepare_controller();
initialize_controller(prepared, Model="ASM_Traffic", ExecutionModel="ASM_Traffic");
```

Then regenerate the Linux VEOS application from ASM. The build must retain
HostPCLinux64/GCC with dSPACE GCC 10.3_lx. No SLX configuration or signal
interfaces are modified by this workflow.

The Windows MEX is for MATLAB simulation. VEOS compiles the generated
S-function C source for Linux and links these `.a` archives. Windows `.lib`
files must not enter the Linux link. The root Windows installation and MEX
remain available for host simulation.

## Verification scope

Library compilation and a Linux shared-object link check can run on Windows.
A Linux binary cannot be executed as an ordinary Windows executable.
Successful cross-linking does not establish runtime/controller correctness;
that requires a VEOS run. The previously reported unsupported Out Bus Element
dimension must still be addressed if it remains in the model.

Pre-change dependency hooks are preserved in
`buildVEOS/backups/before_linux`.
