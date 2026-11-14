
function asm_traffic_ini (varargin)

MDL = evalin('base','MDL;','[];');

% *********** Traffic Scenario**************************************************************************
TrafficScenario = 'Family1';      % Traffic Scenario for initialization, will be overwritten by ModelDesk
% *********** Traffic Objects***************************************************************************
TrafficObjects_Fellows = 'Family1_TrafficObjects'; % Traffic Objects for initialization, will be overwritten by ModelDesk

TrafficObjects_Road{1} = 'Family1_RoadObjects';
TrafficObjects_Road{2} = 'FourWayJunction_4Lanes_RoadObjects';
TrafficObjects_Road{3} = 'StraightLong_RoadObjects';
TrafficObjects_Road{4} = 'RoadNetwork_Basic_RoadObjects';
TrafficObjects_Road{5} = 'RoadWithParkingLane_RoadObjects';
TrafficObjects_Road{6} = 'HandlingTrack_RoadObjects';

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

% *********** traffic scenario initialisation ********************************
clear file_var
try  
  if (called_from_go == 1), 
     % initialisation is called from "go" 
     eval(['file_var = load(''.\Scenario\', TrafficScenario, ''');']);
  else  
     % initialisation is called manually 
     eval(['file_var = load(''.\inifiles\Scenario\', TrafficScenario, ''');']);
  end;
catch
  fprintf(['\nERROR: Loading traffic scenario ', TrafficScenario]);
  return;
end; 

MDL.Traffic.MaxNumUserSignals.Comment       = ['Maximum number of traffic user signals'];
MDL.Traffic.MaxNumUserSignals.Origin        = '';
MDL.Traffic.MaxNumUserSignals.vName         = 'MaxNumUserSignals';
MDL.Traffic.MaxNumUserSignals.vUnit         = '[-]';
MDL.Traffic.MaxNumUserSignals.v             = 10;

MDL.Traffic.MaxNumFellows.Comment       = ['Maximum number of traffic fellows'];
MDL.Traffic.MaxNumFellows.Origin        = '';
MDL.Traffic.MaxNumFellows.vName         = 'MaxNumFellows';
MDL.Traffic.MaxNumFellows.vUnit         = '[-]';
MDL.Traffic.MaxNumFellows.v             = 30;

MDL.Traffic.MaxNumFDUserSignals.Comment       = ['Maximum number of fellow dependant user signals'];
MDL.Traffic.MaxNumFDUserSignals.Origin        = '';
MDL.Traffic.MaxNumFDUserSignals.vName         = 'MaxNumFDUserSignals';
MDL.Traffic.MaxNumFDUserSignals.vUnit         = '[-]';
MDL.Traffic.MaxNumFDUserSignals.v             = 8;

TrafficVector = zeros(10000,1);
TrafficVector(1:length(file_var.TrafficVector)) = file_var.TrafficVector;

MDL.Traffic.TrafficScheduler.Scenario.Comment       = ['Traffic scenario definition from ' TrafficScenario,'.mat.'];
MDL.Traffic.TrafficScheduler.Scenario.Origin        = '';
MDL.Traffic.TrafficScheduler.Scenario.vName         = 'TrafficVector';
MDL.Traffic.TrafficScheduler.Scenario.vUnit         = '[-]';
MDL.Traffic.TrafficScheduler.Scenario.v             = TrafficVector;

clear TrafficVector;

% *********** traffic fellows initialisation *********************************
% Object_ID_Fellows

TrafficFellows = -1 * ones(MDL.Traffic.MaxNumFellows.v,1);
TrafficFellows(1:min(length(file_var.TrafficFellows), MDL.Traffic.MaxNumFellows.v)) = file_var.TrafficFellows(1:min(length(file_var.TrafficFellows), MDL.Traffic.MaxNumFellows.v));

if length(file_var.TrafficFellows) > MDL.Traffic.MaxNumFellows.v
    fprintf('WARNING: scenario file ''%s'' contains %d fellows but model supports only %d fellows. The additional fellows will be ignored. ... ', [TrafficScenario '.mat'], length(file_var.TrafficFellows), MDL.Traffic.MaxNumFellows.v);
end

MDL.Traffic.Sensors.Fellows.TrafficObject_Type_Fellows.Comment      = 'List of traffic object types for all traffic fellows';
MDL.Traffic.Sensors.Fellows.TrafficObject_Type_Fellows.Origin       = 'initial version';
MDL.Traffic.Sensors.Fellows.TrafficObject_Type_Fellows.vName        = 'TrafficObject_Type_Fellows';
MDL.Traffic.Sensors.Fellows.TrafficObject_Type_Fellows.vUnit        = '[-]';
MDL.Traffic.Sensors.Fellows.TrafficObject_Type_Fellows.v            = TrafficFellows;

clear TrafficFellows

% *********** traffic objects initialisation ********************************
% objects used by fellows
try
   if (called_from_go == 1),
      % initialisation is called from "go"
      eval(['load(''.\Objects\', TrafficObjects_Fellows, ''')']);
   else
      % initialisation is called manually
      eval(['load(''.\inifiles\Objects\', TrafficObjects_Fellows, ''')']);
   end;
catch
   fprintf(['\nERROR: Loading traffic objects ', TrafficObjects_Fellows]);
   return;
end;

ObjectsVector = [ObjectsVector; zeros(10000-length(ObjectsVector),1)];

MDL.Traffic.Objects.TrafficObjects.Comment       = ['Traffic objects definition from ' TrafficObjects_Fellows,'.mat.'];
MDL.Traffic.Objects.TrafficObjects.Origin        = '';
MDL.Traffic.Objects.TrafficObjects.vName         = 'ObjectsVector';
MDL.Traffic.Objects.TrafficObjects.vUnit         = '[-]';
MDL.Traffic.Objects.TrafficObjects.v             = ObjectsVector;
clear ObjectsVector;

% objects used in road network
for k=1:6
    try
        if (called_from_go == 1),
            % initialisation is called from "go"
            eval(['load(''.\Objects\', TrafficObjects_Road{k}, ''')']);
        else
            % initialisation is called manually
            eval(['load(''.\inifiles\Objects\', TrafficObjects_Road{k}, ''')']);
        end;
		ObjectsVector = [ObjectsVector; zeros(10000-length(ObjectsVector),1)];
        eval(sprintf('MDL.Traffic.Objects.RoadObjects_%d.v = ObjectsVector;',k));
    catch
        fprintf(['\nERROR: Loading traffic objects ', TrafficObjects_Road{k}]);
        return;
    end;
end;
clear ObjectsVector;

% *********** output dimension of all 3D sensors calculations *************
MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.Comment = 'Sensor output dimension';
MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.Origin = ' ';
MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.vName = 'Const_Sensor_Output_Dimension';
MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.vUnit = '[-]';
MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.v = 15;

% *********** output dimension of sensor rays of 2D Sensor *************
MDL.Traffic.Sensors.ObjectSensor2D_Calculation.Const_Sensor_Output_Dimension.Comment = 'Sensor output dimension';
MDL.Traffic.Sensors.ObjectSensor2D_Calculation.Const_Sensor_Output_Dimension.Origin = ' ';
MDL.Traffic.Sensors.ObjectSensor2D_Calculation.Const_Sensor_Output_Dimension.vName = 'Const_Sensor_Output_Dimension';
MDL.Traffic.Sensors.ObjectSensor2D_Calculation.Const_Sensor_Output_Dimension.vUnit = '[-]';
MDL.Traffic.Sensors.ObjectSensor2D_Calculation.Const_Sensor_Output_Dimension.v = 60;

% *********** output dimension of traffic sign sensor dynamic *************
MDL.Traffic.Sensors.TrafficSignSensorDyn_Calculation.Const_Sensor_Output_Dimension.Comment = 'Sensor output dimension';
MDL.Traffic.Sensors.TrafficSignSensorDyn_Calculation.Const_Sensor_Output_Dimension.Origin = ' ';
MDL.Traffic.Sensors.TrafficSignSensorDyn_Calculation.Const_Sensor_Output_Dimension.vName = 'Const_Sensor_Output_Dimension';
MDL.Traffic.Sensors.TrafficSignSensorDyn_Calculation.Const_Sensor_Output_Dimension.vUnit = '[-]';
MDL.Traffic.Sensors.TrafficSignSensorDyn_Calculation.Const_Sensor_Output_Dimension.v = 5;

% *********** number of sensor points for lanes on roads (line sensor) *************
MDL.Traffic.Sensors.LineSensor.Const_Road_Lane_Output_Dimension.Comment       = 'Maximum number of road lane sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.LineSensor.Const_Road_Lane_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.LineSensor.Const_Road_Lane_Output_Dimension.vName         = 'Const_Road_Lane_Output_Dimension';
MDL.Traffic.Sensors.LineSensor.Const_Road_Lane_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.LineSensor.Const_Road_Lane_Output_Dimension.v             = 200;

% *********** number of sensor points for lines (shapes->free lines)  on roads (line sensor) *************
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_Line_Output_Dimension.Comment       = 'Maximum number of road line sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_Line_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_Line_Output_Dimension.vName         = 'Const_Road_Shape_Line_Output_Dimension';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_Line_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_Line_Output_Dimension.v             = 200;

% *********** number of sensor points for continuous objects on roads (line sensor) *************
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_ContObj_Output_Dimension.Comment       = 'Maximum number of road continuous objects sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_ContObj_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_ContObj_Output_Dimension.vName         = 'Const_Road_Shape_ContObj_Output_Dimension';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_ContObj_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.LineSensor.Const_Road_Shape_ContObj_Output_Dimension.v             = 200;

% *********** number of sensor points for borders on junctions (line sensor) *************
MDL.Traffic.Sensors.LineSensor.Const_Junction_Border_Output_Dimension.Comment       = 'Maximum number of junction lane sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Border_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Border_Output_Dimension.vName         = 'Const_Junction_Border_Output_Dimension';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Border_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Border_Output_Dimension.v             = 200;

% *********** number of sensor points for line shapes on junctions (line sensor) *************
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_Line_Output_Dimension.Comment       = 'Maximum number of junction line shape sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_Line_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_Line_Output_Dimension.vName         = 'Const_Junction_Shape_Line_Output_Dimension';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_Line_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_Line_Output_Dimension.v             = 200;

% *********** number of sensor points for continuous shapes on junctions (line sensor) *************
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_ContObj_Output_Dimension.Comment       = 'Maximum number of junction continuous shape sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_ContObj_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_ContObj_Output_Dimension.vName         = 'Const_Junction_Shape_ContObj_Output_Dimension';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_ContObj_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.LineSensor.Const_Junction_Shape_ContObj_Output_Dimension.v             = 200;

% *********** number of sensor points for collision detection (collision sensor) *************
MDL.Traffic.Sensors.CollisionSensor.Const_Sensor_Output_Dimension.Comment       = 'Maximum number of collision sensor points (determines Simulink outport width)';
MDL.Traffic.Sensors.CollisionSensor.Const_Sensor_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.CollisionSensor.Const_Sensor_Output_Dimension.vName         = 'Const_Sensor_Output_Dimension';
MDL.Traffic.Sensors.CollisionSensor.Const_Sensor_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.CollisionSensor.Const_Sensor_Output_Dimension.v             = 5;

% *********** length of discrete objects bounding rectangle quadrant *************
MDL.Traffic.DiscreteObjects.Const_Length_Bounding_Rectangle_Quadrant.Comment       = 'Length of discrete objects bounding rectangle quadrant';
MDL.Traffic.DiscreteObjects.Const_Length_Bounding_Rectangle_Quadrant.Origin        = '';
MDL.Traffic.DiscreteObjects.Const_Length_Bounding_Rectangle_Quadrant.vName         = 'MDL.Traffic.DiscreteObjects.Const_Length_Bounding_Rectangle_Quadrant';
MDL.Traffic.DiscreteObjects.Const_Length_Bounding_Rectangle_Quadrant.vUnit         = '[m]';
MDL.Traffic.DiscreteObjects.Const_Length_Bounding_Rectangle_Quadrant.v             = 15;

% *********** radar reflection points output dimension ***************************
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.v = 10;

% *********** radar reflection points output dimension object points *************
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.v = 16;

% *********** radar reflection points output dimension ***************************
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.v = 10;

% *********** radar reflection points output dimension object points *************
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.v = 16;

% *********** radar reflection points output dimension ***************************
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.v = 10;

% *********** radar reflection points output dimension object points *************
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.v = 16;

% *********** custom points output dimension ***************************
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.v;

% *********** custom points output dimension object points *************
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.CustomPoints_1.Const_Output_Dimension_Object_Points.v = 10;

% *********** custom points output dimension ***************************
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.v;

% *********** custom points output dimension object points *************
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.CustomPoints_2.Const_Output_Dimension_Object_Points.v = 10;

% *********** custom points output dimension ***************************
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.ObjectSensor3D_Calculation.Const_Sensor_Output_Dimension.v;

% *********** custom points output dimension object points *************
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.CustomPoints_3.Const_Output_Dimension_Object_Points.v = 10;

% *********** radar rcs noise output dimension ***************************
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.v;

% *********** radar rcs noise output dimension object points *************
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_RCS_Noise_1.Const_Output_Dimension_Object_Points.v = MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.v;

% *********** radar rcs noise output dimension ***************************
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.v;

% *********** radar rcs noise output dimension object points *************
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_RCS_Noise_2.Const_Output_Dimension_Object_Points.v = MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.v;

% *********** radar rcs noise output dimension ***************************
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.v;

% *********** radar rcs noise output dimension object points *************
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_RCS_Noise_3.Const_Output_Dimension_Object_Points.v = MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.v;

% *********** radar measurement noise output dimension ***************************
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Objects.v;

% *********** radar measurement noise output dimension object points *************
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_Measurement_Noise_1.Const_Output_Dimension_Object_Points.v = MDL.Traffic.Sensors.RadarReflectionPoints_1.Const_Output_Dimension_Object_Points.v;

% *********** radar measurement noise output dimension ***************************
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Objects.v;

% *********** radar measurement noise output dimension object points *************
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_Measurement_Noise_2.Const_Output_Dimension_Object_Points.v = MDL.Traffic.Sensors.RadarReflectionPoints_2.Const_Output_Dimension_Object_Points.v;

% *********** radar measurement noise output dimension ***************************
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Objects.Comment = 'Output dimension objects';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Objects.Origin = ' ';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Objects.vName = 'Const_Output_Dimension_Objects';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Objects.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Objects.v = MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Objects.v;

% *********** radar measurement noise output dimension object points *************
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Object_Points.Comment = 'Output dimension object points';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Object_Points.Origin = ' ';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Object_Points.vName = 'Const_Output_Dimension_Objects_Points';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Object_Points.vUnit = '[-]';
MDL.Traffic.Sensors.Radar_Measurement_Noise_3.Const_Output_Dimension_Object_Points.v = MDL.Traffic.Sensors.RadarReflectionPoints_3.Const_Output_Dimension_Object_Points.v;


% ***************************************************************************
% *********** Traffic Light Control Parameters ******************************
% ***************************************************************************
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.Comment      = 'traffic light value 1-red, 2-orange, 3-red/orange, 4-green';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.Origin       = '';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.xName        = 'time';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.xUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.x            = [0 3 3.001 7 7.001 10 10.001 28];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.x            = [0 1 1.001 2 2.001 12 12.001 15 15.001 30];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.vName        = 'Map_TrafficLight3';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.vUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.v            = [3 3 4 4 2 2 1 1];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight1.v            = [1 1 3 3 4 4 2 2 1 1];

MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.Comment      = 'traffic light value 1-red, 2-orange, 3-red/orange, 4-green';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.Origin       = '';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.xName        = 'time';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.xUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.x            = [0 7 7.001 10 10.001 14 14.001 17 17.001 28];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.x            = [0 1 1.001 16 16.001 17 17.001 27 27.001 30];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.vName        = 'Map_TrafficLight2';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.vUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.v            = [1 1 3 3 4 4 2 2 1 1];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight2.v            = [1 1 1 1 3 3 4 4 2 2];

MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.Comment      = 'traffic light value 1-red, 2-orange, 3-red/orange, 4-green';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.Origin       = '';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.xName        = 'time';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.xUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.x            = [0 14 14.001 17 17.001 21 21.001 24 24.001 28];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.x            = [0 1 1.001 2 2.001 12 12.001 15 15.001 30];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.vName        = 'Map_TrafficLight1';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.vUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.v            = [1 1 3 3 4 4 2 2 1 1];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight3.v            = [1 1 3 3 4 4 2 2 1 1];

MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.Comment      = 'traffic light value 1-red, 2-orange, 3-red/orange, 4-green';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.Origin       = '';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.xName        = 'time';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.xUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.x            = [0 3 3.001 21 21.001 24 24.001 28];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.x            = [0 1 1.001 16 16.001 17 17.001 27 27.001 30];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.vName        = 'Map_TrafficLight1';
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.vUnit        = '[-]';
%MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.v            = [2 2 1 1 3 3 4 4];
MDL.Traffic.TrafficLight_Control.Map_TrafficLight4.v            = [1 1 1 1 3 3 4 4 2 2];

MDL.Traffic.Sensors.DetectedObjectsMerge.Const_Output_Dimension.Comment       = 'Output dimension';
MDL.Traffic.Sensors.DetectedObjectsMerge.Const_Output_Dimension.Origin        = '';
MDL.Traffic.Sensors.DetectedObjectsMerge.Const_Output_Dimension.vName         = 'Const_Output_Dimension';
MDL.Traffic.Sensors.DetectedObjectsMerge.Const_Output_Dimension.vUnit         = '[-]';
MDL.Traffic.Sensors.DetectedObjectsMerge.Const_Output_Dimension.v             = 10;

% ***************************************************************************
% *********** OSI GroundTruth Interface Parameters **************************
% ***************************************************************************
MDL.Traffic.GroundTruth.OSIInterface.Const_Max_Num_LB_In_GT_Area  = struct(...
'Comment', 'Maximum number of laneboundaries within GroundTruth Area',...
'Origin', ' ',...
'vName', 'Const_Max_Num_LB_In_GT_Area',...
'vUnit', '[-]',...
'v', 40);

MDL.Traffic.GroundTruth.OSIInterface.Const_Max_Num_Points_Per_LB  = struct(...
'Comment', 'Maximum number of points per laneboundary',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Points_Per_LB',...
'vUnit', '[-]',...
'v', 300);

MDL.Traffic.GroundTruth.OSIInterface.Const_Max_Num_Lanes_In_GT_Area  = struct(...
'Comment', 'Maximum number of lanes within GroundTruth Area',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Lanes_In_GT_Area',...
'vUnit', '[-]',...
'v', 30);

MDL.Traffic.GroundTruth.OSIInterface.Const_Max_Num_Lane_Pairings_Per_Lane  = struct(...
'Comment', 'Maximum number of lane-pairings per lane',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Lane_Pairings_Per_Lane',...
'vUnit', '[-]',...
'v', 50);

MDL.Traffic.GroundTruth.OSIInterface.Const_Max_Num_Free_LB_Per_Lane  = struct(...
'Comment', 'Maximum number of free laneboundaries per lane',...
'Origin', ' ',...
'vName', 'Const_Max_Num_Free_LB_Per_Lane',...
'vUnit', '[-]',...
'v', 20);

MDL.Traffic.GroundTruth.OSIInterface.Const_Max_Num_PolyPts_Per_Object  = struct(...
'Comment', 'Maximum number of polygon points per object',...
'Origin', ' ',...
'vName', 'Const_Max_Num_PolyPts_Per_Object',...
'vUnit', '[-]',...
'v', 55);


assignin('base','MDL',MDL);

