function check_foundation()
%CHECK_FOUNDATION Verify the project can resolve its own configuration.
p = currentProject;
root = char(p.RootFolder);
assert(strcmp(erase(version('-release'),'R'),'2025b'),'Use the selected MATLAB release R2025b.');
cfg = project_config();
assert(cfg.controller_period_s/cfg.plant_step_s == 50);
assert(cfg.horizon_intervals*cfg.controller_period_s == 2);
required = {'docs/STATUS.md','docs/INTERFACES.md','dependencies/toolchain.json', ...
    'experiments/week02/protocol.json','experiments/week03/protocol.json', ...
    'integrations/aurelion/README.md','integrations/asm/README.md'};
for k = 1:numel(required)
    assert(isfile(fullfile(root,required{k})),'Missing project file: %s',required{k});
end
jsondecode(fileread(fullfile(root,'dependencies','toolchain.json')));
fprintf('PASS: project structure, path resolution, configuration and manifest.\n');
fprintf('This is not a controller, solver, simulation or deployment test.\n');
end
