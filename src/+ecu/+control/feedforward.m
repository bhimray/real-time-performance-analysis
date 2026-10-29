function referenceInput = feedforward(parameters, config)
%FEEDFORWARD Compute the reference forces and yaw moment from Sheet A5.
%
%   parameters     : One A5 stage vector (19-by-1).
%   referenceInput : [Fx_reference; Fy_reference; Mz_reference] (3-by-1).
%
%   This function accepts numerical arrays and CasADi symbolic expressions.

%% Read path signals and physical constants

index = ecu.control.parameter_layout();

sideslip = parameters(index.psi_pvr);
referenceSpeed = parameters(index.vr);
speedDerivative = parameters(index.dvr);
pathCurvature = parameters(index.dpsi_pr);

headingDerivative = parameters(index.dpsi_pr) ...
    + parameters(index.dpsi_pvr);

headingSecondDerivative = parameters(index.ddpsi_pr) ...
    + parameters(index.ddpsi_pvr);

mass = config.vehicle.m;
yawInertia = config.vehicle.Iz;

%% Longitudinal and lateral force references

longitudinalForce = mass * ( ...
    cos(sideslip) * speedDerivative * referenceSpeed ...
    + sin(sideslip) * pathCurvature * referenceSpeed^2 ...
);

lateralForce = mass * ( ...
    cos(sideslip) * pathCurvature * referenceSpeed^2 ...
    - sin(sideslip) * speedDerivative * referenceSpeed ...
);

%% Yaw-moment reference

yawMoment = yawInertia * ( ...
    headingSecondDerivative * referenceSpeed^2 ...
    + headingDerivative * speedDerivative * referenceSpeed ...
);

referenceInput = vertcat(longitudinalForce, lateralForce, yawMoment);

end
