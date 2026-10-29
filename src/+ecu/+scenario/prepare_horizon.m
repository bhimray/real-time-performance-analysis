function parameters = prepare_horizon( ...
    instance, time, measuredStation, measuredLongitudinalSpeed, ...
    previousSpeedErrors, controllerConfig, referenceData)
%PREPARE_HORIZON Build the A5 stage-parameter matrix from one A6 instance.
%
%   parameters : 19-by-(N+1), ready for controller_step.
%
%   previousSpeedErrors is the N-by-1 or 1-by-N speed-error trajectory aligned
%   with the current horizon. Pass warmStart.x(3,1:N) after the A5 shift.
%   At the first sample, pass [] to predict station from reference speed.
%
%   Optional referenceData is loaded once by load_lane_data. When provided,
%   path signals are sampled from that structure instead of recomputed.
%
%   Obstacle prediction uses CURRENT speed and CURRENT acceleration, clipped
%   at zero speed, as A4 specifies. It does not reveal future braking onset
%   before that onset has occurred in the actual A6 traffic motion.

%% Validate sample inputs and align the previous solution

validateattributes(time, {'double'}, ...
    {'scalar', 'nonnegative', 'real', 'finite'});

validateattributes(measuredStation, {'double'}, ...
    {'scalar', 'real', 'finite'});

validateattributes(measuredLongitudinalSpeed, {'double'}, ...
    {'scalar', 'positive', 'real', 'finite'});

numberOfIntervals = controllerConfig.N;
sampleTime = controllerConfig.Ts;

assert(sampleTime == instance.timing.controller_period_s, ...
    'ecu:ScenarioSampleTime', ...
    'A6 scenario and controller sample times must agree.');

if isempty(previousSpeedErrors)
    previousSpeedErrors = zeros(1, numberOfIntervals);
else
    validateattributes(previousSpeedErrors, {'double'}, ...
        {'vector', 'numel', numberOfIntervals, 'real', 'finite'});

    previousSpeedErrors = previousSpeedErrors(:).';
end

%% Predict ego station from the previous speed-error trajectory

station = zeros(1, numberOfIntervals + 1);
station(1) = measuredStation;

referenceSpeed = instance.reference.speed_mps;

for column = 1:numberOfIntervals
    station(column + 1) = station(column) ...
        + sampleTime * (previousSpeedErrors(column) + referenceSpeed); %% since vehicle is traveling at some measured speed
                                                                       %% u can directly use the measured speed to compute station (future)
end

% The optional loaded lookup avoids file I/O inside the controller loop.
% Existing calls without referenceData retain analytical A6 preparation.
if nargin < 7 || isempty(referenceData)
    path = ecu.scenario.path_signals( ...
        instance, station, controllerConfig.vehicle);
else
    assert(isequaln(referenceData.instance, instance), ...
        'ecu:LaneScenarioMismatch', ...
        'Saved lane reference does not match the selected scenario.');

    assert(isequaln(referenceData.vehicle, controllerConfig.vehicle), ...
        'ecu:LaneVehicleMismatch', ...
        'Regenerate the saved reference for the current vehicle parameters.');

    path = ecu.scenario.sample_lane_reference(referenceData, station);
end

currentObstacles = ecu.scenario.obstacle_states(instance, time);
safetyAxes = instance.obstacle_geometry.safety_semi_axes_m;

%% Assemble the stage parameters using their shared named contract

parameters = zeros(controllerConfig.np, numberOfIntervals + 1);

for column = 1:(numberOfIntervals + 1)
    predictionTime = (column - 1) * sampleTime;

    stage.vx = measuredLongitudinalSpeed;
    stage.s = station(column);
    stage.psi_pvr = path.psi_pvr(column);
    stage.dpsi_pr = path.dpsi_pr(column);
    stage.dpsi_pvr = path.dpsi_pvr(column);
    stage.ddpsi_pr = path.ddpsi_pr(column);
    stage.ddpsi_pvr = path.ddpsi_pvr(column);
    stage.vr = path.vr(column);
    stage.dvr = path.dvr(column);

    stage.obstacles = zeros(4, 2);

    for obstacleIndex = 1:2
        currentSpeed = currentObstacles.speed(obstacleIndex);
        currentAcceleration = currentObstacles.acceleration(obstacleIndex);

        % Integrate only until the obstacle stops; never move it backward.
        movingTime = predictionTime;

        if currentAcceleration < 0
            movingTime = min(predictionTime, ...
                currentSpeed / (-currentAcceleration));
        end

        predictedStation = currentObstacles.s(obstacleIndex) ...
            + currentSpeed * movingTime ...
            + 0.5 * currentAcceleration * movingTime^2;

        stage.obstacles(:, obstacleIndex) = [
            predictedStation
            currentObstacles.e(obstacleIndex)
            safetyAxes(1)
            safetyAxes(2)
        ];
    end

    stage.emin = instance.road.bounds_m(1);
    stage.emax = instance.road.bounds_m(2);

    parameters(:, column) = ecu.control.pack_parameters(stage);
end

end
