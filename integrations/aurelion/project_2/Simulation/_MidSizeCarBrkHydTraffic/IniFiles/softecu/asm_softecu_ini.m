function asm_softecu_ini (varargin)
MDL = evalin('base','MDL;','[];');


engine_operation_basic;
expected_vehicle_behavior;
idle_speed_control_basic;
lockup_clutch_control;
shift_strategy;
slip_controller;
controller_acc;
target_selection_acc;
user_interface_acc;
soft_ecu_powersteering;
softecu_transmission_setup;
start_button;
torque_intervention_basic;
torque_intervention_control;
torque_request_esp;
assignin('base','MDL',MDL);