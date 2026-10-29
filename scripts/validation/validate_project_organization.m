function report = validate_project_organization()
%VALIDATE_PROJECT_ORGANIZATION Inspect ownership, project paths and membership.
%   This read-only check does not compile a controller or run a simulation.

project = currentProject();
root = char(project.RootFolder);
report.schema_version = 1;
report.checked_utc = char(datetime('now', 'TimeZone', 'UTC'));

expected = {
    'run_matlab_closed_loop', 'experiments/week02/run_matlab_closed_loop.m'
    'plot_matlab_run', 'scripts/plotting/plot_matlab_run.m'
    'build_controller', 'scripts/build/build_controller.m'
    'build_controller_sfunction', 'scripts/build/build_controller_sfunction.m'
    'setup_controller_environment', 'scripts/setup/setup_controller_environment.m'
    'check_environment', 'scripts/setup/check_environment.m'
    'check_foundation', 'scripts/validation/check_foundation.m'
    'export_a6_lanes', 'scripts/scenarios/export_a6_lanes.m'
    'generate_a6_scenarios', 'scripts/scenarios/generate_a6_scenarios.m'
};

for index = 1:size(expected, 1)
    resolved = which(expected{index, 1});
    assert(strcmpi(resolved, fullfile(root, expected{index, 2})), ...
        'Wrong function path for %s: %s', expected{index, 1}, resolved);
end
report.entry_point_resolution_passed = true;

files = project.Files;
missing = {};
for index = 1:numel(files)
    name = char(files(index).Path);
    if ~isfile(name) && ~isfolder(name)
        missing{end + 1} = name; %#ok<AGROW>
    end
end
report.missing_project_files = missing;
assert(isempty(missing), 'The native project still contains missing file references.');

shortcuts = project.Shortcuts;
for index = 1:numel(shortcuts)
    assert(isfile(shortcuts(index).File), 'Shortcut points to a missing file.');
end
report.shortcut_targets_passed = true;

entries = dir(fullfile(root, '**', '*'));
inventory = struct('file', {}, 'bytes', {}, 'owner', {});
count = 0;
for index = 1:numel(entries)
    if entries(index).isdir
        continue;
    end
    relative = erase(fullfile(entries(index).folder, entries(index).name), [root, filesep]);
    parts = split(string(relative), filesep);
    if parts(1) == '.git' || (parts(1) == 'resources')
        continue;
    end
    count = count + 1;
    inventory(count).file = relative;
    inventory(count).bytes = entries(index).bytes;
    inventory(count).owner = char(parts(1));
end
report.file_inventory = inventory;
report.inventory_file_count = count;
report.root_files = {dir(fullfile(root, '*')).name};
report.active_lanes = 'scenarios/a6/lanes_0p01m';
report.archived_lanes = 'scenarios/a6/archive/lanes_0p5m';
assert(isfolder(fullfile(root, report.active_lanes)));
assert(isfolder(fullfile(root, report.archived_lanes)));
assert(~isfolder(fullfile(root, 'scenarios', 'a6', 'lanes')));

check_foundation();
report.passed = true;
fprintf('PASS: folder ownership, entry points, shortcuts and project files.\n');

end
