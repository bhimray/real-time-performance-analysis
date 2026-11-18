
## Fixed controller build directory
build_controller now uses one folder: <external_build_root>/controller
(or the default cache root/controller when no external root is set).
The solver name is always ecu_vehicle_nmpc. Repeated calls with matching
source/toolchain fingerprint and initialization reuse the compiled solver.
Configuration or initialization changes trigger a rebuild in the same folder.
Close active solver handles and stop simulations before replacing a changed
build; on a locked MEX/DLL restart MATLAB. Historical build folders are retained.
The existing third argument remains accepted for compatibility; all builds
now use the stable solver name and disable automatic model creation.
