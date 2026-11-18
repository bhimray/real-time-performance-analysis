# Simulation result directories

Folder names use only these readable parameters:

`F1_I0001_mu0p9_cap200_T8`

These fields are family, instance, friction coefficient, iteration cap and stop
time in seconds. There is no UUID, timestamp or cfg suffix. Logging changes do
not change the directory name. The current full settings and their checksum
remain recorded inside metadata/identity.json and the manifest for reference;
the checksum does not control folder selection or prevent reruns.

Runs sharing those five displayed values replace the same directory, including
when other configuration values change. Those other values are recorded in
metadata but do not distinguish folders. Reruns replace the owned data,
metadata and analysis subdirectories to prevent stale outputs. Other files are
left alone. Prior timestamp or cfg folders are not renamed or deleted.

An exclusive lock prevents concurrent writers to the same folder. After a
MATLAB crash, confirm no process is running the experiment before manually
removing its stale lock. Existing folders without matching identity ownership
metadata are not automatically replaced. Changes apply to future invocations.

The usual run command is unchanged. Preview the directory with:

```matlab
plan = ecu.simulation.prepare_vehicle( ...
    FamilyId=1, InstanceId=1, IterationCap=200);
identity = ecu.simulation.run_identity(plan);
disp(fullfile(plan.results_root,identity.id))
```
