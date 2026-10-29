function constraintValues = constraint_expressions(state, parameters)
%CONSTRAINT_EXPRESSIONS Evaluate the nonlinear constraints from Sheet A4.
%
%   Output order: [vy; gamma; e; obstacle1; obstacle2].
%
%   Bounds are supplied separately by CONSTRAINT_BOUNDS. An obstacle value
%   below zero means that the predicted point lies inside its safety ellipse.
%   Inputs may be numeric arrays or CasADi symbolic expressions.

%% Read the relevant state and parameter entries

index = ecu.control.parameter_layout();

lateralError = state(1);
lateralVelocity = state(4);
yawRate = state(5);
station = parameters(index.s);

obstacle1 = parameters(index.obstacle1);
obstacle2 = parameters(index.obstacle2);

%% Ellipse expressions: ((e - eo) / a)^2 + ((s - so) / b)^2 - 1

obstacle1Value = ((lateralError - obstacle1(2)) / obstacle1(3))^2 ...
    + ((station - obstacle1(1)) / obstacle1(4))^2 - 1;

obstacle2Value = ((lateralError - obstacle2(2)) / obstacle2(3))^2 ...
    + ((station - obstacle2(1)) / obstacle2(4))^2 - 1;

%% Preserve this order in bounds, slacks and diagnostic interpretation

constraintValues = vertcat( ...
    lateralVelocity, ...
    yawRate, ...
    lateralError, ...
    obstacle1Value, ...
    obstacle2Value ...
);

end
