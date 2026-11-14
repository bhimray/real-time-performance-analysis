
function asm_road_maneuver_ini(varargin)

MDL = evalin('base','MDL;','[];');

% *********** Maneuver select switch ***********************************************************************
MDL.Environment.SW_Maneuver_Select.Comment       = 'Maneuver select switch, 1: ModelDesk, 2-6: maneuver 2-6 [-]';
MDL.Environment.SW_Maneuver_Select.Origin        = '-';
MDL.Environment.SW_Maneuver_Select.vName         = 'Maneuver_Select';
MDL.Environment.SW_Maneuver_Select.vUnit         = '[-]';
MDL.Environment.SW_Maneuver_Select.v             = 1;

% *********** Maneuver list *********************************************************************************
% This maneuvers are initialized as Maneuver 2-6. Maneuver 1 is used by ModelDesk. If you use the model 
% on a real-time hardware, this maneuvers are available and selectable online during runtime.
Maneuver{1} = 'Family1';                          % Maneuver 1 (used by ModelDesk)
Maneuver{2} = 'Junction_TurnLeft_LaneChange_1F_Oncoming';	% Maneuver 2 
Maneuver{3} = 'ACC_Highway';                                % Maneuver 3
Maneuver{4} = 'NetworkDriving_15Fellows';                   % Maneuver 4
Maneuver{5} = 'Parallel_Parking';                           % Maneuver 5
Maneuver{6} = 'ManualDriving_WithRoad';                     % Maneuver 6 

% *********** Road select switch ***********************************************************************
MDL.Environment.SW_Road_Select.Comment       = 'Road select switch, 1: ModelDesk, 2-6: road 2-6 [-]';
MDL.Environment.SW_Road_Select.Origin        = '-';
MDL.Environment.SW_Road_Select.vName         = 'Road_Select';
MDL.Environment.SW_Road_Select.vUnit         = '[-]';
MDL.Environment.SW_Road_Select.v             = 1;

% *********** Road list *********************************************************************************
% This roads are initialized as Road 2-6. Road 1 is used by ModelDesk. If you use the model 
% on a real-time hardware, this roads are available and selectable online during runtime.
Road{1} = 'Family1';          % Road 1 (used by ModelDesk)
Road{2} = 'FourWayJunction_4Lanes';     % Road 2
Road{3} = 'StraightLong';               % Road 3
Road{4} = 'RoadNetwork_Basic';          % Road 4
Road{5} = 'RoadWithParkingLane';        % Road 5
Road{6} = 'HandlingTrack';              % Road 6

% For Groundtruth Lane-Information this option has to be enabled [0|1]
% For an enabled option the lane information is needed within the road files
Use_LaneNetwork = 1;


% DO NOT CHANGE HERE: ----------------------------------------------------------------------------------------

