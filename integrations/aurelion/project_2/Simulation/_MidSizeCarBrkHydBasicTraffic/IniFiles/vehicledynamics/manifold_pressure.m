% Instance name: manifold_pressure , Instance id: 1
table = [
0 0
5 0.27
10 0.47
15 0.62
20 0.72
25 0.8
30 0.86
35 0.9
40 0.93
45 0.96
50 0.975
55 0.985
60 0.995
65 0.998
70 1
75 1
80 1
85 1
90 1
95 1
100 1
];
MDL.VehicleDynamics.ManifoldPressure.Map_p_Man  = struct(...
'Comment', 'Manifold pressure, p_Man[bar] = f(Pos_AccPedal[%])',...
'Origin', ' ',...
'xName', 'Pos_AccPedal',...
'xUnit', '[%]',...
'vName', 'p_Man',...
'vUnit', '[bar]',...
'x', table(:,1),...
'v', table(:,2));
clear table;

