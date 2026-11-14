function Settings = VehicleDynamics()

% ===================================================================================================================  
Settings.MainCompInst(1).Origin                       = 'standard';
Settings.MainCompInst(1).Comment                      = 'Referenced Engine Maincomponant for first instance in SoftECU, Driver';
Settings.MainCompInst(1).vName                        = 'ECUType';
Settings.MainCompInst(1).vUnit                        = '[]';
Settings.MainCompInst(1).v                            = 'Engine';
% ===================================================================================================================  
Settings.Engine.Vector_Pos_AccPedal.Origin            = 'standard';
Settings.Engine.Vector_Pos_AccPedal.Comment           = 'Accelerator pedal position vector for map generation';
Settings.Engine.Vector_Pos_AccPedal.vName             = 'Pos_AccPedal';
Settings.Engine.Vector_Pos_AccPedal.vUnit             = '[%]';
Settings.Engine.Vector_Pos_AccPedal.v                 = [0:5:100]';
% ===================================================================================================================  
