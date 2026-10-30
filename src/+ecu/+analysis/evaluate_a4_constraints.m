function report = evaluate_a4_constraints(plant, inputs, instance, config, tolerance)
%EVALUATE_A4_CONSTRAINTS Check recorded motion, not solver horizon activity.
% Count one group per bounded quantity, matching the logger's eight groups.
% Each group is near-boundary, violated beyond tolerance, or comfortably feasible.
arguments
    plant struct
    inputs struct
    instance struct
    config struct
    tolerance (1,1) double {mustBePositive,mustBeFinite} = 1e-4
end

%% 1. Evaluate state constraints at every saved plant timestamp
time = plant.time_s(:).';
state = plant.state;
assert(size(state,1)==7 && size(state,2)==numel(time),'Invalid plant dimensions.');
assert(all(isfinite(state),'all') && all(isfinite(time)) && all(diff(time)>0), ...
    'Plant state/timestamps must be finite and ordered.');
obstacles = ecu.scenario.obstacle_states(instance,time);
index = ecu.control.parameter_layout();
values = zeros(5,numel(time)); lower = values; upper = values;
for k=1:numel(time)
    % Only entries consumed by the A4 helpers are needed for this check.
    p = zeros(config.np,1);
    p(index.vx) = state(6,k);
    p(index.s) = state(7,k);
    p(index.emin) = instance.road.bounds_m(1);
    p(index.emax) = instance.road.bounds_m(2);
    p(index.obstacle1) = [obstacles.s(1,k);obstacles.e(1,k); ...
        instance.obstacle_geometry.safety_semi_axes_m];
    p(index.obstacle2) = [obstacles.s(2,k);obstacles.e(2,k); ...
        instance.obstacle_geometry.safety_semi_axes_m];
    values(:,k) = ecu.control.constraint_expressions(state(1:5,k),p);
    [lower(:,k),upper(:,k)] = ecu.control.constraint_bounds( ...
        p,instance.friction_coefficient,config);
end
% Obstacle upper bounds are numerical infinity, not physical limits.
upper(4:5,:) = Inf;
stateScale = [1;0.5;1;1;1];
report.state = classify(time,values,lower,upper,stateScale,tolerance);
report.state.names = ["vy","gamma","road_e","obstacle_1","obstacle_2"];
report.state.labels = ["vy [m/s]","gamma [rad/s]","Road e [m]", ...
    "Obstacle 1 safety h","Obstacle 2 safety h"];

%% 2. Evaluate command bounds at their own timestamps
inputTime = inputs.time_s(:).';
inputValues = inputs.values;
if isempty(inputValues)
    inputValues = zeros(3,0);
end
assert(size(inputValues,1)==3 && size(inputValues,2)==numel(inputTime), ...
    'Expected three command components with matching timestamps.');
assert(all(isfinite(inputValues),'all') && all(isfinite(inputTime)) ...
    && all(diff(inputTime)>0),'Input values/timestamps must be finite and ordered.');
inputScale = [9000;9000;6000];
report.input = classify(inputTime,inputValues, ...
    repmat(config.lbu(:),1,numel(inputTime)), ...
    repmat(config.ubu(:),1,numel(inputTime)),inputScale,tolerance);
report.input.names = ["Fx","Fy","Mz"];
report.input.labels = ["Fx [N]","Fy [N]","Mz [N m]"];
report.input.kind = inputs.label;

%% 3. Count all eight groups at command ticks without interpolating
report.counts = table();
if ~isempty(inputTime)
    [matched,columns] = ismembertol(inputTime,time,1e-9,DataScale=1);
    assert(all(matched),'Command timestamps must match saved plant samples.');
    stateNear = sum(report.state.near_boundary(:,columns),1);
    inputNear = sum(report.input.near_boundary,1);
    stateViolated = sum(report.state.violated(:,columns),1);
    inputViolated = sum(report.input.violated,1);
    report.counts = table(inputTime.',stateNear.',inputNear.', ...
        (stateNear+inputNear).',stateViolated.',inputViolated.', ...
        (stateViolated+inputViolated).',VariableNames={'time_s', ...
        'state_near_count','input_near_count','total_near_count', ...
        'state_violation_count','input_violation_count','total_violation_count'});
end

%% 4. Summarize each group using its own sampling rate
report.summary = [summary(report.input);summary(report.state)];
report.tolerance = tolerance;
report.state_scale = stateScale;
report.input_scale = inputScale;
report.scope = "Recorded-motion constraints; "+inputs.label+"; not horizon-wide solver activity.";
report.definition = "Near: scaled distance to a bound <= tolerance. Violation: signed scaled margin < -tolerance.";
end

function result = classify(time,values,lower,upper,scale,tolerance)
distance = min(abs(values-lower),abs(upper-values))./scale;
margin = min(values-lower,upper-values)./scale;
result = struct('time_s',time,'values',values,'lower',lower,'upper',upper, ...
    'scaled_margin',margin,'near_boundary',distance<=tolerance, ...
    'violated',margin < -tolerance);
end

function rows = summary(result)
samples = repmat(numel(result.time_s),numel(result.names),1);
minimumMargin = nan(numel(result.names),1);
if ~isempty(result.time_s)
    minimumMargin = min(result.scaled_margin,[],2);
end
rows = table(result.names(:),samples,sum(result.near_boundary,2), ...
    sum(result.violated,2),minimumMargin,VariableNames={'constraint','samples', ...
    'near_boundary_samples','violation_samples','minimum_scaled_margin'});
end
