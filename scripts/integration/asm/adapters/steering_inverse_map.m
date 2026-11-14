function [steeringWheelDeg, diagnostics] = steering_inverse_map( ...
    roadWheelRad, previousSteeringWheelDeg, options)
%#codegen
%STEERING_INVERSE_MAP Calibrated monotone road-angle to steering-wheel map.
% options: road_angle_rad(Nx1), wheel_angle_deg(Nx1), max_road_angle_rad,
% max_road_rate_radps, max_wheel_angle_deg, max_wheel_rate_degps, sample_time_s.
% wheel_angle_deg can increase or decrease with road angle; calibration owns sign.
% Outputs describe COMMANDED steering, not measured/achieved tire steering.

steeringWheelDeg = NaN;
diagnostics = struct('road_angle_command_rad',NaN,'angle_limited',false, ...
    'rate_limited',false,'map_limited',false,'valid',false);
road = options.road_angle_rad;
wheel = options.wheel_angle_deg;
n = numel(road);
if n < 2 || numel(wheel) ~= n || ~all(isfinite(road)) || ...
        ~all(isfinite(wheel)) || any(diff(road) <= 0) || ...
        ~(all(diff(wheel)>0) || all(diff(wheel)<0)) || ...
        ~isfinite(roadWheelRad) || ~isfinite(previousSteeringWheelDeg)
    return
end
values = [options.max_road_angle_rad;options.max_road_rate_radps; ...
    options.max_wheel_angle_deg;options.max_wheel_rate_degps;options.sample_time_s];
if any(~isfinite(values)) || any(values <= 0)
    return
end
wheelLower = max(min(wheel),-options.max_wheel_angle_deg);
wheelUpper = min(max(wheel), options.max_wheel_angle_deg);
if wheelLower >= wheelUpper || previousSteeringWheelDeg < wheelLower || ...
        previousSteeringWheelDeg > wheelUpper
    return
end
previousRoad = inverse_lookup(previousSteeringWheelDeg,road,wheel);
if abs(previousRoad) > options.max_road_angle_rad+1e-12
    return
end
targetRoad = min(options.max_road_angle_rad,max(-options.max_road_angle_rad,roadWheelRad));
diagnostics.angle_limited = abs(targetRoad-roadWheelRad)>1e-12;
mappedRoad = min(road(n),max(road(1),targetRoad));
diagnostics.map_limited = abs(mappedRoad-targetRoad)>1e-12;
maxRoadStep = options.max_road_rate_radps*options.sample_time_s;
boundedRoad = min(previousRoad+maxRoadStep,max(previousRoad-maxRoadStep,mappedRoad));
targetWheel = forward_lookup(boundedRoad,road,wheel);
boundedWheel = min(wheelUpper,max(wheelLower,targetWheel));
diagnostics.angle_limited = diagnostics.angle_limited || abs(boundedWheel-targetWheel)>1e-12;
maxWheelStep = options.max_wheel_rate_degps*options.sample_time_s;
steeringWheelDeg = min(previousSteeringWheelDeg+maxWheelStep, ...
    max(previousSteeringWheelDeg-maxWheelStep,boundedWheel));
diagnostics.rate_limited = abs(boundedRoad-mappedRoad)>1e-12 || ...
    abs(steeringWheelDeg-boundedWheel)>1e-12;
diagnostics.road_angle_command_rad = inverse_lookup(steeringWheelDeg,road,wheel);
diagnostics.valid = isfinite(steeringWheelDeg) && ...
    isfinite(diagnostics.road_angle_command_rad);
end

function value = forward_lookup(query,road,wheel)
value = wheel(end);
for i=1:numel(road)-1
    if query <= road(i+1)
        fraction=(query-road(i))/(road(i+1)-road(i));
        value=wheel(i)+fraction*(wheel(i+1)-wheel(i));
        return
    end
end
end

function value = inverse_lookup(query,road,wheel)
value = road(end);
for i=1:numel(road)-1
    if query >= min(wheel(i),wheel(i+1)) && query <= max(wheel(i),wheel(i+1))
        fraction=(query-wheel(i))/(wheel(i+1)-wheel(i));
        value=road(i)+fraction*(road(i+1)-road(i));
        return
    end
end
end
