% Instance name: torque_converter_rigid , Instance id: 1
table = [
-0.1 0.0045
0 0.0045
0.1 0.0043
0.2 0.0041
0.3 0.0038
0.4 0.0035
0.5 0.0032
0.6 0.00285
0.7 0.0025
0.8 0.0021
0.9 0.0012
1 0
1.11 -0.0012
1.25 -0.0021
1.43 -0.0025
1.67 -0.00285
2 -0.0032
2.5 -0.0035
3.33 -0.0038
5 -0.0041
7 -0.0043
8 -0.0043
8.08 -0.0043
8.16 -0.0043
8.24 -0.0043
8.32 -0.0043
8.4 -0.0043
8.48 -0.0043
8.56 -0.0043
8.64 -0.0043
8.72 -0.0043
8.8 -0.0043
8.88 -0.0043
8.96 -0.0043
9.04 -0.0043
9.12 -0.0043
9.2 -0.0043
9.28 -0.0043
9.36 -0.0043
9.44 -0.0043
];
MDL.Drivetrain.AutomaticTransmission.TorqueConverterRigid.Map_Eta_Slip  = struct(...
'Comment', 'Reduced pump torque [Nm/(rad/s)2] = f(omega_Turbine/omega_Pump)',...
'Origin', ' ',...
'xName', 'omega_Ratio_Tubine2Pump',...
'xUnit', '[-]',...
'vName', 'eta_Slip',...
'vUnit', '[Nm/(rad/s)2]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
0 2.5
0.85 1.1
0.87 1.06
0.89 1.03
0.91 1.01
0.93 1
1 1
1.01 1
1.02 1
1.03 1
1.04 1
1.05 1
1.06 1
1.07 1
1.08 1
1.09 1
1.1 1
1.11 1
1.12 1
1.13 1
];
MDL.Drivetrain.AutomaticTransmission.TorqueConverterRigid.Map_Rel_Trq_PumpTurb  = struct(...
'Comment', 'Torque ratio [-] = f(omega_Turbine/omega_Pump)',...
'Origin', ' ',...
'xName', 'omega_Ratio_Tubine2Pump',...
'xUnit', '[-]',...
'vName', 'Trq_Ratio_Tubine2Pump',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;
