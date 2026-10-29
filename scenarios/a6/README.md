# A6 scenario families

| Family | Road | Friction | Road bounds m | Target gap m |
|---|---|---:|---|---|
| F1 | Straight | 0.9 | -1.75 to 5.25 | Uniform 15 to 40 |
| F2 | Constant curvature | 0.9 | -1.75 to 5.25 | Uniform 15 to 40 |
| F3 | Straight | 0.6 | -1.75 to 5.25 | Uniform 15 to 40 |
| F4 | Straight with adjacent lane blocked | 0.9 | -1.75 to 1.75 | Uniform -5 to 5 |

instances/ stores MAT and JSON fixtures. index.json lists their seeds and
main parameters. Default generation creates F1_0001 through F4_0001.
The generator supports IDs 1:300 in each family.

initial_scenarios.png shows the initial geometry in path coordinates.
It is a scenario preview, not a closed-loop controller result.
