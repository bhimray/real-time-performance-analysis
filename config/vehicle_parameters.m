function vehicle = vehicle_parameters()
%VEHICLE_PARAMETERS Return the physical vehicle constants from Sheet A3.
%
%   All values use SI units. Cy is the lateral stiffness of one tire;
%   it is not the combined stiffness of an axle.

vehicle.m = 1723;         % Vehicle mass [kg].
vehicle.Iz = 1960;        % Yaw moment of inertia [kg m^2].
vehicle.lf = 1.232;       % CG-to-front-axle distance [m].
vehicle.lr = 1.468;       % CG-to-rear-axle distance [m].
vehicle.Cy = 62700;       % Lateral stiffness per tire [N/rad].
vehicle.track = 1.539;    % Track width [m].
vehicle.Rw = 0.31;        % Wheel radius [m].
vehicle.g = 9.81;         % Gravitational acceleration [m/s^2].

end
