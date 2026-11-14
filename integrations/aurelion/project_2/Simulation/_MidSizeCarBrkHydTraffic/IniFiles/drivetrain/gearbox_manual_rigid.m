% Instance name: gearbox_mt_rigid , Instance id: 1
MDL.Drivetrain.ManualTransmission.GearboxMTRigid.Const_Damping_InputGear  = struct(...
'Comment', 'Damping coefficient of the gearbox input shaft',...
'Origin', ' ',...
'vName', 'Damping_InputGear',...
'vUnit', '[Nm|(rad|s)]',...
'v', 0.005);

MDL.Drivetrain.ManualTransmission.GearboxMTRigid.Const_Inertia_InputGear  = struct(...
'Comment', 'Inertia of the gearbox input shaft',...
'Origin', ' ',...
'vName', 'Inertia_InputGear',...
'vUnit', '[kg*m2]',...
'v', 0.014);

MDL.Drivetrain.ManualTransmission.GearboxMTRigid.Const_SyncTime  = struct(...
'Comment', 'Synchronisation time constant',...
'Origin', ' ',...
'vName', 'SyncTime',...
'vUnit', '[s]',...
'v', 0.1);

table = [
-1 0.91
0 0.91
1 0.91
2 0.91
3 0.91
4 0.91
5 0.91
5.05 0.91
5.1 0.91
5.15 0.91
5.2 0.91
5.25 0.91
5.3 0.91
5.35 0.91
5.4 0.91
5.45 0.91
5.5 0.91
5.55 0.91
5.6 0.91
5.65 0.91
5.7 0.91
5.75 0.91
5.8 0.91
5.85 0.91
5.9 0.91
];
MDL.Drivetrain.ManualTransmission.GearboxMTRigid.Map_Forward_Efficiency  = struct(...
'Comment', 'Transmission forward efficiency (engine drives the vehicle) [-] = f(Gear)',...
'Origin', ' ',...
'xName', 'Gear',...
'xUnit', '[-]',...
'vName', 'Forward_Efficiency',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-1 -3
0 0
1 3.75
2 2.235
3 1.518
4 1.13
5 0.7
5.05 0.6785
5.1 0.657
5.15 0.6355
5.2 0.614
5.25 0.5925
5.3 0.571
5.35 0.5495
5.4 0.528
5.45 0.5065
5.5 0.485
5.55 0.4635
5.6 0.442
5.65 0.4205
5.7 0.399
5.75 0.3775
5.8 0.356
5.85 0.3345
5.9 0.313
];
MDL.Drivetrain.ManualTransmission.GearboxMTRigid.Map_GearRatio  = struct(...
'Comment', 'Transmission gear ratio',...
'Origin', ' ',...
'xName', 'Gear',...
'xUnit', '[-]',...
'vName', 'GearRatio',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-1 0.91
0 0.91
1 0.91
2 0.91
3 0.91
4 0.91
5 0.91
5.05 0.91
5.1 0.91
5.15 0.91
5.2 0.91
5.25 0.91
5.3 0.91
5.35 0.91
5.4 0.91
5.45 0.91
5.5 0.91
5.55 0.91
5.6 0.91
5.65 0.91
5.7 0.91
5.75 0.91
5.8 0.91
5.85 0.91
5.9 0.91
];
MDL.Drivetrain.ManualTransmission.GearboxMTRigid.Map_Reverse_Efficiency  = struct(...
'Comment', 'Transmission reverse efficiency (vehicle drags the engine) [-]= f(Gear)',...
'Origin', ' ',...
'xName', 'Gear',...
'xUnit', '[-]',...
'vName', 'Reverse_Efficiency',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

