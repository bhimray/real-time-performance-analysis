# Open questions
These do not block folder creation; resolve before the affected implementation or experiment.

## Integration
- Existing Week 2 code locations and verified behavior.
- Pinned acados/CasADi/compiler and dSPACE release compatibility with MATLAB R2025b.
- ECU model/processor/OS and where controller and plant execute.
- SCALEXIO role, communication interfaces, sample synchronization and failure policy.
- AURELION release, native project format, asset management and connection to ASM.
- Confirmed scheduling/performance improvement methods after the baseline study.

## Specification checks
Preserve source documents unchanged. Do not silently correct experiment requirements.
- W3 step 5 expects cost agreement after changing N=40 to N=20, while A5 requires an unweighted sum of stage costs. A sum of comparable stage values generally changes with the number of samples. Clarify the intended normalization and test before implementing the pass criterion.
- A8 calls Uscale=[9000,9000,6000] the input half-ranges, but Fx bounds [-9000,4500] have half-range 6750. Confirm whether the explicit scale vector or the prose is authoritative.
- A8 defines lneeded over every cap 1:40; W3 specifies a sparse cap list. Report smallest tested qualifying cap separately unless all caps are evaluated.
- A8 normalizes timing using the first 500 F1 instances, while A6 specifies 300 scenario instances. Clarify whether this means solve samples.
- Reaching the iteration cap does not alone establish a particular termination status; verify the pinned solver's status semantics, including convergence at the cap.
- Reproducibility comparisons must distinguish numerical fields from timing and timestamp fields.
