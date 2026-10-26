# Week 3 measurement instrument
Keep the W2 formulation unchanged. Extend online logging and capture complete frozen instances.
Implement resolve_instance in +replay with saved-warm-start and canonical-cold-start modes.
Implement sweep_cap with an independent reset to the saved initialization for each cap.
Compute quality errors, basin flags, verified multipliers and input sensitivities offline.
Validate on F1/1 and F4/1 at caps 200 and 3, processing every eighth sample.
Verify multipliers/sensitivities on 20 logged instances (5 per family); F2/F3 data are additionally required.
Produce calibration tables, quality curves, iteration-needed distributions and success/basin fractions.
Resolve OPEN_QUESTIONS.md before coding acceptance criteria. Record convergence failures rather than treating their outputs as optimal references.
