function [roaddata, settings] = ADASRP_Mapping(inputfile, enable_plots, fignameprefix) %#ok<INUSL>

settings.method           = 'GPS';
initial_height            = 142.22;

% load input file ===========================================
[pathstr, name, ext] = fileparts(inputfile); %#ok<NASGU>
fprintf('\n  Conversion of : %s%s', name,ext)
fprintf('\n  read inputfile')
if(strcmp(ext,'.mat'))
  load (inputfile);
  %if (enable_plots), NAVTEQ_plot_data; end
elseif(strcmp(ext,'.m'))  
  run(inputfile);
elseif(strcmp(ext,'.txt'))
  disp('  - parse adasrp files')
  asm_env_adasrp_parser('parse','infofilename',[name,ext],'exportdir_abs',[pathstr,'\']);
  disp('   .. parsing finished')
  load([pathstr,'\Export_adasrp.mat'])
else  
  fprintf('\nError: format not defined!')
end 

%% Recalculate altitude based on slope information ========================
% Often height information is not available throughout the whole route.
% To overcome this limitation, the altitude is approximated based on the
% recorded slope and a given initial height. 

[altitude_mat, slope_mat] ...
     = asm_env_adasrp_functions('get_height',...
                            'data',data,...
                            'initial_height',initial_height,... % [m]
                            'link_selection', 'all');     % [idx, [idx_start,idx_end],'all']                     

% ==================== Visualize approximated altitude ====================
if (enable_plots)
    figure('name','Altitude calculation based on slope',...
        'tag','roadconverterfigure',...
        'defaulttextinterpreter','none');
    
    subplot(2,1,1);
    plot(slope_mat(:,6)/100000,slope_mat(:,3),'-bo','markersize', 3, 'linewidth', 2); title('Slope'); ylabel('Slope [0.01%]'); xlabel('Distance [km]'); grid on; hold on;
    
    subplot(2,1,2);
    plot(altitude_mat(:,6)/100000, altitude_mat(:,3)/100, 'bo', 'markersize', 6, 'linewidth', 3); title('Altitude'); ylabel('Distance [km]'); grid on; hold on;
    plot(altitude_mat(:,6)/100000, altitude_mat(:,4)/100, 'r*'); ylabel('Altitude [m]'); grid on; hold on;
    plot(altitude_mat(:,6)/100000, altitude_mat(:,5)/100, 'go','markersize',6,'linewidth',3);ylabel('Altitude [m]'); xlabel('Distance [km]'); grid on;
    legend('Original altitude', 'Calculated altitude - I', 'Calculated altitude - II');
end

% ======================== add data to struct =============================
% Longitude, Latitude and Altitude added to 'asmroadinfo' struct
% altitude_mat = [Longitude, Latitude, Altitude original, Altitude - I,...
% Altitude - II, cumulative route length] in cm

data.asmroadinfo.table_with_altitude_info   = 'data.asmroadinfo.table_with_altitude = [Longitude, Latitude, Altitude - I, Altitude - II]'; 
data.asmroadinfo.table_with_altitude(:,1:4) = [altitude_mat(1:end,2), altitude_mat(1:end,1), altitude_mat(1:end,4:5)/100];  %  height in [m]


%% end:   recalculation of altitude =======================================

% mapping of original data -------------------------------
roadorig    = data.asmroadinfo.table_with_altitude;
orig.long   = roadorig(:,1);        % longitude [deg]
orig.lat    = roadorig(:,2);        % latitude [deg]
orig.height_v1 = roadorig(:,3);        % height [m] - Version-I      
orig.height_v2 = roadorig(:,4);        % height [m] - Version-II     

% view and analyze original data -------------------------
if(0)
  figure('name',[fignameprefix,': Original GPS input data'],'tag','roadconverterfigure')
  plot(orig.long,orig.lat), hold on, grid on,xlabel('Longitude [deg]'),ylabel('Latitude [deg]'),axis equal
  
  fprintf('\n  nr data points : %d', size(orig.long,1))
end

% unit conversions ---------------------------------------
%  put your unit conversion calculations here

% mapping to roaddata matrix -----------------------------
roaddata = zeros(size(orig.long,1),4); % initialize matrix
roaddata(:,1) = orig.lat;              % latitude     [deg]
roaddata(:,2) = orig.long;             % longitude    [deg]
roaddata(:,3) = orig.height_v1;           % z coordinate [m]
% roaddata(:,4) - lateral slope angle [deg] (optional, may be zero) 

return
