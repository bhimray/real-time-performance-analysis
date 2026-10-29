function termination = check_termination( ...
    instance, time, egoStation, egoLateralError)
%CHECK_TERMINATION Evaluate the A6 stopping rules at the current sample.
%
%   Collision uses the smaller physical ellipse, NOT the safety ellipse.
%   The ellipse boundary is included as contact. Road departure is |e|>6 m.
%   Flags remain available even if more than one condition is true.
%
%   This function does not discard runs or alter the scenario.

validateattributes(time, {'double'}, ...
    {'scalar', 'real', 'finite', 'nonnegative'});

validateattributes(egoStation, {'double'}, ...
    {'scalar', 'real', 'finite'});

validateattributes(egoLateralError, {'double'}, ...
    {'scalar', 'real', 'finite'});

obstacles = ecu.scenario.obstacle_states(instance, time);
axes = instance.obstacle_geometry.collision_semi_axes_m;

ellipseValues = ((egoLateralError - obstacles.e) / axes(1)).^2 ...
    + ((egoStation - obstacles.s) / axes(2)).^2;

termination.collision_by_obstacle = ellipseValues <= 1;
termination.collision = any(termination.collision_by_obstacle);
termination.run_off = ...
    abs(egoLateralError) > instance.termination.run_off_limit_m;

termination.duration_reached = time >= instance.timing.duration_s;

termination.stop = termination.collision ...
    || termination.run_off || termination.duration_reached;

if termination.collision
    termination.reason = 'collision';
elseif termination.run_off
    termination.reason = 'run_off';
elseif termination.duration_reached
    termination.reason = 'completed';
else
    termination.reason = 'running';
end

end
