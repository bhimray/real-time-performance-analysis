# Decisions
| ID | Decision | Reason |
|---|---|---|
| D001 | ECU_RealTime_Control_Performance | Name reflects the user's ECU computation-performance objective |
| D002 | MATLAB R2025b | Installed 2025 release; requested MATLAB 2025 |
| D003 | Start with Week 2 | User already knows the Week 1 workflow |
| D004 | Separate online logging and offline replay | Week 3 requires both |
| D005 | Reserve native vendor project directories | User will create AURELION; ASM connection comes later |
| D006 | Leave target topology unconfigured | ECU and hardware roles are not confirmed |

| D007 | User owns all Simulink model creation/editing | Explicit user instruction |
| D008 | Machine-local short generated-build cache on Windows | MinGW failed on long nested project paths |
| D009 | Reuse pinned acados v0.5.4 and local renderer shim | Existing SDV toolchain; no dependency upgrade |
