function asm_softecu_ini (varargin)
MDL = evalin('base','MDL;','[];');


controller_acc;
engine_operation_basic;
idle_speed_control_basic;
lockup_clutch_control;
shift_strategy;
soft_ecu_powersteering;
softecu_transmission_setup;
start_button;
target_selection_acc;
torque_intervention_basic;
torque_intervention_control;
user_interface_acc;
assignin('base','MDL',MDL);