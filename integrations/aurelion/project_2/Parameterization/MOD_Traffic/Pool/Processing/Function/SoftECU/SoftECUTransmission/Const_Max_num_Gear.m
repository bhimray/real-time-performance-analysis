function [OutMdlStruct] = Const_Max_num_Gear(~, MainComp, SubComp, ParaName, InstID, varargin)

%
%
% INPUT:
%   Settings, MainComp, SubComp, ParaName, ID, varargin  
%

% FUNCTION:
%   calculates the table for transmission output shaft speed for a gear downshift     
%
% Copyright (c) 2018 by dSPACE GmbH, GERMANY

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% INSERT YOUR CODE HERE
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%  

%% Parameters
if asm_proc('check_parameter','MainComp','DrivetrainBasic','CheckType',0)
    Map_i_Ratio = asm_proc('get_parameter','MainComp','DrivetrainBasic','SubComp','GEARBOX_AT','ParaName','Map_i_Ratio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
elseif asm_proc('check_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT','CheckType',[0 0])
    Map_i_Ratio = asm_proc('get_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT','ParaName','Map_GearRatio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
elseif asm_proc('check_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT_RIGID','CheckType',[0 0])
    Map_i_Ratio = asm_proc('get_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT_RIGID','ParaName','Map_GearRatio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
else
    Map_i_Ratio = struct('v',[]);
end

%% Parameter attributes
OutMdlStruct = asm_proc('get_parameter','MainComp',MainComp,'SubComp',SubComp,'ParaName',ParaName,'InstID',InstID,'FieldName','Infofields');

%% Processing 
if isempty(Map_i_Ratio.v)
    OutMdlStruct.SkipReason = 'Subcomponent GEARBOX_AT is not available';
    return
end

% Find maximum gear
OutMdlStruct.v = max(Map_i_Ratio.x(diff(Map_i_Ratio.x)==1))+1;

return