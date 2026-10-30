# Week 2 figure placement for Word

Use w2_report.md as the editable report text. Keep the traffic table before the
family sections. Insert a Word page break before each family heading to retain
one results page per family; put supporting figures in an appendix at a readable
size. Adjust image size after insertion rather than changing the data.

All report images are in **experiments/week02/figures/w2_report/**. They were
regenerated from the saved archives with obstacle snapshots at 0, 2 and 4 s.

| Report section | Main results page | Appendix states and inputs | Appendix solver | Appendix slack |
|---|---|---|---|---|
| F1 | Figure 1: F1_trajectory.png | Figure 2: F1_states_inputs.png | Figure 3: F1_solver.png | Figure 4: F1_slack_max.png |
| F2 | Figure 5: F2_trajectory.png | Figure 6: F2_states_inputs.png | Figure 7: F2_solver.png | Figure 8: F2_slack_max.png |
| F3 | Figure 9: F3_trajectory.png | Figure 10: F3_states_inputs.png | Figure 11: F3_solver.png | Figure 12: F3_slack_max.png |
| F4 | Figure 13: F4_trajectory.png | Figure 14: F4_states_inputs.png | Figure 15: F4_solver.png | Figure 16: F4_slack_max.png |

Insert each main trajectory below that family's measurement table, followed by
the caption already in the report. In Word, choose Insert > Pictures > This
Device and select the corresponding PNG. Preserve aspect ratio. Use full width
for the detailed states/input panels; avoid shrinking ten panels into a small
thumbnail. Use Word's caption feature to keep numbering consistent.

Appendix captions:

- States and inputs: "Figure N. F# recorded plant states and candidate commands."
- Solver: "Figure N. F# SQP iterations, solver execution time and recorded near-boundary group count."
- Slack: "Figure N. F# maximum logged solver slack over the prediction horizon."

Optional supplementary constraint evidence is supplied as F1_constraints.png
through F4_constraints.png. Place these after Figure 16 if detailed A4 evidence
is needed; caption them Supplementary Figures S1–S4. Their count plots refer to
recorded motion/commands, not horizon-wide optimizer activity.

Numerical provenance and archive checksums are in w2_report_evidence.json.
No controller implementation listings are needed in the report. The supplied
deliverable is Markdown plus images; it is not a compiled Word document.
