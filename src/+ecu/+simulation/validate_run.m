function report = validate_run(run, plan, availability)
%VALIDATE_RUN Verify logging integrity independently from solver convergence.
issues = strings(0,1);
required = string(plan.channels.requirement) == "debug";
if plan.options.LoggingProfile == "research"
    required = required | string(plan.channels.requirement) == "research";
end
if plan.options.LoggingProfile == "timing"
    required = required | ismember(string(plan.channels.id), ...
        ["controller.solver.total_time","controller.step_time"]);
end
missing = required & ~availability.available;
issues = [issues; "Missing required signal: " + availability.id(missing)];
for index = 1:numel(run.signals)
    signal = run.signals(index);
    t = signal.time_s;
    expectedStep = plan.plant_step_s;
    if signal.rate == "controller"
        expectedStep = plan.controller_period_s;
    end
    if isempty(t) || any(~isfinite(t)) || any(diff(t) <= 0)
        issues(end+1) = "Invalid timestamps: " + signal.id; %#ok<AGROW>
    elseif abs(t(1)) > 1e-8 || any(abs(diff(t)-expectedStep) > 1e-8)
        issues(end+1) = "Unexpected start/rate: " + signal.id; %#ok<AGROW>
    end
    expectedEnd = plan.options.StopTime;
    if signal.rate == "controller"
        expectedEnd = max(0,(ceil(plan.options.StopTime/expectedStep)-1)*expectedStep);
    end
    if ~isempty(t) && abs(t(end)-expectedEnd) > 1e-8
        issues(end+1) = "Missing endpoint: " + signal.id; %#ok<AGROW>
    end
end
try
    cap = ecu.analysis.get_signal(run,"execution.cap");
    iterations = ecu.analysis.get_signal(run,"controller.solver.iterations");
    assert(isequal(cap.time_s,iterations.time_s),'Cap/iteration times differ.');
    if any(~isfinite(iterations.values) | iterations.values < 0 | ...
            iterations.values ~= floor(iterations.values),'all') || ...
            any(cap.values ~= plan.options.IterationCap,'all') || ...
            any(iterations.values > cap.values,'all')
        issues(end+1) = "Requested cap differs from actual cap/iteration records.";
    end
    enable = ecu.analysis.get_signal(run,"execution.enable");
    if ~all(enable.values,'all')
        issues(end+1) = "Controller was disabled during the requested baseline.";
    end
    reset = ecu.analysis.get_signal(run,"execution.reset");
    if any(reset.values,'all')
        issues(end+1) = "Unexpected reset in baseline records.";
    end
    for index = 1:numel(run.signals)
        signal = run.signals(index);
        if signal.rate == "controller" && ~isequal(signal.time_s,cap.time_s)
            issues(end+1) = "Controller sample alignment mismatch: " + signal.id; %#ok<AGROW>
        end
    end
catch exception
    issues(end+1) = string(exception.message);
end
try
    x = ecu.analysis.get_signal(run,"controller.measurement.x");
    vx = ecu.analysis.get_signal(run,"controller.measurement.vx");
    s = ecu.analysis.get_signal(run,"controller.measurement.s");
    actual = [x.values(:,1);vx.values(1);s.values(1)];
    if norm(actual-plan.variables.plantInitialState,Inf) > 1e-8
        issues(end+1) = "Initial controller measurement differs from requested state.";
    end
catch exception
    issues(end+1) = string(exception.message);
end
for id = ["controller.measurement.x","controller.measurement.vx", ...
        "controller.measurement.s","command.applied.Fx","command.applied.Fy","command.applied.Mz", ...
        "command.candidate.Fx","command.candidate.Fy","command.candidate.Mz", ...
        "controller.solver.status","controller.solver.cost", ...
        "controller.solver.residuals","controller.solver.slacks", ...
        "controller.solver.total_time","controller.solver.qp_time", ...
        "controller.solver.linearization_time","controller.step_time"]
    try
        signal = ecu.analysis.get_signal(run,id);
        if any(~isfinite(signal.values),'all')
            issues(end+1) = "Nonfinite values: " + id; %#ok<AGROW>
        end
        if endsWith(id,"_time") && any(signal.values < 0,'all')
            issues(end+1) = "Negative execution time: " + id; %#ok<AGROW>
        end
        if id == "controller.solver.status" && ...
                any(signal.values ~= floor(signal.values),'all')
            issues(end+1) = "Noninteger solver status.";
        end
    catch
        % Missing required signals are already reported above.
    end
end
try
    lengthSignal = ecu.analysis.get_signal(run,"controller.solver.history_length");
    n = lengthSignal.values;
    if any(~isfinite(n) | n < 1 | n > plan.config.max_iter+1 | n ~= floor(n))
        issues(end+1) = "Invalid solver history length.";
    end
catch
    % Optional for debug/timing profiles.
end
report.passed = isempty(issues);
report.issues = unique(issues,'stable');
report.profile = plan.options.LoggingProfile;
report.availability = table2struct(availability);
report.research_ready = false;
report.research_note = "Logging validation does not certify replay memory or hardware timing compliance.";
end
