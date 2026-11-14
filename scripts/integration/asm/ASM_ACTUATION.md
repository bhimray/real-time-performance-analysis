# Simple total-force allocation for ASM

The adapter uses a small-angle bicycle model and residual yaw allocation. It is not the direct A11 yaw split. No optimization or measured tire-force ports are required.

## Equations

```text
Cf = Cr = 2*config.vehicle.Cy
Fyr_hat = -Cr*(vy-lr*r)/vx
Fyf_des = Fy-Fyr_hat
delta_raw = Fyf_des/Cf+(vy+lf*r)/vx
delta_f = min(max(delta_raw,-pi/6),pi/6)
steering_wheel_deg = steering_ratio*delta_f*180/pi
Fyf_hat = Cf*(delta_f-(vy+lf*r)/vx)
Mz_lateral = lf*Fyf_hat-lr*Fyr_hat
Mz_tv = Mz-Mz_lateral
T = Fx*Rw/4 + Mz_tv*Rw/(2*b)*[-1;1;-1;1]
drive = max(T,0)
brake = max(-T,0)
```

b is full track width. Wheel order is FL, FR, RL, RR. Brake outputs are positive Nm magnitudes. The existing steering saturation is retained; it can leave a lateral-force residual.

## Simulink wrapper

```matlab
function [steering_wheel_deg, drive_torque_Nm, brake_torque_Nm] = ...
    control_conversion(u, measurements, steering_ratio, controllerConfig)
%#codegen
uVector = [u.Fx; u.Fy; u.Mz];
[steering_wheel_deg, drive_torque_Nm, brake_torque_Nm] = ...
    asm_actuator_adapter(uVector, measurements.vx, ...
    measurements.x(4), measurements.x(5), steering_ratio, controllerConfig);
end
```

Keep controllerConfig at Parameter scope. Signal inputs are the command bus, measurement bus and scalar steering ratio. Outputs remain scalar steering-wheel degrees and two 4x1 torque vectors. Remove the coordinated allocator's extra ports if previously added. Keep verified steering, drive and brake connections. Do not apply unit conversions twice.

Use the active vehicle's verified steering-wheel/road-wheel ratio. Rebuild and reload ASM VEOS and refresh the matching ControlDesk variable description. No acados solver regeneration is required for this adapter-only change.

## Verification and limits

Reconstruct T=drive-brake. Check sum(T)/Rw=Fx and Mz_lateral+b*(T(2)+T(4)-T(1)-T(3))/(2*Rw)=Mz. Away from steering saturation, Fyf_hat+Fyr_hat=Fy within roundoff. These are approximate-model consistency checks, not measured ASM tire forces.

The model assumes small steering angles, linear tires, forward speed away from zero, independent wheel actuation, equal axle stiffness and quasi-static torque-to-force conversion. No friction or wheel torque limits are imposed by this simple adapter. Existing input assertions are retained. MATLAB assertions must not be assumed to stop VEOS: confirm generated assertion/error handling before relying on fail-fast behavior. The positive-speed check does not establish a validated low-speed operating envelope.
