function test_a11_actuation()
%TEST_A11_ACTUATION Numerical contracts; no ASM, acados or Simulink required.
folder = fileparts(mfilename('fullpath'));
addpath(fullfile(folder,'adapters'));
o = a11_actuation_config();
i = a11_actuation_initial_conditions();
c = i.candidate; c.u=[1000;0;0]; c.valid=true; c.new_sample=true;
[q,h,d] = command_hold_and_validity(c,0,true,true,false,i.hold,i.fallback,o.hold);
assert(q.valid && q.source==1 && d.accepted_new && h.initialized);
c.new_sample=false;
[q,~,~] = command_hold_and_validity(c,0.05,true,true,false,h,i.fallback,o.hold);
assert(q.valid && q.source==2 && q.timestamp_s==0);
roundoffHistory=h; roundoffHistory.timestamp_s=.05;
[q,~,~] = command_hold_and_validity(c,.1+.05,true,true,false, ...
    roundoffHistory,i.fallback,o.hold);
assert(q.valid); % Boundary equality must survive normal floating-point roundoff.
[q,~,d] = command_hold_and_validity(c,0.1001,true,true,false,h,i.fallback,o.hold);
assert(~q.valid && d.expired);
f=i.fallback; f.u=[-1000;0;0]; f.timestamp_s=0.11; f.valid=true;
[q,hh,~] = command_hold_and_validity(c,0.11,true,true,false,h,f,o.hold);
assert(q.valid && q.source==3 && hh.timestamp_s==0);
[q,~,~] = command_hold_and_validity(c,0.20,true,true,false,h,f,o.hold);
assert(~q.valid); % Fallback has its own age limit.
c.new_sample=true; c.timestamp_s=.05; c.solver_status=99;
[q,~,d] = command_hold_and_validity(c,.05,true,true,false,h,i.fallback,o.hold);
assert(q.valid && q.source==2 && d.candidate_rejected);
c.solver_status=0; c.timestamp_s=1;
[q,~,d] = command_hold_and_validity(c,.05,true,true,false,h,i.fallback,o.hold);
assert(q.source==2 && d.candidate_rejected); % Future candidate not accepted.
[q,hh,~] = command_hold_and_validity(c,.05,true,true,true,h,f,o.hold);
assert(~q.valid && ~hh.initialized);
[q,hh,~] = command_hold_and_validity(c,-.01,true,true,false,h,f,o.hold);
assert(~q.valid && ~hh.initialized); % Clock rollback invalidates old scenario commands.
[q,hh,~] = command_hold_and_validity(c,.05,false,true,false,h,f,o.hold);
assert(~q.valid && ~hh.initialized);
[q,hh,~] = command_hold_and_validity(c,.05,true,false,false,h,f,o.hold);
assert(~q.valid && ~hh.initialized);
c.timestamp_s=.05; c.u(1)=NaN;
[~,~,d] = command_hold_and_validity(c,.05,true,true,false,h,f,o.hold);
assert(d.candidate_rejected);

