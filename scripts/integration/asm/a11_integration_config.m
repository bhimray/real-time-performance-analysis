function config = a11_integration_config()
%A11_INTEGRATION_CONFIG A11 integration metadata, not a solver configuration.
% Do not pass this structure to the existing five-state solver builder.
config.schema_version = 1;
config.stage = 'measurement_and_bounded_actuation_baseline';
config.ready_for_closed_loop = false;
config.asm_model_name = 'ASM_Traffic_A11';
config.controller_model_name = 'ecu_vehicle_nmpc';
config.measurement_state_order = {'e','psi','v','vy','r'};
config.controller_state_order = {'e','psi','v','vy','r'};
config.controller_nx = 5;
config.frozen_prediction_vx = true;
config.command_order = {'Fx','Fy','Mz'};
config.wheel_order = {'FL','FR','RL','RR'};
config.controller_period_s = 0.05;
config.speed_error_definition = ...
    'v=(vx*cos(theta)-vy*sin(theta))/(1-kappa*e)-vr';
config.saved_drivetrain_mode = 'AWD';
config.independent_wheel_drive_verified = false;
config.adapter_status = 'baseline_implemented_pending_ASM_commissioning';
config.actuation_config_function = 'a11_actuation_config';
end
