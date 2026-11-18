# Experiment stage folders

Set ExperimentStage to w2 or w3 when preparing or executing an experiment:

```matlab
result = run_simulink_closed_loop(ExperimentStage="w2");
result = run_simulink_closed_loop(ExperimentStage="w3",IterationCap=3);
plan = plan_simulink_run(ExperimentStage="w3");
```

The default is w2. The folder structure is:

```text
results/simulink/w2/F1_I0001_mu0p9_cap200_T8/data/groups
results/simulink/w3/F1_I0001_mu0p9_cap200_T8/data/groups
```

Stage separates outputs without changing the simulation settings or readable
run name. Same-stage reruns keep the existing replacement behavior. ResultsRoot
in prepare_vehicle is the base output folder; the stage is appended to it. Do
not include w2/w3 in ResultsRoot itself. Metadata records the selected stage.

The plotting runner uses experimentStage alongside projectRoot and runName.
The relative-path loader already derives metadata and plots from that run
directory, so no other plotting functions require changes.

catalog searches the base recursively, returning experiment_stage as a column:

```matlab
runs = ecu.simulation.catalog(fullfile(currentProject().RootFolder, ...
    "results","simulink"));
week3 = runs(runs.experiment_stage == "w3",:);
```

Existing flat results are not moved. They remain discoverable with an empty
experiment_stage because the original stage was not recorded. To plot an old
flat run, point its plotting input files to its original directory. New runs
use the selected stage folder; an already running simulation is unaffected.