% Check from where the script is called
current_path = pwd;
slash_pos = strfind(current_path,'\');
last_path_str = current_path(slash_pos(end)+1:end);

if strcmpi(last_path_str,'inifiles'),
    % initialisation is called from "go" 
    called_from_go = 1;
else
    % initialisation is called manually 
    called_from_go = 0;
end;

% *********** ModelDesk road and maneuver initialisation ********************************

% ModelDesk maneuver
clear file_var
try  
  if (called_from_go == 1), 
     % initialisation is called from "go" 
     file_var = load(['.\Scenario\', Maneuver{1}]);
  else  
     % initialisation is called manually 
     file_var = load(['.\inifiles\Scenario\', Maneuver{1}]);
  end;
catch
  fprintf(['\nERROR: Loading maneuver ', Maneuver{1}]);
  return;
end; 

ManeuverVector = zeros(10000,1);
ManeuverVector(1:length(file_var.ManeuverVector)) = file_var.ManeuverVector;

MDL.Environment.Maneuver.Maneuver_ModelDesk = struct(...
    'Comment',['Maneuver segment definition vector from ' Maneuver{1},'.mat.'],...
    'Origin','',...
    'vName','ManeuverVector',...
    'vUnit','[-]',...
    'v',ManeuverVector);

clear ManeuverVector;

% *********** Maneuver initialisation *******************************************************
% for maneuver 2-6 (Maneuver ModelDesk is handled separately)
for kk=2:6  
  try 
    if (called_from_go == 1), 
       % initialisation is called from "go" 
       load(['.\Scenario\', Maneuver{kk}]);
    else  
       % initialisation is called manually 
       load(['.\inifiles\Scenario\', Maneuver{kk}]);
    end;   
  catch
    fprintf(['\nERROR: Loading maneuver ', Maneuver{kk}]);
    return;
  end;  

  maneuver_string = ['Maneuver_',num2str(kk)];

  MDL.Environment.Maneuver.(maneuver_string) = struct(...
      'Comment',['Maneuver segment definition vector from ' Maneuver{kk},'.mat.'],...
      'Origin','',...
      'vName','',...
      'vUnit','[-]',...
      'v',ManeuverVector);

  clear ManeuverVector;
end; % for each maneuver


% ModelDesk road
clear file_var
try  
  if (called_from_go == 1), 
     % initialisation is called from "go" 
     file_var = load(['.\Road\', Road{1}]);
  else  
     % initialisation is called manually 
     file_var = load(['.\inifiles\Road\', Road{1}]);
  end;
catch
  fprintf(['\nERROR: Loading road ', Road{1}]);
  return;
end;

RoadVector = zeros(10000,1);
RoadVector(1:length(file_var.RoadVector)) = file_var.RoadVector;

MDL.Environment.Road.Road_ModelDesk = struct(...
    'Comment',['Road segment definition vector from ' Road{1},'.mat.'],...
    'Origin','',...
    'vName','RoadVector',...
    'vUnit','[-]',...
    'v',RoadVector);
clear RoadVector;

if (Use_LaneNetwork == 1)
    LaneVector = zeros(150000,1);
    LaneVector(1:length(file_var.LaneVector)) = file_var.LaneVector;
    
    MDL.Environment.LaneNetwork.LaneNetwork_ModelDesk  = struct(...
    'Comment', ['Lanevector generated by ModelDesk'],...
    'Origin', '',...
    'vName', 'LaneVector',...
    'vUnit', '[-]',...
    'v', LaneVector);

    clear LaneVector;

else
    
    LaneVector_dummy = zeros(150000,1);
    LaneVector_dummy(1:26) = [9;2;11;0;0;0;0;0;0;0;111111;0;0;0;0;0;0;0;0;0;0;0;222222;999999;333333;999999];
    
     MDL.Environment.LaneNetwork.LaneNetwork_ModelDesk  = struct(...
    'Comment', ['Lanevector generated by ModelDesk'],...
    'Origin', '',...
    'vName', 'LaneVector',...
    'vUnit', '[-]',...
    'v', LaneVector_dummy);

    clear LaneVector_dummy;
    
end;
      

% *********** Road initialisation *******************************************************
% for road 2-6 (Road ModelDesk is handled separately)

if (Use_LaneNetwork ~= 1)
    % use dummy lanevector instead   
    LaneVector_dummy = zeros(150000,1);
    LaneVector_dummy(1:26) = [9;2;11;0;0;0;0;0;0;0;111111;0;0;0;0;0;0;0;0;0;0;0;222222;999999;333333;999999];
end;

for (kk=2:6) %#ok<NO4LP>  
  try 
    if (called_from_go == 1), 
       % initialisation is called from "go" 
       load(['.\Road\', Road{kk}]);
    else  
       % initialisation is called manually 
       load(['.\inifiles\Road\', Road{kk}]);
    end;   
  catch
    fprintf(['\nERROR: Loading road ', Road{kk}]);
    return;
  end;  

  road_string			= ['Road_',num2str(kk)];
  
  MDL.Environment.Road.(road_string) = struct(...
      'Comment',['Road segment definition vector from ' Road{kk},'.mat.'],...
      'Origin','',...
      'vName','',...
      'vUnit','[-]',...
      'v',RoadVector);
  
  clear RoadVector;
  
  lanenetwork_string	= ['LaneNetwork_',num2str(kk)];
  
  if (Use_LaneNetwork == 1)
            
      MDL.Environment.LaneNetwork.(lanenetwork_string)  = struct(...
          'Comment', ['Lanevector ' Road{kk}],...
          'Origin', '',...
          'vName', '',...
          'vUnit', '[-]',...
          'v', LaneVector);
      
      clear LaneVector;
      
  else
      
      %use dummy lanevector
      MDL.Environment.LaneNetwork.(lanenetwork_string)  = struct(...
          'Comment', ['Lanevector ' Road{kk}],...
          'Origin', '',...
          'vName', '',...
          'vUnit', '[-]',...
          'v', LaneVector_dummy);
      
  end;
  
end; % for each road

if (Use_LaneNetwork ~= 1)
    clear LaneVector_dummy;
end;

% *********** Discrete objects initialization ********************************
% objects used in road network
for k=1:6
    try
        if (called_from_go == 1),
            % initialisation is called from "go"
            eval(['load(''.\Road\', Road{k}, ''')']);
        else
            % initialisation is called manually
            eval(['load(''.\inifiles\Road\', Road{k}, ''')']);
        end;
        DiscreteObjectsVector = [DiscreteObjectsVector; zeros(10000-length(DiscreteObjectsVector),1)];
        eval(sprintf('MDL.Traffic.DiscreteObjects.DiscreteObjects_%d.v = DiscreteObjectsVector;',k));
    catch
        fprintf(['\nERROR: Loading discrete objects of road ', Road{k}]);
        return; 
    end;
end;
clear DiscreteObjectsVector;

% *********** ModelDesk write access flag ***********************************************************************
MDL.Environment.ModelDesk_WriteAccess.Comment       = 'ModelDesk write access flag [-]';
MDL.Environment.ModelDesk_WriteAccess.Origin        = '-';
MDL.Environment.ModelDesk_WriteAccess.vName         = 'ModelDesk_WriteAccess';
MDL.Environment.ModelDesk_WriteAccess.vUnit         = '[-]';
MDL.Environment.ModelDesk_WriteAccess.v             = 0;

% *********** Dynamic Lane Sensor output block parameters ******************************************************
MDL.Environment.Road.LaneSensorDynamic_Output.Const_SensorPoints_OutputDimension = struct(...
    'Comment','Number of dynamic lane sensor points. Used as dimension for the dynamic lane sensor output block [-]',...
    'Origin','-',...
    'vName','Const_SensorPoints_OutputDimension',...
    'vUnit','[-]',...
    'v',5);

MDL.Environment.Road.LaneSensorDynamic_Output.Const_MeasPoints_OutputDimension = struct(...
    'Comment','Number of dynamic lane sensor measurement points. Used as dimension for the dynamic lane sensor output block [-]',...
    'Origin','-',...
    'vName','Const_MeasPoints_OutputDimension',...
    'vUnit','[-]',...
    'v',4);

MDL.Environment.Road.LaneSensorDynamic_Output.Const_LanesLeft_OutputDimension = struct(...
    'Comment','Number of lanes left of the current lane to be considered by dynamic lane sensor. Used as dimension for the dynamic lane sensor output block [-]',...
    'Origin','-',...
    'vName','Const_LanesLeft_OutputDimension',...
    'vUnit','[-]',...
    'v',2);

MDL.Environment.Road.LaneSensorDynamic_Output.Const_LanesRight_OutputDimension = struct(...
    'Comment','Number of lanes right of the current lane to be considered by dynamic lane sensor. Used as dimension for the dynamic lane sensor output block [-]',...
    'Origin','-',...
    'vName','Const_LanesRight_OutputDimension',...
    'vUnit','[-]',...
    'v',2);

% *********** Lane Network block parameters ******************************************************
MDL.Environment.LaneNetwork.Const_Section_Dim_x  = struct(...
'Comment', 'Dimension of section in x direction',...
'Origin', ' ',...
'vName', 'Const_Quad_Dim_x',...
'vUnit', '[m]',...
'v', 200);

MDL.Environment.LaneNetwork.Const_Section_Dim_y  = struct(...
'Comment', 'Dimension of section in y direction',...
'Origin', ' ',...
'vName', 'Const_Quad_Dim_y',...
'vUnit', '[m]',...
'v', 200);

MDL.Environment.LaneNetwork.Const_Max_Num_Lb_Per_Section  = struct(...
'Comment', 'Maximum number of laneboundaries within section',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Lb_Quad',...
'vUnit', '[-]',...
'v', 150);

MDL.Environment.LaneNetwork.Const_Max_Num_Pnts_Per_Step  = struct(...
'Comment', 'Maximum number of points per initialization step (load)',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Pnts_Load',...
'vUnit', '[-]',...
'v', 300);

MDL.Environment.LaneNetwork.Const_Max_Num_Lanes_Per_Step  = struct(...
'Comment', 'Maximum number of lanes per initialization step (load)',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Lanes_Load',...
'vUnit', '[-]',...
'v', 10);

MDL.Environment.LaneNetwork.Const_Max_Num_Lb_Free_Per_Step  = struct(...
'Comment', 'Maximum number of laneboundaries per initialization step (free)',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Lb_Free',...
'vUnit', '[-]',...
'v', 100);

MDL.Environment.LaneNetwork.Const_Max_Num_Lanes_Free_Per_Step  = struct(...
'Comment', 'Maximum number of lanes per initialization step (free)',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Lanes_Free',...
'vUnit', '[-]',...
'v', 10);

assignin('base','MDL',MDL);

