function MainIni(varargin)

% MAININI
%
%
%
% AUTHOR(S): U. Homann
%
% VERSION  : 1.0
%
% MODIFICATION(S):
% -------------
%
%    NAME:     |   DATE:      |                 REMARKS:
%-------------------------------------------------------------
%              |              |    
%              |              |    
%              |              |    

c = 1;
MainIniFiles{c} = 'io_ini.m';
c = c+1;
MainIniFiles{c} = 'cpt_io_ini.m';
c = c+1;
MainIniFiles{c} = 'cpt_mdl_ini.m';
c = c+1;
MainIniFiles{c} = 'sim_ini.m'; 
c = c+1;
MainIniFiles{c} = 'asm_road_maneuver_ini.m';
c = c+1;
MainIniFiles{c} = 'asm_traffic_ini.m';

% .... continue this array as wanted - use relative paths to the current folder of this M file

% ===================================================================================================================
% DO NOT CHANGE HERE: -------------------------------------------------------------------------------------------------
% ===================================================================================================================

ExecuteIniFiles(fileparts(which(mfilename)), MainIniFiles, varargin{:});

return

