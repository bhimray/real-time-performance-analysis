function states = obstacle_states(instance, time)
%OBSTACLE_STATES Evaluate the actual traffic motion specified in A6.
%
%   TIME may be a scalar or vector of nonnegative seconds.
%   Each returned motion array is 2-by-numel(TIME):
%     s            : Path station [m].
%     e            : Lateral position [m].
%     speed        : Along-path speed [m/s].
%     acceleration : Active acceleration [m/s^2].
%
%   The lead vehicle (obstacle 1) cruises until t=1 s, brakes, and remains stationary
%   after stopping. The target vehicle (obstacle 2) travels at constant speed.

validateattributes(time, {'double'}, ...
    {'vector', 'nonempty', 'real', 'finite', 'nonnegative'});

time = time(:).';

states.time_s = time;
states.s = zeros(2, numel(time));
states.e = zeros(2, numel(time));
states.speed = zeros(2, numel(time));
states.acceleration = zeros(2, numel(time));

%% Evaluate each vehicle analytically, without integration error

for obstacleIndex = 1:2
    obstacle = instance.obstacles(obstacleIndex);

    initialSpeed = obstacle.initial_speed_mps;
    acceleration = obstacle.acceleration_mps2;
    brakingStart = obstacle.braking_start_s;

    if acceleration < 0
        timeToStop = initialSpeed / (-acceleration);
        elapsedBraking = max(time - brakingStart, 0);
        movingBrakingTime = min(elapsedBraking, timeToStop);

        cruiseDistance = initialSpeed * min(time, brakingStart);

        brakingDistance = initialSpeed * movingBrakingTime ...
            + 0.5 * acceleration * movingBrakingTime.^2;

        states.s(obstacleIndex, :) = obstacle.initial_station_m ...
            + cruiseDistance + brakingDistance;

        states.speed(obstacleIndex, :) = ...
            max(initialSpeed + acceleration * movingBrakingTime, 0);

        brakingActive = time >= brakingStart & elapsedBraking < timeToStop;

        states.acceleration(obstacleIndex, brakingActive) = acceleration;

    else
        % The only non-braking obstacle in A6 is the constant-speed target.
        states.s(obstacleIndex, :) = ...
            obstacle.initial_station_m + initialSpeed * time;

        states.speed(obstacleIndex, :) = initialSpeed;
    end

    states.e(obstacleIndex, :) = obstacle.lateral_position_m;
end

end
