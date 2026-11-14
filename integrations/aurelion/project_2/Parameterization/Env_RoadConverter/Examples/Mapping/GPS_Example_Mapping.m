function [roaddata, settings] = GPS_Example_Mapping (inputfile, enable_plots, fignameprefix) %#ok<INUSL,FNDEF>

settings.method = 'GPS';
% load input file ===========================================
[pathstr, name, ext] = fileparts(inputfile); 
fprintf('\n  Conversion of : %s%s', name,ext)
fprintf('\n  read inputfile')
if(strcmp(ext,'.mat'))
  load (inputfile);
elseif(strcmp(ext,'.m'))  
  run(inputfile);
elseif(strcmp(ext,'.txt'))  
  tempData=importdata(inputfile);
  road.Longitude=tempData(:,3);
  road.Latitude=tempData(:,2);
  road.Height=tempData(:,4);
else  
  fprintf('\nError: format not defined!')
end

% mapping of original data -------------------------------
orig.long   = road.Longitude;     % longitude [deg]
orig.lat    = road.Latitude;      % latitude  [deg]
orig.height = road.Height;        % z [m]
%orig.q      = road.LatSlope';      % lateral slope angle [deg] (not available here) 

% ensure column vectors
if(isrow(orig.long)),   orig.long   = orig.long';  end
if(isrow(orig.lat)),    orig.lat    = orig.lat';   end
if(isrow(orig.height)), orig.height = orig.height';end
%if(isrow(orig.q)),      orig.q      = orig.q';     end

% view and analyze original data -------------------------
if(0)
  figure('name',[fignameprefix,': Original GPS input data'],'tag','roadconverterfigure')
  plot(orig.long,orig.lat), hold on, grid on,xlabel('Longitude [deg]'),ylabel('Latitude [deg]')

  fprintf('\n  nr data points : %d', size(orig.long,1))
end

% unit conversions ---------------------------------------
%  put your unit conversion calculations here

% begin: height export for ModelDesk --------------------
if(0)
    % this is just an example how to create matfiles for hight import in
    % ModelDesk
    ds_default   = 2;  % default value for transition length
    
    lat         = orig.lat;
    long        = orig.long;
    height_v    = orig.height;
    
    % calculate s
    % conversion from [longitude,latitude] to [x,y]
    Earthradius = 6370e3; %[m] ~ medium radius
    x_corr      = cos(lat(1)/180*pi);
    x           = (long - long(1))*pi/180 * Earthradius * x_corr; % approximation
    y           = (lat  - lat(1)) *pi/180 * Earthradius ; % approximation
    s           = cumsum([0; sqrt(diff(x).^2+diff(y).^2)]);
    
    % calculate ds for smooth heigth interpolation
    ds   = ds_default * ones(size(s)); %defaultvalues
    
    % ds must be smaller than half of distance between two points
    ds_calc = diff(s)/2;
    ds      = min(ds, [0; ds_calc]);
    ds      = min(ds, [ds_calc; 0]);
    
    % create height struct for ModelDesk import and save to file
    height.s    = s';
    height.v    = height_v';
    height.ds      = ds';
    height.type    = 1;
    height.Version = 1;
    
    save height_forModelDesk height
end
% end:   height export for ModelDesk --------------------
% mapping to roaddata matrix -----------------------------
roaddata = zeros(size(orig.long,1),4); % initialize matrix
roaddata(:,1) = orig.lat;              % latitude     [deg]
roaddata(:,2) = orig.long;             % longitude    [deg]
roaddata(:,3) = orig.height;           % z coordinate [m]
%  roaddata(:,4) - lateral slope angle [deg] (optional, may be zero) 

return
