function [data, context] = load_w2_plot_groups(files)
%LOAD_W2_PLOT_GROUPS Read named group files and prepare arrays for plotting.
% No plotting, resampling or changes to the source data happen here.
vehicle = read_group(files.vehicle,"vehicle");
solver = read_group(files.solver,"solver_summary");
timing = read_group(files.timing,"timing");
groups = {vehicle,solver,timing};

if isfield(files,'commands') && strlength(files.commands)>0
    commands = read_group(files.commands,["commands_applied","commands_candidate"]);
    groups{end+1} = commands;
end
if isfield(files,'active') && strlength(files.active)>0
    groups{end+1} = read_group(files.active,strings(0,1));
end

% Reject accidentally mixing files from different experiments.
run.id = vehicle.run_id;
run.signals = vehicle.signals([]);
for k=1:numel(groups)
    group = groups{k};
    assert(string(group.run_id)==string(run.id), ...
        'ecu:MixedRuns','Selected group files belong to different runs.');
    run.signals = [run.signals,reshape(group.signals,1,[])];
end
ids = string({run.signals.id});
assert(numel(unique(ids))==numel(ids),'Duplicate signal IDs in selected groups.');

state = ecu.analysis.get_signal(run,"vehicle.state");
run.plant = struct('time_s',state.time_s,'state',state.values);
assert(size(state.values,1)==7,'Expected the seven-state plant vector.');

% request.mat supplies road/obstacle definitions and the exact saved bounds.
saved = load(files.context,'plan');
assert(isfield(saved,'plan'),'Context file must contain the saved plan.');
plan = saved.plan;
run.instance = plan.instance;
run.config = plan.config;
expectedPrefix = sprintf('F%d_I%04d_',plan.instance.family_id,plan.instance.instance_id);
assert(startsWith(string(run.id),expectedPrefix), ...
    'Context family/instance does not match the group run ID.');

data = ecu.analysis.prepare_w2_plot_data(run);
data.constraints = ecu.analysis.evaluate_a4_constraints( ...
    data.plant,data.inputs,run.instance,run.config);
if isempty(data.solver.active_count.values) && width(data.constraints.counts)>0
    data.notes(data.notes=="Active-constraint flags unavailable; panel left unpopulated.") = ...
        "Horizon activity unavailable; solver panel shows recorded near-boundary groups instead.";
end
context = struct('run_id',run.id,'instance',run.instance,'config',run.config);
end

function group = read_group(path, expectedName)
assert(isfile(path),'Missing group file: %s',path);
saved = load(path,'group');
assert(isfield(saved,'group'),'File must contain a group structure: %s',path);
group = saved.group;
if ~isempty(expectedName)
    assert(ismember(string(group.name),expectedName), ...
        'Unexpected data group %s in %s.',string(group.name),path);
end
end
