function [steering_wheel_deg, drive_torque_Nm, brake_torque_Nm, uPred] = ...
    asm_coordinated_actuator_adapter(u, vx, vy, r, steering_ratio, config, ...
    delta, FyWheel, Fz, mu, driveMax, brakeMax, tol)
%#codegen
% Steering uses the existing A11 path. Allocate torque at the measured
% road-wheel angles and lateral forces for the current controller sample.
% Wheel vectors are 4x1 in FL, FR, RL, RR order.
% delta is in rad, forces in N, torque limits in Nm, and mu is dimensionless.
% tol is [Fx tolerance (N); Fy tolerance (N); Mz tolerance (Nm)].
% uPred is the predicted body-frame [Fx; Fy; Mz] for this sample.
% The wheel lateral forces are held fixed during torque allocation.

steering_wheel_deg = asm_actuator_adapter(u, vx, vy, r, steering_ratio, config);

assert(isequal(size(delta),[4,1]) && isequal(size(FyWheel),[4,1]) && ...
    isequal(size(Fz),[4,1]) && isequal(size(mu),[4,1]) && ...
    isequal(size(driveMax),[4,1]) && isequal(size(brakeMax),[4,1]) && ...
    isequal(size(tol),[3,1]), 'Invalid wheel allocation input dimensions.');
inputs = [delta; FyWheel; Fz; mu; driveMax; brakeMax; tol];
assert(isreal(inputs) && all(isfinite(inputs)), 'Invalid wheel allocation inputs.');
assert(all(Fz >= 0 & mu >= 0 & driveMax >= 0 & brakeMax >= 0) && ...
    all(tol > 0), 'Invalid wheel loads, friction, torque limits or tolerances.');

vehicle = config.vehicle;
assert(isreal(vehicle.lr) && isfinite(vehicle.lr) && vehicle.lr > 0, ...
    'Invalid rear CoG-to-axle distance.');
radius = vehicle.Rw;
halfTrack = vehicle.track/2;
x = [vehicle.lf; vehicle.lf; -vehicle.lr; -vehicle.lr];
y = halfTrack*[1; -1; 1; -1];
c = cos(delta);
s = sin(delta);
A = [c.'; s.'; (x.*s - y.*c).'];
G = [-s.'; c.'; (x.*c + y.*s).'];
uLateral = G*FyWheel;

% An already saturated tire has no remaining longitudinal capacity.
gripSquared = (mu.*Fz).^2 - FyWheel.^2;
assert(all(isfinite(gripSquared)), 'Invalid remaining tire grip.');
grip = sqrt(max(gripSquared,0));
lower = max(-grip, -brakeMax/radius);
upper = min( grip,  driveMax/radius);

% Scale the three tracking errors by their requested tolerances.
B = A./tol;
target = (u-uLateral)./tol;
X = pinv(B)*target;
if any(X < lower | X > upper)
    X = bounded_least_squares(B,target,lower,upper);
end

uPred = A*X + uLateral;

T = radius*X;
drive_torque_Nm = max(T, zeros(4,1));
brake_torque_Nm = max(-T, zeros(4,1));
end

function best = bounded_least_squares(B,target,lower,upper)
% Each wheel is free, at its lower bound, or at its upper bound.
% Enumerate the 3^4 faces of the box and minimize on each feasible face.
best = zeros(4,1);
bestError = norm(target);
errorSlack = 64*eps(max(1,bestError));
boundSlack = 64*eps(max(1,max(abs([lower;upper]))));
for face = 1:80
    code = face;
    fixed = zeros(4,1);
    free = true(4,1);
    for wheel = 1:4
        state = mod(code,3);
        code = floor(code/3);
        if state == 1
            fixed(wheel) = lower(wheel);
            free(wheel) = false;
        elseif state == 2
            fixed(wheel) = upper(wheel);
            free(wheel) = false;
        end
    end

    freeMap = B.*free.';
    candidate = fixed + pinv(freeMap)*(target-B*fixed);
    % Allow roundoff at a face boundary, then enforce the bounds exactly.
    if any(candidate < lower-boundSlack | candidate > upper+boundSlack)
        continue
    end
    candidate = min(max(candidate,lower),upper);
    trackingError = norm(B*candidate-target);
    if trackingError < bestError-errorSlack || ...
            (abs(trackingError-bestError) <= errorSlack && norm(candidate) < norm(best))
        best = candidate;
        bestError = trackingError;
    end
end
end
