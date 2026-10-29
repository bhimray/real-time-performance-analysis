function derivative = plant_rhs(plantState, appliedInput, context)
%PLANT_RHS Evaluate the seven-state simulation plant in Sheet A3.
%
%   plantState   : [e; psi; v; vy; gamma; vx; s] (7-by-1).
%   appliedInput : [Fx; Fy; Mz]                   (3-by-1).
%
%   Reuses the controller's five-state equations and adds the physical
%   longitudinal-velocity and station equations. No state is clamped.
%   Unlike prediction, vx evolves at every integration substage.

longitudinalVelocity = plantState(6);
station = plantState(7);

assert(station >= context.station_min_m && ...
    station <= context.station_max_m, ...
    'ecu:PlantReferenceRange', ...
    'Plant station exceeds the saved reference interval.');

%% Evaluate A3.1-A3.5 with the instantaneous plant velocity and station

parameters = context.parameter_template;

parameters(context.index.vx) = longitudinalVelocity;
parameters(context.index.s) = station;

trackingDerivative = ecu.model.vehicle_rhs( ...
    plantState(1:5), appliedInput, parameters, context.config);

%% A3.6 and station propagation

longitudinalForce = appliedInput(1);
lateralVelocity = plantState(4);
yawRate = plantState(5);
mass = context.config.vehicle.m;

longitudinalDerivative = longitudinalForce / mass ...
    + lateralVelocity * yawRate;

referenceSpeed = parameters(context.index.vr);
stationDerivative = plantState(3) + referenceSpeed;

derivative = [
    trackingDerivative
    longitudinalDerivative
    stationDerivative
];

end
