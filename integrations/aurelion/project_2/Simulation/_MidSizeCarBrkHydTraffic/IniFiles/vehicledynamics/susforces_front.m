% Instance name: SusForcesFront , Instance id: 1
table = [
-1 -3088.8
-0.5 -2239.2
-0.4 -2034
-0.25 -1796.4
-0.15 -1213.2
-0.05 -405.6
0 0
0.05 155.232
0.15 374.976
0.25 689.472
0.4 852.768
0.5 1010.02
1 1693.44
1.01 1707.11
1.02 1720.77
1.03 1734.45
1.04 1748.12
1.05 1761.78
1.06 1775.45
1.07 1789.11
1.08 1802.79
1.09 1816.46
1.1 1830.12
1.11 1843.79
1.12 1857.46
];
MDL.VehicleDynamics.Suspension.Front.Map_Force_LeftDamper  = struct(...
'Comment', 'Force left damper[N]=f(Displ_damper_dt)',...
'Origin', ' ',...
'xName', 'Displ_Damper_FL_dt',...
'xUnit', '[m/s]',...
'vName', 'F_Damper_FL',...
'vUnit', '[N]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-0.11 -15595.1
-0.1 -5595.07
0 7404.93
0.1 20404.9
0.11 30405
0.1111 31505.011
0.1122 32605.022
0.1133 33705.033
0.1144 34805.044
0.1155 35905.055
0.1166 37005.066
0.1177 38105.077
0.1188 39205.088
0.1199 40305.099
0.121 41405.11
0.1221 42505.121
0.1232 43605.132
0.1243 44705.143
0.1254 45805.154
0.1265 46905.165
0.1276 48005.176
0.1287 49105.187
0.1298 50205.198
0.1309 51305.209
0.132 52405.22
];
MDL.VehicleDynamics.Suspension.Front.Map_Force_LeftSpring  = struct(...
'Comment', 'Force left spring[N]=f(Displ_spring)',...
'Origin', ' ',...
'xName', 'Displ_Spring_FL',...
'xUnit', '[m]',...
'vName', 'F_Spring_FL',...
'vUnit', '[N]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-1 -3088.8
-0.5 -2239.2
-0.4 -2034
-0.25 -1796.4
-0.15 -1213.2
-0.05 -405.6
0 0
0.05 155.232
0.15 374.976
0.25 689.472
0.4 852.768
0.5 1010.02
1 1693.44
1.01 1707.11
1.02 1720.77
1.03 1734.45
1.04 1748.12
1.05 1761.78
1.06 1775.45
1.07 1789.11
1.08 1802.79
1.09 1816.46
1.1 1830.12
1.11 1843.79
1.12 1857.46
];
MDL.VehicleDynamics.Suspension.Front.Map_Force_RightDamper  = struct(...
'Comment', 'Force right damper[N]=f(Displ_damper_dt)',...
'Origin', ' ',...
'xName', 'Displ_Damper_FR_dt',...
'xUnit', '[m/s]',...
'vName', 'F_Damper_FR',...
'vUnit', '[N]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-0.11 -15595.1
-0.1 -5595.07
0 7404.93
0.1 20404.9
0.11 30405
0.1111 31505.011
0.1122 32605.022
0.1133 33705.033
0.1144 34805.044
0.1155 35905.055
0.1166 37005.066
0.1177 38105.077
0.1188 39205.088
0.1199 40305.099
0.121 41405.11
0.1221 42505.121
0.1232 43605.132
0.1243 44705.143
0.1254 45805.154
0.1265 46905.165
0.1276 48005.176
0.1287 49105.187
0.1298 50205.198
0.1309 51305.209
0.132 52405.22
];
MDL.VehicleDynamics.Suspension.Front.Map_Force_RightSpring  = struct(...
'Comment', 'Force right spring[N]=f(Displ_spring)',...
'Origin', ' ',...
'xName', 'Displ_Spring_FR',...
'xUnit', '[m]',...
'vName', 'F_Spring_FR',...
'vUnit', '[N]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-1 -11356
0 0
1 11356
1.01 11469.6
1.02 11583.1
1.03 11696.7
1.04 11810.2
1.05 11923.8
1.06 12037.4
1.07 12150.9
1.08 12264.5
1.09 12378
1.1 12491.6
1.11 12605.2
1.12 12718.7
1.13 12832.3
1.14 12945.8
1.15 13059.4
1.16 13173
1.17 13286.5
1.18 13400.1
1.19 13513.6
1.2 13627.2
1.21 13740.8
1.22 13854.3
];
MDL.VehicleDynamics.Suspension.Front.Map_Force_Stabilizer  = struct(...
'Comment', 'Force_stabilizer[N]|Torque_stabilizer[Nm]=f(Displ_stabilizer|Rot_stabilizer)',...
'Origin', ' ',...
'xName', 'Displ_Stabilizer|Rot_Stabilizer',...
'xUnit', '[m]|[rad]',...
'vName', 'Force_Stabilizer|Torque_Stabilizer',...
'vUnit', '[N]|[Nm]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

