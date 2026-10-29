function stateDerivative = vehicle_rhs(state, input, parameters, config)
%VEHICLE_RHS Evaluate the five-state prediction dynamics in Sheet A3.
%
%   state      : [e; psi; v; vy; gamma]          (5-by-1)
%   input      : [Fx; Fy; Mz]                    (3-by-1)
%   parameters : Stage vector from Sheet A5      (19-by-1)
%   config     : Structure from CONTROLLER_CONFIG
%
%   Inputs may be numeric arrays or CasADi symbolic expressions.
%   Longitudinal speed vx is a parameter, not a prediction-model state.

%% Read the state, input and path quantities

index = ecu.control.parameter_layout();

headingError = state(2);
speedError = state(3);
lateralVelocity = state(4);
yawRate = state(5);

longitudinalForce = input(1);
lateralForce = input(2);
yawMoment = input(3);

longitudinalSpeed = parameters(index.vx);
referenceSpeed = parameters(index.vr);
sideslipCorrection = parameters(index.psi_pvr);
pathHeadingDerivative = parameters(index.dpsi_pr);
sideslipDerivative = parameters(index.dpsi_pvr);
referenceSpeedDerivative = parameters(index.dvr);

mass = config.vehicle.m;
yawInertia = config.vehicle.Iz;

%% Shared quantities

theta = headingError + sideslipCorrection;
stationRate = speedError + referenceSpeed;

%% A3.1: lateral tracking-error derivative

lateralErrorRate = longitudinalSpeed * sin(theta) ...
    + lateralVelocity * cos(theta);

%% A3.2: heading-error derivative

headingErrorRate = yawRate ...
    - (pathHeadingDerivative + sideslipDerivative) * stationRate;

%% A3.3: along-path speed-error derivative

% The curvature term uses lateralErrorRate (e_dot), not lateral error e.
speedErrorRate = ( ...
    longitudinalForce / mass * cos(theta) ...
    - lateralForce / mass * sin(theta) ...
    + pathHeadingDerivative * stationRate * lateralErrorRate ...
    - referenceSpeedDerivative * stationRate ...
);

%% A3.4 and A3.5: lateral velocity and yaw-rate derivatives

lateralVelocityRate = lateralForce / mass - longitudinalSpeed * yawRate;
yawRateDerivative = yawMoment / yawInertia;

%% Return derivatives in the same order as the state vector

stateDerivative = vertcat( ...
    lateralErrorRate, ...
    headingErrorRate, ...
    speedErrorRate, ...
    lateralVelocityRate, ...
    yawRateDerivative ...
);

end
