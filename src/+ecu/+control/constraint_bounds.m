function [lowerBounds, upperBounds] = constraint_bounds( ...
    parameters, frictionCoefficient, config)
%CONSTRAINT_BOUNDS Compute the stability, road and obstacle bounds in A4.
%
%   parameters          : One A5 stage vector (19-by-1).
%   frictionCoefficient : Scenario friction coefficient mu (positive scalar).
%
%   Bounds follow [vy; gamma; e; obstacle1; obstacle2].
%   Friction affects these bounds; it is not an extra model parameter.

%% Validate quantities used in divisions and geometric constraints

validateattributes(parameters, {'double'}, ...
    {'size', [config.np, 1], 'finite', 'real'});

validateattributes(frictionCoefficient, {'double'}, ...
    {'scalar', 'positive', 'finite', 'real'});

index = ecu.control.parameter_layout();
longitudinalSpeed = parameters(index.vx);

assert(longitudinalSpeed > 0, ...
    'ecu:NonpositiveSpeed', ...
    'A4 divides by vx; no low-speed rule is specified.');

assert(parameters(index.emin) < parameters(index.emax), ...
    'ecu:RoadBounds', ...
    'Invalid road bounds.');

obstacleAxes = parameters([12, 13, 16, 17]);

assert(all(obstacleAxes > 0), ...
    'ecu:ObstacleAxes', ...
    'Obstacle axes must be positive.');

%% Stability-envelope magnitudes

gravity = config.vehicle.g;

lateralVelocityLimit = ...
    0.02 * frictionCoefficient * gravity * longitudinalSpeed;

yawRateLimit = ...
    0.85 * frictionCoefficient * gravity / longitudinalSpeed;

%% Bounds for stability, road position and obstacle ellipses

% acados uses 1e15 as numerical infinity. Obstacle constraints therefore
% have a zero lower bound and an effectively unbounded upper side.
numericalInfinity = 1e15;

lowerBounds = [
    -lateralVelocityLimit
    -yawRateLimit
    parameters(index.emin)
    0
    0
];

upperBounds = [
    lateralVelocityLimit
    yawRateLimit
    parameters(index.emax)
    numericalInfinity
    numericalInfinity
];

end