% TEST-ONLY actuator calibration/limits. Not values to deploy to ASM.
a=o.allocation; a.enabled=true; a.authority_mode=uint8(1);
a.max_drive_torque_Nm=1e5*ones(4,1); a.max_brake_torque_Nm=1e5*ones(4,1);
a.max_net_torque_rate_Nmps=1e9*ones(4,1);
a.steering.wheel_angle_deg=[-480;0;480];
a.steering.max_road_rate_radps=1e6;
a.steering.max_wheel_angle_deg=480;
a.steering.max_wheel_rate_degps=1e9;
actual=i.actual; actual.valid=true;
m=struct('x',zeros(5,1),'vx',25.0,'s',0.0,'valid',true);
q=i.request; q.valid=true; q.timestamp_s=0;
q.u=[1000;0;0];
[act,st,d] = allocate_vehicle_commands(q,m,actual,i.allocation,false,a);
assert(act.valid && st.initialized && norm(d.residual)<1e-8);
assert(norm(act.drive_torque_Nm-77.5*ones(4,1))<1e-10);
q.u=[0;0;1000];
[act,~,d] = allocate_vehicle_commands(q,m,actual,i.allocation,false,a);
expected=1000*a.radius_m/(2*a.track_m)*[-1;1;-1;1];
assert(act.valid && norm(d.wheel_torque_command_Nm-expected)<1e-10);
assert(abs(d.u_predicted(3)-1000)<1e-9 && abs(d.u_predicted(1))<1e-9);
assert(all(act.drive_torque_Nm.*act.brake_torque_magnitude_Nm==0));
q.u=[1000;2000;500]; m.x(4)=0.2; m.x(5)=0.1;
[act,~,d] = allocate_vehicle_commands(q,m,actual,i.allocation,false,a);
assert(act.valid && norm(d.residual)<1e-7);
assert(abs(d.vectoring_yaw_requested_Nm-(500-d.steering_yaw_Nm))<1e-9);
% Saturation/rate limits are reflected in prediction and residual, not hidden.
small=a; small.max_drive_torque_Nm=10*ones(4,1); small.max_brake_torque_Nm=10*ones(4,1);
small.max_net_torque_rate_Nmps=100*ones(4,1);
small.steering.max_road_rate_radps=.1; small.steering.max_wheel_rate_degps=10;
[act,~,d] = allocate_vehicle_commands(q,m,actual,i.allocation,false,small);
assert(act.valid && d.torque_limited && d.steering_limited && norm(d.residual)>1);
assert(all(abs(d.wheel_torque_command_Nm)<=5+1e-10));
assert(abs(act.steering_wheel_deg)<=.5+1e-10);
% First call is seeded from actual feedback rather than a fabricated zero state.
seededActual=actual; seededActual.steering_wheel_deg=20;
seeded=small; seeded.max_drive_torque_Nm=1e5*ones(4,1);
seeded.max_brake_torque_Nm=1e5*ones(4,1);
[act,~,~] = allocate_vehicle_commands(q,m,seededActual,i.allocation,false,seeded);
assert(act.valid && abs(act.steering_wheel_deg-20)<=.5+1e-10);
% Signed net-torque slew crosses drive/brake zero without commanding both.
qBrake=q; qBrake.u=[-1000;0;0]; mZero=m; mZero.x=zeros(5,1);
seededActual=actual; seededActual.drive_torque_Nm=100*ones(4,1);
[act,~,~] = allocate_vehicle_commands(qBrake,mZero,seededActual,i.allocation,false,seeded);
assert(act.valid && all(abs(act.drive_torque_Nm-95)<1e-10));
assert(all(act.brake_torque_magnitude_Nm==0));
[act,~,~] = allocate_vehicle_commands(q,m,actual,i.allocation,false,o.allocation);
assert(~act.valid); % Uncommissioned template cannot command actuators.
m.vx=0;
[act,st,d] = allocate_vehicle_commands(q,m,actual,i.allocation,false,a);
assert(~act.valid && ~st.initialized && d.status==3);
m.vx=25;
[act,st,~] = allocate_vehicle_commands(q,m,actual,i.allocation,true,a);
assert(~act.valid && ~st.initialized);
actual.valid=false;
[act,~,~] = allocate_vehicle_commands(q,m,actual,i.allocation,false,a);
assert(~act.valid);

% Inverse steering calibration supports both verified sign conventions.
[sw,sd]=steering_inverse_map(.1,0,a.steering);
assert(sd.valid && abs(sd.road_angle_command_rad-.1)<1e-12 && sw>0);
negative=a.steering; negative.wheel_angle_deg=-negative.wheel_angle_deg;
[sw,sd]=steering_inverse_map(.1,0,negative);
assert(sd.valid && abs(sd.road_angle_command_rad-.1)<1e-12 && sw<0);
bad=a.steering; bad.wheel_angle_deg=[0;0;1];
[~,sd]=steering_inverse_map(.1,0,bad);
assert(~sd.valid);
fprintf('A11 hold/allocation tests passed. Test-only actuator limits/map are not ASM calibration.\n');
end
