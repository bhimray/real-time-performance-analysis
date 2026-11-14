function [actuation, nextState, diagnostics] = allocate_vehicle_commands( ...
    request, measurement, actual, previousState, reset, options)
%#codegen
%ALLOCATE_VEHICLE_COMMANDS Bounded linear-tire algebraic A11 baseline.
% Supports ONLY verified independent FOUR-wheel signed net torque authority,
% split into positive drive and nonnegative brake magnitudes for FORWARD motion.
% AWD/differentials alone do not establish that authority. No common-drive or
% hydraulic inversion is invented here. authority_mode=1 explicitly selects it.
% request: u(3x1),timestamp_s,valid,reset,source; from command hold.
% measurement: x=[e;psi;v;vy;r],vx,s,valid; from SI measurement adapter.
% actual: steering_wheel_deg,drive_torque_Nm(4x1),brake_torque_magnitude_Nm(4x1),valid.
% previousState: same three numeric fields plus initialized. Use Unit Delay.
% Re-seed previous state from CURRENT actual actuator values after reset/invalid.
% Predicted forces use small-angle, equal-radius/track, linear-tire approximations.

actuation = struct('steering_wheel_deg',NaN,'drive_torque_Nm',NaN(4,1), ...
    'brake_torque_magnitude_Nm',NaN(4,1),'valid',false,'timestamp_s',request.timestamp_s);
nextState = previousState;
diagnostics = struct('u_predicted',NaN(3,1),'residual',NaN(3,1), ...
    'rear_lateral_force_N',NaN,'front_lateral_force_N',NaN, ...
    'road_angle_raw_rad',NaN,'road_angle_command_rad',NaN, ...
    'steering_yaw_Nm',NaN,'vectoring_yaw_requested_Nm',NaN, ...
    'wheel_torque_raw_Nm',NaN(4,1),'wheel_torque_command_Nm',NaN(4,1), ...
    'steering_limited',false,'torque_limited',false,'status',uint8(1));
% status 0 valid bounded command (not guaranteed force tracking); 1 input/reset;
% 2 disabled/unverified authority/settings; 3 low/reverse speed; 4 steering map.
if reset || request.reset
    nextState.initialized = false;
    return
end
if ~request.valid || ~measurement.valid || ~actual.valid || ...
        ~all(isfinite(request.u)) || ~isfinite(request.timestamp_s) || ...
        ~all(isfinite(measurement.x)) || ~isfinite(measurement.vx) || ...
        ~isfinite(actual.steering_wheel_deg) || ...
        ~all(isfinite(actual.drive_torque_Nm)) || ...
        ~all(isfinite(actual.brake_torque_magnitude_Nm)) || ...
        any(actual.drive_torque_Nm < 0) || any(actual.brake_torque_magnitude_Nm < 0)
    nextState.initialized = false;
    return
end
numbers = [options.lf;options.lr;options.Cf;options.Cr;options.track_m; ...
    options.radius_m;options.sample_time_s;options.min_forward_speed_mps];
settingsOK = options.enabled && options.authority_mode == uint8(1) && ...
    all(isfinite(numbers)) && all(numbers>0) && ...
    all(isfinite(options.max_drive_torque_Nm)) && all(options.max_drive_torque_Nm>=0) && ...
    all(isfinite(options.max_brake_torque_Nm)) && all(options.max_brake_torque_Nm>=0) && ...
    all(isfinite(options.max_net_torque_rate_Nmps)) && all(options.max_net_torque_rate_Nmps>0) && ...
    options.steering.sample_time_s == options.sample_time_s;
if ~settingsOK
    diagnostics.status = uint8(2);
    nextState.initialized = false;
    return
end
vx = measurement.vx;
if vx < options.min_forward_speed_mps
    diagnostics.status = uint8(3);
    nextState.initialized = false;
    return
