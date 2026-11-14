# A11 Simulink setup: five-state controller and direct actuation

## Current model

Keep the existing five-state A3 controller:

\[
x=[e,\psi,v,v_y,r]^T,\qquad u=[F_x,F_y,M_z]^T.
\]

Measured vx remains frozen over the prediction horizon. The measurement adapter supplies station separately.

The signal flow is:

```text
ASM measurements -> measurement adapter -> five-state NMPC
                                               |
                                      existing command timing
                                               |
                                    asm_actuator_adapter
                                               |
                                steering + wheel drive/brake torque
                                               |
                                              ASM
```

See [ASM_MEASUREMENTS.md](ASM_MEASUREMENTS.md) for measurement wiring and [ASM_ACTUATION.md](ASM_ACTUATION.md) for the direct converter's exact ports and equations.

## 1. Direct ASM measurements

Use the direct measurement adapter and existing MeasurementBus described in [ASM_MEASUREMENTS.md](ASM_MEASUREMENTS.md). Current road-reference signals feed the state conversion. Road preview feeds horizon preparation separately.

## 3. Existing controller

Pass measurement x (5x1), vx and s at the 50 ms controller period. The ASM horizon uses the packed horizon_prep_in and fellow inputs described in [ASM_HORIZON.md](ASM_HORIZON.md). It builds P (19x41) from ASM road preview, maneuver speed and fellow states. The existing instance supplies road bounds and safety axes.

## 4. Direct actuator MATLAB Function

Paste the current adapters/asm_actuator_adapter.m into one MATLAB Function block. Its five signal inputs are:

| Input | Connect |
|---|---|
| u | [Fx;Fy;Mz], 3x1 controller command |
| vx | controller_measurements.vx [m/s] |
| vy | controller_measurements.x(4) [m/s] |
| r | controller_measurements.x(5) [rad/s] |
| steering_ratio | Steering-wheel angle / equivalent front road-wheel angle |

Your current saved function has five signal arguments and reads controllerConfig inside the block. Set controllerConfig to **Parameter** scope in the MATLAB Function data editor and bind it to the existing numeric controllerConfig workspace value. The local line config=controllerConfig already provides access to config.vehicle. No separate actuator-config file is needed.

Vehicle parameters are read directly from config.vehicle:

\[
l_f=\texttt{lf},\quad
C_f=2\,\texttt{Cy},\quad R=\texttt{Rw},\quad b=\texttt{track}.
\]

Connect outputs steering_wheel_deg, drive_torque_Nm (4x1), and brake_torque_Nm (4x1) to the matching verified ASM interfaces. Wheel order is FL, FR, RL, RR. The steering output is already degrees. Brake outputs are positive torque magnitudes, not pressure or pedal commands. This baseline assumes independently commanded wheel torque interfaces; the saved AWD setting alone does not prove them.

## 5. Error behavior

The actuator throws for invalid inputs, nonpositive forward speed or steering ratio, out-of-bounds controller commands, and nonfinite calculations. A11 limits the front road-wheel angle to +/-30 degrees. The direct converter has no fallback.


## Files to use

- adapters/asm_adapter.m and adapters/asm_measurement_adapter.m for direct ASM measurements.
- adapters/asm_actuator_adapter.m for direct actuation.
- The existing numeric controller configuration, not a new actuation-config structure.
- horizon_prep_asm.m and ecu.scenario.prepare_asm_horizon for ASM road preview and live fellow positions; see [ASM_HORIZON.md](ASM_HORIZON.md).

The older hold/allocator/config/bus helper files are unused alternatives retained on disk. initialize_a11_actuation and test_a11_actuation belong to that older design and are not setup/validation commands for the direct converter.

The earlier ASM_Traffic_A11.slx copy may not contain subsequent edits made in another model. Apply these connections in the intended current model. This documentation update does not change or execute MATLAB code; runtime and Simulink/ASM compilation remain unverified.


## Confirmed location for the brake torque connection

Inside ASM_Traffic/VehicleDynamics/Plant/VehicleDynamics, the existing Brake output 2 connects directly to WHEEL_SPEED input 3. Add one A11_BrakeTorque_Nm vector input through the three enclosing subsystem boundaries and replace that line with brake_torque_Nm from the direct converter. This is a direct positive brake-magnitude request in Nm, order FL FR RL RR; do not connect it to a pedal/pressure field or sum it with existing brake torque. The hydraulic torque-generation path is bypassed.

Send the steering/shaft-torque Bus Assignment output to VehicleDynamics/In. Assigning source-named Driver/Drivetrain fields and sending them only back into Driver/Drivetrain does not apply those overrides at the VehicleDynamics consumer. Keep their original bus inputs.

The four-wheel yaw increment uses \(\Delta T=M_{z,tv}R_w/(2b)\), with [-1,+1,-1,+1] wheel signs.


Run test_prepare_asm_horizon for the MATLAB regression. Update and compile the complete ASM model to verify the wiring and run the closed-loop simulation.
