function cpt_mdl_ini(varargin)
%
% function CPT_MDL_INI(config)
% =======================
% 
% Parameter <config> must be one of the following
% 'PC'  : Simulation on single PC ( Offline, non Real-Time)
% 'HIL' : Simulation on Real-Time-Hardware, with ECU
% 'CPT' : Simulation in Real-Time-Hardware, without I/O connected
%
%
%
% this file contains the parameters necessary to  initialize the
% simulation
%
% structure name:  CPT
%
% modification:
% -------------
%
%    name:     |   date:      |                 remarks:
%-----------------------------------------------------------------------------
%              |              |
%              |              |
%              |              |
%              |              |
%
%

config = varargin{2};

% Check input parameter
if (nargin==0)
        fprintf('No simode defined ... ');
        error
        return
    
elseif ( (strcmp(config,'PC')  == 0) && (strcmp(config,'HIL') == 0) && (strcmp(config,'CPT') == 0) )
        fprintf('No simode defined ... ');
        error
        return
    
elseif ((strcmp(config,'PC')  == 1) || (strcmp(config,'CPT')  == 1) || (strcmp(config,'HIL')  == 1))
    
    % Get structures from workspace
    CPT = evalin('base','CPT;','[];');
    
    %--------------------------------------------------------------------------------
    CPT.MDL_PAR.Comment             = char('Parameters used to configure MDL' );
    CPT.MDL_SW.Comment              = char('Switches used to switch MDL');
    CPT.MDL_TEST.Comment            = char('Test settings');
    
    % ==========================================================================
    % =====                       MDL In switches                          ===== 
    % ==========================================================================
    from_SoftECU = 1;
    from_RealECU = 2;
    from_Constant = 3;
    
    if(strcmp(config,'PC')  == 1)
        CPT.MDL_SW.Sw_Ctrl_InletValve_FL.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_FR.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_RL.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_RR.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_FL.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_FR.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_RL.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_RR.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_PreChargeValve_1.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_PreChargeValve_2.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ChangeOverValve_1.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ChangeOverValve_2.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_HydPump.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_ECU_ESP_Mode.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_Parking_Pawl.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_Angle_Gamma_FL_Wheel.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Gear.v                                = from_SoftECU;
        CPT.MDL_SW.Sw_Factor_Trq_Engine_Red.v               = from_SoftECU;
        CPT.MDL_SW.Sw_omega_Wheel.v                         = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_ClutchPedal_AMT.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_AMT.v                    = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Lockup_Clutch.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff.v                    = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_FrontDiff.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff.v                       = from_SoftECU;
        CPT.MDL_SW.Sw_Clutch_4WD.v                          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff_FrontAxle.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_FrontDiff_FrontAxle.v            = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff_RearAxle.v           = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff_RearAxle.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Const_Ctrl_CentralDiff_RearAxle2nd.v  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff_RearAxle2nd.v           = from_SoftECU;
        CPT.MDL_SW.Sw_PowerSteering.v                       = from_SoftECU;
        CPT.MDL_SW.Sw_EPSMotorStates_External.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Displ_SteeringRod.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_p_Brake_Desired.v              = from_SoftECU;
        CPT.MDL_SW.Sw_p_Brake_Desired.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_TrqDecrease_Fast_ESP.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_Fast_ESP.v        = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_TrqDecrease_Slow_ESP.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_Slow_ESP.v        = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_TrqIncrease_ESP.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_IncreaseRequest_ESP.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_Trq_Increase_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_IncreaseRequest_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_Trq_Decrease_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_FCW.v                                 = from_SoftECU;
        CPT.MDL_SW.Sw_AEB.v                                 = from_SoftECU;
        CPT.MDL_SW.Sw_ACC_State.v                           = from_SoftECU;
        CPT.MDL_SW.Sw_Engine_Dynamic_Fast.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_Influenced.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_Driver_Des.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Starter.v                             = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Front.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Front.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear2.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear2.v                = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Front.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear2.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TC_Valve.v                       = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_HillHold_Front_Valve.v           = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_HillHold_Mod_Valve_Trailer.v     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Inlet_Valve.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Outlet_Valve.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Backup_Valve.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_PurgeValve.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Front_Trailer.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Front_Trailer.v        = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear_Trailer.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear_Trailer.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear2_Trailer.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear2_Trailer.v        = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Front_Trailer.v             = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear_Trailer.v              = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear2_Trailer.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TC_Valve_Trailer.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Compressor_Control_Valve.v       = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk1.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk1.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk1.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk2.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk2.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk2.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk3.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk3.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk3.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk1_Trailer.v  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk1_Trailer.v = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk1_Trailer.v = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk2_Trailer.v  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk2_Trailer.v = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk2_Trailer.v = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk3_Trailer.v  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk3_Trailer.v = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk3_Trailer.v = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_BrakePedal_Desired.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_ICE.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ignition_ICE.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_StarterReq_ICE.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_EM_Front.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_EM_Rear.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_EM.v                      = from_SoftECU;          
        CPT.MDL_SW.Sw_Pos_Clutch_ICE_EM.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_Clutch_EM_Trm.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_HybridMode_Vehicle.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_HybridMode_ICE.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_Brake.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_State_Engine.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_I_Req.v                               = from_SoftECU;
        CPT.MDL_SW.Sw_V_Req.v                               = from_SoftECU;
        CPT.MDL_SW.Sw_Sw_Charging_Station_Relay.v           = from_SoftECU;
        CPT.MDL_SW.Sw_Sw_Bat_Relay.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_I_Bat_Charge_Actual.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_V_Bat.v                               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Compressor.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Fan.v                            = from_SoftECU;
        CPT.MDL_SW.Sw_Sw_AirSource.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_SOC_Estimated_Max.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_SOC_Estimated_Mean.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_State_StartButton.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_Ignition.v                            = from_SoftECU;
        CPT.MDL_SW.Sw_StarterReq.v                          = from_SoftECU;
        CPT.MDL_SW.Sw_V_DC_Desired.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_I_DC_Desired.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_State_HybridEngine.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_p_Brake.v                             = from_SoftECU;
        CPT.MDL_SW.Sw_State_BEVEngine.v                     = from_SoftECU;

    elseif(strcmp(config,'HIL')  == 1)
        CPT.MDL_SW.Sw_Ctrl_InletValve_FL.v                  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_FR.v                  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_RL.v                  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_RR.v                  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_FL.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_FR.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_RL.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_RR.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_PreChargeValve_1.v               = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_PreChargeValve_2.v               = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ChangeOverValve_1.v              = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ChangeOverValve_2.v              = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_HydPump.v                        = from_RealECU;
        CPT.MDL_SW.Sw_ECU_ESP_Mode.v                        = from_RealECU;
        CPT.MDL_SW.Sw_Parking_Pawl.v                        = from_RealECU;
        CPT.MDL_SW.Sw_Angle_Gamma_FL_Wheel.v                = from_RealECU;
        CPT.MDL_SW.Sw_Gear.v                                = from_RealECU;
        CPT.MDL_SW.Sw_Factor_Trq_Engine_Red.v               = from_RealECU;
        CPT.MDL_SW.Sw_omega_Wheel.v                         = from_RealECU;
        CPT.MDL_SW.Sw_Pos_ClutchPedal_AMT.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_AMT.v                    = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_Lockup_Clutch.v                  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff.v                    = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_FrontDiff.v                      = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff.v                       = from_RealECU;
        CPT.MDL_SW.Sw_Clutch_4WD.v                          = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff_FrontAxle.v          = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_FrontDiff_FrontAxle.v            = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff_RearAxle.v           = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff_RearAxle.v              = from_RealECU;
        CPT.MDL_SW.Sw_Const_Ctrl_CentralDiff_RearAxle2nd.v  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff_RearAxle2nd.v           = from_RealECU;
        CPT.MDL_SW.Sw_PowerSteering.v                       = from_RealECU;
        CPT.MDL_SW.Sw_EPSMotorStates_External.v             = from_RealECU;
        CPT.MDL_SW.Sw_Displ_SteeringRod.v                   = from_RealECU;
        CPT.MDL_SW.Sw_Enable_p_Brake_Desired.v              = from_RealECU;
        CPT.MDL_SW.Sw_p_Brake_Desired.v                     = from_RealECU;
        CPT.MDL_SW.Sw_Enable_TrqDecrease_Fast_ESP.v         = from_RealECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_Fast_ESP.v        = from_RealECU;
        CPT.MDL_SW.Sw_Enable_TrqDecrease_Slow_ESP.v         = from_RealECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_Slow_ESP.v        = from_RealECU;
        CPT.MDL_SW.Sw_Enable_TrqIncrease_ESP.v              = from_RealECU;
        CPT.MDL_SW.Sw_Trq_IncreaseRequest_ESP.v             = from_RealECU;
        CPT.MDL_SW.Sw_Enable_Trq_Increase_ACC.v             = from_RealECU;
        CPT.MDL_SW.Sw_Trq_IncreaseRequest_ACC.v             = from_RealECU;
        CPT.MDL_SW.Sw_Enable_Trq_Decrease_ACC.v             = from_RealECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_ACC.v             = from_RealECU;
        CPT.MDL_SW.Sw_FCW.v                                 = from_RealECU;
        CPT.MDL_SW.Sw_AEB.v                                 = from_RealECU;
        CPT.MDL_SW.Sw_ACC_State.v                           = from_RealECU;
        CPT.MDL_SW.Sw_Engine_Dynamic_Fast.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_Influenced.v             = from_RealECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_Driver_Des.v             = from_RealECU;
        CPT.MDL_SW.Sw_Starter.v                             = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Front.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Front.v                = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear.v                  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear2.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear2.v                = from_RealECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Front.v                     = from_RealECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear.v                      = from_RealECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear2.v                     = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_TC_Valve.v                       = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_HillHold_Front_Valve.v           = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_HillHold_Mod_Valve_Trailer.v     = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Inlet_Valve.v                = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Outlet_Valve.v               = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Backup_Valve.v               = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_PurgeValve.v                     = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Front_Trailer.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Front_Trailer.v        = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear_Trailer.v          = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear_Trailer.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear2_Trailer.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear2_Trailer.v        = from_RealECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Front_Trailer.v             = from_RealECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear_Trailer.v              = from_RealECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear2_Trailer.v             = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_TC_Valve_Trailer.v               = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_Compressor_Control_Valve.v       = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk1.v          = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk1.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk1.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk2.v          = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk2.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk2.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk3.v          = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk3.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk3.v         = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk1_Trailer.v  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk1_Trailer.v = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk1_Trailer.v = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk2_Trailer.v  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk2_Trailer.v = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk2_Trailer.v = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_32_Valve_Blk3_Trailer.v  = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve1_Blk3_Trailer.v = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_AirSusp_22_Valve2_Blk3_Trailer.v = from_RealECU;
        CPT.MDL_SW.Sw_Pos_BrakePedal_Desired.v              = from_RealECU;
        CPT.MDL_SW.Sw_Trq_Request_ICE.v                     = from_RealECU;
        CPT.MDL_SW.Sw_Ignition_ICE.v                        = from_RealECU;
        CPT.MDL_SW.Sw_StarterReq_ICE.v                      = from_RealECU;
        CPT.MDL_SW.Sw_Trq_Request_EM_Front.v                = from_RealECU;
        CPT.MDL_SW.Sw_Trq_Request_EM_Rear.v                 = from_RealECU;
        CPT.MDL_SW.Sw_Trq_Request_EM.v                      = from_RealECU;
        CPT.MDL_SW.Sw_Pos_Clutch_ICE_EM.v                   = from_RealECU;
        CPT.MDL_SW.Sw_Pos_Clutch_EM_Trm.v                   = from_RealECU;
        CPT.MDL_SW.Sw_HybridMode_Vehicle.v                  = from_RealECU;
        CPT.MDL_SW.Sw_HybridMode_ICE.v                      = from_RealECU;
        CPT.MDL_SW.Sw_Trq_Request_Brake.v                   = from_RealECU;
        CPT.MDL_SW.Sw_State_Engine.v                        = from_RealECU;
        CPT.MDL_SW.Sw_I_Req.v                               = from_RealECU;
        CPT.MDL_SW.Sw_V_Req.v                               = from_RealECU;
        CPT.MDL_SW.Sw_Sw_Charging_Station_Relay.v           = from_RealECU;
        CPT.MDL_SW.Sw_Sw_Bat_Relay.v                        = from_RealECU;
        CPT.MDL_SW.Sw_I_Bat_Charge_Actual.v                 = from_RealECU;
        CPT.MDL_SW.Sw_V_Bat.v                               = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_Compressor.v                     = from_RealECU;
        CPT.MDL_SW.Sw_Ctrl_Fan.v                            = from_RealECU;
        CPT.MDL_SW.Sw_Sw_AirSource.v                        = from_RealECU;
        CPT.MDL_SW.Sw_SOC_Estimated_Max.v                   = from_RealECU;
        CPT.MDL_SW.Sw_SOC_Estimated_Mean.v                  = from_RealECU;
        CPT.MDL_SW.Sw_State_StartButton.v                   = from_RealECU;
        CPT.MDL_SW.Sw_Ignition.v                            = from_RealECU;
        CPT.MDL_SW.Sw_StarterReq.v                          = from_RealECU;
        CPT.MDL_SW.Sw_V_DC_Desired.v                        = from_RealECU;
        CPT.MDL_SW.Sw_I_DC_Desired.v                        = from_RealECU;
        CPT.MDL_SW.Sw_State_HybridEngine.v                  = from_RealECU;
        CPT.MDL_SW.Sw_p_Brake.v                             = from_RealECU;
        CPT.MDL_SW.Sw_State_BEVEngine.v                     = from_RealECU;
        
    elseif(strcmp(config,'CPT')  == 1)
        CPT.MDL_SW.Sw_Ctrl_InletValve_FL.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_FR.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_RL.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_InletValve_RR.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_FL.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_FR.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_RL.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_OutletValve_RR.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_PreChargeValve_1.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_PreChargeValve_2.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ChangeOverValve_1.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ChangeOverValve_2.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_HydPump.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_ECU_ESP_Mode.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_Parking_Pawl.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_Angle_Gamma_FL_Wheel.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Gear.v                                = from_SoftECU;
        CPT.MDL_SW.Sw_Factor_Trq_Engine_Red.v               = from_SoftECU;
        CPT.MDL_SW.Sw_omega_Wheel.v                         = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_ClutchPedal_AMT.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_AMT.v                    = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Lockup_Clutch.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff.v                    = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_FrontDiff.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff.v                       = from_SoftECU;
        CPT.MDL_SW.Sw_Clutch_4WD.v                          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff_FrontAxle.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_FrontDiff_FrontAxle.v            = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_CentralDiff_RearAxle.v           = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff_RearAxle.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Const_Ctrl_CentralDiff_RearAxle2nd.v  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_RearDiff_RearAxle2nd.v           = from_SoftECU;
        CPT.MDL_SW.Sw_PowerSteering.v                       = from_SoftECU;
        CPT.MDL_SW.Sw_EPSMotorStates_External.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Displ_SteeringRod.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_p_Brake_Desired.v              = from_SoftECU;
        CPT.MDL_SW.Sw_p_Brake_Desired.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_TrqDecrease_Fast_ESP.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_Fast_ESP.v        = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_TrqDecrease_Slow_ESP.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_Slow_ESP.v        = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_TrqIncrease_ESP.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_IncreaseRequest_ESP.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_Trq_Increase_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_IncreaseRequest_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Enable_Trq_Decrease_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_DecreaseRequest_ACC.v             = from_SoftECU;
        CPT.MDL_SW.Sw_FCW.v                                 = from_SoftECU;
        CPT.MDL_SW.Sw_AEB.v                                 = from_SoftECU;
        CPT.MDL_SW.Sw_ACC_State.v                           = from_SoftECU;
        CPT.MDL_SW.Sw_Engine_Dynamic_Fast.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_Influenced.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_AccPedal_Driver_Des.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Starter.v                             = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Front.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Front.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear2.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear2.v                = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Front.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear2.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TC_Valve.v                       = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_HillHold_Front_Valve.v           = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_HillHold_Mod_Valve_Trailer.v     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Inlet_Valve.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Outlet_Valve.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TCM_Backup_Valve.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_PurgeValve.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Front_Trailer.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Front_Trailer.v        = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear_Trailer.v          = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear_Trailer.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Left_Rear2_Trailer.v         = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_ABS_Right_Rear2_Trailer.v        = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Front_Trailer.v             = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear_Trailer.v              = from_SoftECU;
        CPT.MDL_SW.Sw_p_EPM_Des_Rear2_Trailer.v             = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_TC_Valve_Trailer.v               = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_BrakePedal_Desired.v              = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_ICE.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ignition_ICE.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_StarterReq_ICE.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_EM_Front.v                = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_EM_Rear.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_EM.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_Clutch_ICE_EM.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_Pos_Clutch_EM_Trm.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_HybridMode_Vehicle.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_HybridMode_ICE.v                      = from_SoftECU;
        CPT.MDL_SW.Sw_Trq_Request_Brake.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_State_Engine.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_I_Req.v                               = from_SoftECU;
        CPT.MDL_SW.Sw_V_Req.v                               = from_SoftECU;
        CPT.MDL_SW.Sw_Sw_Charging_Station_Relay.v           = from_SoftECU;
        CPT.MDL_SW.Sw_Sw_Bat_Relay.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_I_Bat_Charge_Actual.v                 = from_SoftECU;
        CPT.MDL_SW.Sw_V_Bat.v                               = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Compressor.v                     = from_SoftECU;
        CPT.MDL_SW.Sw_Ctrl_Fan.v                            = from_SoftECU;
        CPT.MDL_SW.Sw_Sw_AirSource.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_SOC_Estimated_Max.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_SOC_Estimated_Mean.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_State_StartButton.v                   = from_SoftECU;
        CPT.MDL_SW.Sw_Ignition.v                            = from_SoftECU;
        CPT.MDL_SW.Sw_StarterReq.v                          = from_SoftECU;
        CPT.MDL_SW.Sw_I_DC_Desired.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_V_DC_Desired.v                        = from_SoftECU;
        CPT.MDL_SW.Sw_State_HybridEngine.v                  = from_SoftECU;
        CPT.MDL_SW.Sw_p_Brake.v                             = from_SoftECU;
        CPT.MDL_SW.Sw_State_BEVEngine.v                     = from_SoftECU;
        
    end
    
    % ==========================================================================
    % =====                 CPT_MDL switches and parameter                 =====
    % ==========================================================================
    
    
    % Write structures back to workspace
    assignin('base','CPT',CPT)
    
end