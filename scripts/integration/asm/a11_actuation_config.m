function options = a11_actuation_config()
%A11_ACTUATION_CONFIG Configuration template; commissioning is still required.
% Default settings DO NOT authorize actuation. Fill verified ASM actuator data,
% select authority_mode=1 only for independent wheel-drive/brake command paths,
% then enable deliberately. No change to the five-state controller or solver.

options.hold.max_age_s = 0.10; % Initial policy: at most two controller periods.
options.hold.fallback_max_age_s = 0.05;
options.hold.u_min = [-9000;-9000;-6000];
options.hold.u_max = [4500;9000;6000];
options.hold.accepted_statuses = [0;0;0;0]; % Fixed-length list; only first count entries used.
options.hold.accepted_status_count = 1; % Default: status 0 only.

a.enabled = false;
a.authority_mode = uint8(0); % 0 unverified; 1 independently commanded 4-wheel drive+brakes.
% A3 starting geometry/stiffness: replace with verified active ASM values.
a.lf = 1.232;
a.lr = 1.468;
a.Cf = 2*62700; % AXLE stiffness, not single-tire stiffness [N/rad].
a.Cr = 2*62700;
a.track_m = 1.539;
a.radius_m = 0.31;
a.sample_time_s = 0.05;
a.min_forward_speed_mps = 2.0; % Initial linear-allocation operating threshold.
% No guessed torque authority: these MUST be configured from the active vehicle.
a.max_drive_torque_Nm = NaN(4,1);
a.max_brake_torque_Nm = NaN(4,1);
a.max_net_torque_rate_Nmps = NaN(4,1);
a.steering.road_angle_rad = [-pi/6;0;pi/6]; % Replace with calibrated map knots.
a.steering.wheel_angle_deg = NaN(3,1); % No invented steering ratio.
a.steering.max_road_angle_rad = pi/6; % A11 baseline; verify physical vehicle limit.
a.steering.max_road_rate_radps = NaN;
a.steering.max_wheel_angle_deg = NaN;
a.steering.max_wheel_rate_degps = NaN;
a.steering.sample_time_s = a.sample_time_s;
options.allocation = a;
end
