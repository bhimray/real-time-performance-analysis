% Instance name: SusForcesRear , Instance id: 1
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
MDL.VehicleDynamics.Suspension.Rear.Map_Force_LeftDamper  = struct(...
'Comment', 'Force left damper[N]=f(Displ_damper_dt)',...
'Origin', ' ',...
'xName', 'Displ_Damper_RL_dt',...
'xUnit', '[m/s]',...
'vName', 'F_Damper_RL',...
'vUnit', '[N]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-0.11 -16715
-0.1 -6715
0 5585
0.1 17885
0.11 30885
0.1111 32315
0.1122 33745
0.1133 35175
0.1144 36605
0.1155 38035
0.1166 39465
0.1177 40895
0.1188 42325
0.1199 43755
0.121 45185
0.1221 46615
0.1232 48045
0.1243 49475
0.1254 50905
0.1265 52335
0.1276 53765
0.1287 55195
0.1298 56625
0.1309 58055
0.132 59485
];
MDL.VehicleDynamics.Suspension.Rear.Map_Force_LeftSpring  = struct(...
'Comment', 'Force left spring[N]=f(Displ_spring)',...
'Origin', ' ',...
'xName', 'Displ_Spring_RL',...
'xUnit', '[m]',...
'vName', 'F_Spring_RL',...
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
MDL.VehicleDynamics.Suspension.Rear.Map_Force_RightDamper  = struct(...
'Comment', 'Force right damper[N]=f(Displ_damper_dt)',...
'Origin', ' ',...
'xName', 'Displ_Damper_RR_dt',...
'xUnit', '[m|s]',...
'vName', 'F_Damper_RR',...
'vUnit', '[N]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-0.11 -16715
-0.1 -6715
0 5585
0.1 17885
0.11 30885
0.1111 32315
0.1122 33745
0.1133 35175
0.1144 36605
0.1155 38035
0.1166 39465
0.1177 40895
0.1188 42325
0.1199 43755
0.121 45185
0.1221 46615
0.1232 48045
0.1243 49475
0.1254 50905
0.1265 52335
0.1276 53765
0.1287 55195
0.1298 56625
0.1309 58055
0.132 59485
];
MDL.VehicleDynamics.Suspension.Rear.Map_Force_RightSpring  = struct(...
'Comment', 'Force right spring[N]=f(Displ_spring)',...
'Origin', ' ',...
'xName', 'Displ_Spring_RR',...
'xUnit', '[m]',...
'vName', 'F_Spring_RR',...
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
MDL.VehicleDynamics.Suspension.Rear.Map_Force_Stabilizer  = struct(...
'Comment', 'Force_stabilizer[N]|Torque_stabilizer[Nm]=f(Displ_stabilizer|Rot_stabilizer)',...
'Origin', ' ',...
'xName', 'Displ_Stabilizer|Rot_Stabilizer',...
'xUnit', '[m]|[rad]',...
'vName', 'Force_Stabilizer|Torque_Stabilizer',...
'vUnit', '[N]|[Nm]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