end
if any(actual.drive_torque_Nm > options.max_drive_torque_Nm) || ...
        any(actual.brake_torque_magnitude_Nm > options.max_brake_torque_Nm)
    nextState.initialized = false;
    return
end
previousWheel = actual.drive_torque_Nm-actual.brake_torque_magnitude_Nm;
previousSteering = actual.steering_wheel_deg;
if previousState.initialized
    if ~all(isfinite(previousState.drive_torque_Nm)) || ...
            ~all(isfinite(previousState.brake_torque_magnitude_Nm)) || ...
            ~isfinite(previousState.steering_wheel_deg) || ...
            any(previousState.drive_torque_Nm<0) || ...
            any(previousState.brake_torque_magnitude_Nm<0) || ...
            any(previousState.drive_torque_Nm>options.max_drive_torque_Nm) || ...
            any(previousState.brake_torque_magnitude_Nm>options.max_brake_torque_Nm)
        nextState.initialized = false;
        return
    end
    previousWheel = previousState.drive_torque_Nm-previousState.brake_torque_magnitude_Nm;
    previousSteering = previousState.steering_wheel_deg;
end
vy = measurement.x(4);
r = measurement.x(5);
Fyr = -options.Cr*(vy-options.lr*r)/vx;
FyfDesired = request.u(2)-Fyr;
deltaRaw = FyfDesired/options.Cf+(vy+options.lf*r)/vx;
[steeringWheel,steer] = steering_inverse_map(deltaRaw,previousSteering,options.steering);
if ~steer.valid
    diagnostics.status = uint8(4);
    nextState.initialized = false;
    return
end
delta = steer.road_angle_command_rad;
Fyf = options.Cf*(delta-(vy+options.lf*r)/vx);
MzSteering = options.lf*Fyf-options.lr*Fyr;
MzTV = request.u(3)-MzSteering;
rawWheel = request.u(1)*options.radius_m/4.0*ones(4,1) + ...
    MzTV*options.radius_m/(2.0*options.track_m)*[-1;1;-1;1];
boundedWheel = min(options.max_drive_torque_Nm,max(-options.max_brake_torque_Nm,rawWheel));
maxStep = options.max_net_torque_rate_Nmps*options.sample_time_s;
wheel = min(previousWheel+maxStep,max(previousWheel-maxStep,boundedWheel));
drive = max(wheel,zeros(4,1));
brake = max(-wheel,zeros(4,1));
predicted = [sum(wheel)/options.radius_m; Fyf+Fyr; ...
    MzSteering+options.track_m/(2.0*options.radius_m)*([-1,1,-1,1]*wheel)];
if ~all(isfinite(predicted)) || ~all(isfinite(wheel)) || ~isfinite(steeringWheel)
    nextState.initialized = false;
    return
end
actuation.steering_wheel_deg = steeringWheel;
actuation.drive_torque_Nm = drive;
actuation.brake_torque_magnitude_Nm = brake;
actuation.valid = true;
nextState.steering_wheel_deg = steeringWheel;
nextState.drive_torque_Nm = drive;
nextState.brake_torque_magnitude_Nm = brake;
nextState.initialized = true;
diagnostics.u_predicted = predicted;
diagnostics.residual = request.u-predicted;
diagnostics.rear_lateral_force_N = Fyr;
diagnostics.front_lateral_force_N = Fyf;
diagnostics.road_angle_raw_rad = deltaRaw;
diagnostics.road_angle_command_rad = delta;
diagnostics.steering_yaw_Nm = MzSteering;
diagnostics.vectoring_yaw_requested_Nm = MzTV;
diagnostics.wheel_torque_raw_Nm = rawWheel;
diagnostics.wheel_torque_command_Nm = wheel;
diagnostics.steering_limited = steer.angle_limited || steer.rate_limited || steer.map_limited;
diagnostics.torque_limited = any(abs(wheel-rawWheel)>1e-9);
diagnostics.status = uint8(0);
end
