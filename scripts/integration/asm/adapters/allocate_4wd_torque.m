function [torque, achieved, residual, lateralOverLimit] = ...
    allocate_4wd_torque( ...
    command, ...
    deltaFL, ...
    deltaFR, ...
    FyWheel, ...
    FzWheel, ...
    mu, ...
    vehicle ...
    )
%ALLOCATE_4WD_TORQUE Convert a total body wrench to four wheel torques.
% command = [Fx; Fy; Mz] in N, N, Nm. Wheel order is [FL; FR; RL; RR].
% deltaF is the current front road-wheel steer angle in radians. Rear
% steering is zero. x is forward, y is left, positive yaw is a left turn.
% FyWheel is measured/estimated lateral force in each wheel frame [N].
% FzWheel is the current normal load magnitude [N]. mu is scalar or 4-by-1.
% vehicle uses the project's vehicle_parameters() fields lf, lr, track, Rw.
% torque is total wheel torque [Nm], positive for forward traction.
% residual = command - achieved. Requires Optimization Toolbox.

arguments
    command (3,1) double {mustBeReal, mustBeFinite}
    deltaFL (1,1) double {mustBeReal, mustBeFinite}
    deltaFR (1,1) double {mustBeReal, mustBeFinite}
    FyWheel (4,1) double {mustBeReal, mustBeFinite}
    FzWheel (4,1) double {mustBeReal, mustBeFinite, mustBeNonnegative}
    mu double {mustBeReal, mustBeFinite, mustBeNonnegative}
    vehicle (1,1) struct
end
if isscalar(mu)
    mu = repmat(mu, 4, 1);
else
    assert(numel(mu) == 4, 'mu must be a scalar or contain four values.');
    mu = mu(:);
end

halfTrack = vehicle.track / 2;
validateattributes([vehicle.lf, vehicle.lr, halfTrack, vehicle.Rw], ...
    {'double'}, {'real', 'finite', 'positive', 'numel', 4});

x = [vehicle.lf, vehicle.lf, -vehicle.lr, -vehicle.lr];
y = halfTrack * [1, -1, 1, -1];
c = [cos(deltaFL), cos(deltaFR), 1, 1];
s = [sin(deltaFL), sin(deltaFR), 0, 0];

% Mz = x*Fy_body - y*Fx_body. A(3,:) is G' from slide 12.
A = [c; s; x.*s - y.*c];
B = [-s; c; x.*c + y.*s];
lateralWrench = B * FyWheel; %

% Equal wheel-frame force baseline for the commanded body Fx.
Fx0 = ones(4,1) * ((command(1) - lateralWrench(1)) / sum(c));

% Slide 13 friction circle, using the estimated lateral force at each tire.
capacity = mu .* FzWheel;
lateralOverLimit = abs(FyWheel) > capacity;
FxLimit = sqrt(max(0, capacity.^2 - FyWheel.^2));

% Slide 13 weighted least squares generalized to Fx, Fy and Mz. Use the
% half-track to express yaw error in force units. A small effort weight
% selects a split close to Fx0 and allows a small wrench tracking error.
S = diag([1, 1, 1/halfTrack]);
effortWeight = 1e-6;

C = [S*A; sqrt(effortWeight)*eye(4)];
d = [S*(command - lateralWrench - A*Fx0); zeros(4,1)];

lb = -FxLimit - Fx0;
ub =  FxLimit - Fx0;

% Generated lsqlin code requires active-set and an initial point.
options = optimoptions('lsqlin', 'Algorithm', 'active-set');
x0 = zeros(4,1);
[deltaFx, ~, ~, exitflag] = lsqlin( ...
    C, d, [], [], [], [], lb, ub, x0, options);

FxWheel = Fx0 + deltaFx;
assert(exitflag > 0 && numel(FxWheel) == 4 && all(isfinite(FxWheel)), ...
    'The wheel force allocation did not converge to a finite solution.');

torque = vehicle.Rw * FxWheel;
achieved = A * FxWheel + lateralWrench;
residual = command - achieved;
end