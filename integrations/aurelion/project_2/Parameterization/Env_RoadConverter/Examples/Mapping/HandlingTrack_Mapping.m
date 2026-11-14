function [roaddata, settings] = HandlingTrack_Mapping (inputfile, enable_plots, fignameprefix) %#ok<FNDEF,INUSD>

settings.method = 'xy';
% load input file ===========================================
[pathstr, name, ext] = fileparts(inputfile); 
fprintf('\n  Conversion of : %s%s', name,ext)
fprintf('\n  read inputfile')
if(strcmp(ext,'.mat'))
  load (inputfile);
elseif(strcmp(ext,'.m'))  
  run(inputfile);
else  
  fprintf('\nError: format not defined!')
end

% mapping of original data -------------------------------
orig.x      = RoadInfo.signals(1).values;     % x [m]
orig.y      = RoadInfo.signals(2).values;     % y [m]
orig.height = RoadInfo.signals(3).values;     % z [m]     
orig.q      = RoadInfo.signals(6).values;     % LatSlope [rad]

% view and analyze original data -------------------------
if(enable_plots)
  fprintf('\n  nr data points : %d', size(orig.x,1))
end

% unit conversions ---------------------------------------
orig.q = orig.q*180/pi;

% mapping to roaddata matrix -----------------------------
roaddata      = zeros(size(orig.x,1),4); % initialize matrix
roaddata(:,1) = orig.x;                  % x coordinate [m]
roaddata(:,2) = orig.y;                  % y coordinate [m]
roaddata(:,3) = orig.height;             % z coordinate [m]
roaddata(:,4) = orig.q;                  % lateral slope angle [deg] 

% data reduction -----------------------------------------
% original measurement data contains more than one lap
% data of only one lap should be used
roaddata = roaddata(1:3045,:);

return
