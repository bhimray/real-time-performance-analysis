function data = prepare_w2_plot_data(run)
%PREPARE_W2_PLOT_DATA Adapt canonical Simulink or legacy MATLAB run arrays.
% Plot functions receive only the quantities they need, not the entire run.
data.plant.time_s = run.plant.time_s;
data.plant.state = run.plant.state;
data.inputs = struct('time_s',[],'values',[],'label',"Unavailable");
data.solver.iterations = empty_signal();
data.solver.total_time = empty_signal();
data.solver.active_count = empty_signal();
data.slack = empty_signal();
data.notes = strings(0,1);
if isfield(run,'signals')
    for kind = ["applied","candidate"]
        ids = "command."+kind+"."+["Fx","Fy","Mz"];
        if all(ismember(ids,string({run.signals.id})))
            a = ecu.analysis.get_signal(run,ids(1));
            b = ecu.analysis.get_signal(run,ids(2));
            c = ecu.analysis.get_signal(run,ids(3));
            assert(isequal(a.time_s,b.time_s,c.time_s),'Input clocks differ.');
            data.inputs = struct('time_s',a.time_s, ...
                'values',[a.values;b.values;c.values],'label',kind+" commands");
            break
        end
    end
    data.solver.iterations = optional(run,"controller.solver.iterations");
    data.solver.total_time = optional(run,"controller.solver.total_time");
    active = optional(run,"controller.constraints.active");
    if ~isempty(active.values)
        data.solver.active_count = active;
        data.solver.active_count.values = sum(active.values,1);
    end
    slack = optional(run,"controller.solver.slacks");
    if ~isempty(slack.values)
        data.slack = slack;
        data.slack.values = max(slack.values,[],1);
    end
else
    data.solver.iterations = legacy(run,'sqp_iter');
    data.solver.total_time = legacy(run,'time_tot');
    data.slack = legacy(run,'slack_max');
    if isfield(run.plant,'input') && ~isempty(run.plant.input)
        data.inputs = struct('time_s',run.plant.time_s(1:end-1), ...
            'values',run.plant.input,'label',"applied commands");
    elseif isfield(run.log,'u_applied')
        data.inputs = struct('time_s',run.log.t,'values',run.log.u_applied, ...
            'label',"applied commands");
    end
end
% Older MATLAB runs store per-constraint flags in log.active.
if isempty(data.solver.active_count.values) && isfield(run,'log') ...
        && isfield(run.log,'active') && ~isempty(run.log.active)
    data.solver.active_count = struct('time_s',run.log.t, ...
        'values',sum(run.log.active,1));
end
if isempty(data.solver.active_count.values)
    data.notes(end+1) = "Active-constraint flags unavailable; panel left unpopulated.";
end
if data.inputs.label == "candidate commands"
    data.notes(end+1) = "Inputs show candidate commands; applied commands were not logged.";
end
if isempty(data.inputs.values)
    data.notes(end+1) = "Input commands unavailable.";
end
end

function signal = empty_signal()
signal = struct('time_s',[],'values',[]);
end

function signal = optional(run,id)
signal = empty_signal();
if ismember(id,string({run.signals.id}))
    saved = ecu.analysis.get_signal(run,id);
    signal = struct('time_s',saved.time_s,'values',saved.values);
end
end

function signal = legacy(run,field)
signal = empty_signal();
if isfield(run.log,field) && ~isempty(run.log.(field))
    signal = struct('time_s',run.log.t,'values',run.log.(field));
end
end
