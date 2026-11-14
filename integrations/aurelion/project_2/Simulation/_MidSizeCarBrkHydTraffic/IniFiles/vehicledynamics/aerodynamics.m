% Instance name: aerodynamics , Instance id: 1
MDL.VehicleDynamics.Aerodynamics.Const_A_x  = struct(...
'Comment', 'Longitudinal shadow area of the vehicle',...
'Origin', ' ',...
'vName', 'A_x',...
'vUnit', '[m2]',...
'v', 2.06);

MDL.VehicleDynamics.Aerodynamics.Const_Char_Length  = struct(...
'Comment', 'Characteristic length for aerodynamics torque calculation',...
'Origin', ' ',...
'vName', 'Char_Length',...
'vUnit', '[m]',...
'v', 2.6);

MDL.VehicleDynamics.Aerodynamics.Const_Dens_Air  = struct(...
'Comment', 'Density Air',...
'Origin', ' ',...
'vName', 'Dens_Air',...
'vUnit', '[kg/m3]',...
'v', 1.188);

table = [
-1
0
-0.3
];
MDL.VehicleDynamics.Aerodynamics.Const_PosVec_RefAero_CoorSysV  = struct(...
'Comment', 'Position vector from vehicle coordinate system to the aerodynamics reference point',...
'Origin', ' ',...
'vName', 'PosVec_RefAero_CoorSysV',...
'vUnit', '[m]',...
'v', table);
clear table;

table = [
-180 0
-140 -0.36
-90 -0.45
-60 -0.34
-20 -0.12
0 0
20 0.12
60 0.34
90 0.45
140 0.36
180 0
181.8 -0.0162
183.6 -0.0324
185.4 -0.0486
187.2 -0.0648
189 -0.081
190.8 -0.0972
192.6 -0.1134
194.4 -0.1296
196.2 -0.1458
198 -0.162
199.8 -0.1782
201.6 -0.1944
203.4 -0.2106
205.2 -0.2268
207 -0.243
208.8 -0.2592
210.6 -0.2754
212.4 -0.2916
214.2 -0.3078
];
MDL.VehicleDynamics.Aerodynamics.Map_C_M_x  = struct(...
'Comment', 'Rolling aerodynamics coefficient C_M_x = f(Angle of incidence)',...
'Origin', ' ',...
'xName', 'Incidence_Angle',...
'xUnit', '[deg]',...
'vName', 'C_M_x',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-180 -0.09
-140 -0.05
-90 0.18
-60 0.16
-20 0.05
0 0.05
20 0.05
60 0.16
90 0.18
140 -0.05
180 -0.09
181.8 -0.0918
183.6 -0.0936
185.4 -0.0954
187.2 -0.0972
189 -0.099
190.8 -0.1008
192.6 -0.1026
194.4 -0.1044
196.2 -0.1062
198 -0.108
199.8 -0.1098
201.6 -0.1116
203.4 -0.1134
205.2 -0.1152
207 -0.117
208.8 -0.1188
210.6 -0.1206
212.4 -0.1224
214.2 -0.1242
];
MDL.VehicleDynamics.Aerodynamics.Map_C_M_y  = struct(...
'Comment', 'Pitching aerodynamics coefficient C_M_y = f(Angle of incidence)',...
'Origin', ' ',...
'xName', 'Incidence_Angle',...
'xUnit', '[deg]',...
'vName', 'C_M_y',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-180 0.02
-140 0.26
-90 0
-60 -0.22
-20 -0.11
0 0
20 0.11
60 0.22
90 0
140 -0.26
180 -0.02
181.8 -0.0092
183.6 0.0016
185.4 0.0124
187.2 0.0232
189 0.034
190.8 0.0448
192.6 0.0556
194.4 0.0664
196.2 0.0772
198 0.088
199.8 0.0988
201.6 0.1096
203.4 0.1204
205.2 0.1312
207 0.142
208.8 0.1528
210.6 0.1636
212.4 0.1744
214.2 0.1852
];
MDL.VehicleDynamics.Aerodynamics.Map_C_M_z  = struct(...
'Comment', 'Yawing aerodynamics coefficient C_M_z = f(Angle of incidence)',...
'Origin', ' ',...
'xName', 'Incidence_Angle',...
'xUnit', '[deg]',...
'vName', 'C_M_z',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-180 -0.36
-140 -0.29
-90 -0.07
-60 0.18
-20 0.35
0 0.37
20 0.35
60 0.18
90 -0.07
140 -0.29
180 -0.36
181.8 -0.36315
183.6 -0.3663
185.4 -0.36945
187.2 -0.3726
189 -0.37575
190.8 -0.3789
192.6 -0.38205
194.4 -0.3852
196.2 -0.38835
198 -0.3915
199.8 -0.39465
201.6 -0.3978
203.4 -0.40095
205.2 -0.4041
207 -0.40725
208.8 -0.4104
210.6 -0.41355
212.4 -0.4167
214.2 -0.41985
];
MDL.VehicleDynamics.Aerodynamics.Map_C_x  = struct(...
'Comment', 'Longitudinal aerodynamics coefficient C_x = f(Angle of incidence)',...
'Origin', ' ',...
'xName', 'Incidence_Angle',...
'xUnit', '[deg]',...
'vName', 'C_x',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-180 0
-140 -1.23
-90 -1.59
-60 -1.25
-20 -0.48
0 0
20 0.48
60 1.25
90 1.59
140 1.23
180 0
181.8 -0.05535
183.6 -0.1107
185.4 -0.16605
187.2 -0.2214
189 -0.27675
190.8 -0.3321
192.6 -0.38745
194.4 -0.4428
196.2 -0.49815
198 -0.5535
199.8 -0.60885
201.6 -0.6642
203.4 -0.71955
205.2 -0.7749
207 -0.83025
208.8 -0.8856
210.6 -0.94095
212.4 -0.9963
214.2 -1.0517
];
MDL.VehicleDynamics.Aerodynamics.Map_C_y  = struct(...
'Comment', 'Lateral aerodynamics coefficient C_y = f(Angle of incidence)',...
'Origin', ' ',...
'xName', 'Incidence_Angle',...
'xUnit', '[deg]',...
'vName', 'C_y',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

table = [
-180 -0.01
-140 0.71
-90 0.74
-60 0.51
-20 0.32
0 0.2
20 0.32
60 0.51
90 0.74
140 0.71
180 -0.01
181.8 -0.0424
183.6 -0.0748
185.4 -0.1072
187.2 -0.1396
189 -0.172
190.8 -0.2044
192.6 -0.2368
194.4 -0.2692
196.2 -0.3016
198 -0.334
199.8 -0.3664
201.6 -0.3988
203.4 -0.4312
205.2 -0.4636
207 -0.496
208.8 -0.5284
210.6 -0.5608
212.4 -0.5932
214.2 -0.6256
];
MDL.VehicleDynamics.Aerodynamics.Map_C_z  = struct(...
'Comment', 'Vertical aerodynamics coefficient C_z = f(Angle of incidence)',...
'Origin', ' ',...
'xName', 'Incidence_Angle',...
'xUnit', '[deg]',...
'vName', 'C_z',...
'vUnit', '[-]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

