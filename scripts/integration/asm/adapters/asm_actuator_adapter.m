function [steering_wheel_deg, drive_torque_Nm, brake_torque_Nm] = ...
    asm_actuator_adapter(u, vx, vy, r, steering_ratio, config)
    
% Small-angle total-force and residual-yaw allocation.
%#codegen
% Linear tires, forward speed away from zero, independent wheel actuation.
% Set config to Parameter scope in the MATLAB Function block.
% Use the existing numeric controller configuration containing config.vehicle.
% u=[Fx;Fy;Mz] in N,N,Nm; vx,vy in m/s; r in rad/s.
% steering_ratio = steering-wheel angle / equivalent front road-wheel angle.
% Outputs: steering-wheel deg and wheel torques [FL;FR;RL;RR] in Nm.
% Baseline assumes forward motion and independent wheel drive/brake commands.

assert(isequal(size(u),[3,1]), 'u must be a 3-by-1 vector [Fx;Fy;Mz].');
assert(isreal(u) && all(isfinite(u)), 'Command u must be real and finite.');
assert(isscalar(vx) && isscalar(vy) && isscalar(r) && isscalar(steering_ratio), ...
    'vx, vy, r and steering_ratio must be scalars.');
assert(isreal(vx) && isreal(vy) && isreal(r) && isreal(steering_ratio) && ...
    isfinite(vx) && isfinite(vy) && isfinite(r) && isfinite(steering_ratio), ...
    'Measurements and steering ratio must be real and finite.');
assert(vx > 0, 'Linear tire conversion requires forward speed vx > 0.');
assert(steering_ratio > 0, 'Steering ratio must be positive.');
assert(all(u >= config.lbu - config.tolerance & u <= config.ubu + config.tolerance), ...
    'Controller command exceeds the configured force or moment bounds.');

% Reuse controller vehicle parameters; Cy is stiffness of ONE tire.

lf = config.vehicle.lf;
lr = config.vehicle.lr;
Cf = 2*config.vehicle.Cy; % Front AXLE cornering stiffness [N/rad].
Cr = Cf; % Rear AXLE stiffness, using the existing equal-tire assumption.
R = config.vehicle.Rw;
b = config.vehicle.track;
assert(all(isfinite([lf;lr;Cf;R;b])) && all([lf;lr;Cf;R;b] > 0), ...
    'Vehicle geometry and tire stiffness must be positive and finite.');

% 1. Estimate rear lateral force, then request the remaining front force.
Fyf_des = u(2);

% 2. Invert the front tire model and retain the existing +/-30 degree limit.
delta_raw = Fyf_des/(Cf) + (vy + lf*r)/vx;
assert(isfinite(delta_raw), 'Road-wheel steering calculation is nonfinite.');
delta_f = min(max(delta_raw,-pi/6),pi/6);
steering_wheel_deg = steering_ratio*delta_f*180/pi;

% 3. Recompute lateral yaw after steering limiting.
Mz_tv = u(3);

% 4. Small-angle allocation; b is FULL track width for both axles.
baseTorque = u(1)*R/4;
yawIncrement = Mz_tv*R/(b);
T = baseTorque + yawIncrement*[-1;1;-1;1];
% 5. Split signed torques for forward wheel rotation.
drive_torque_Nm = max(T,zeros(4,1));
brake_torque_Nm = max(-T,zeros(4,1));
assert(isfinite(steering_wheel_deg) && all(isfinite(T)), ...
    'Actuator conversion produced a nonfinite value.');
end
