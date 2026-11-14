function [OutMdlStruct] = Proc_Map_i_Ratio(~, MainComp, SubComp, ParaName, InstID, varargin)

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
if asm_proc('check_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT','CheckType',[0 0])
    % Drivetrain.GEARBOX_AT
    OutMdlStruct = asm_proc('get_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT','ParaName','Map_GearRatio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
elseif asm_proc('check_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT_RIGID','CheckType',[0 0])
    % Drivetrain.GEARBOX_AT_RIGID
    OutMdlStruct = asm_proc('get_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT_RIGID','ParaName','Map_GearRatio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
elseif asm_proc('check_parameter','MainComp','DrivetrainBasic','SubComp','GEARBOX_AT','CheckType',[0 0])
    % DrivetrainBasic.GEARBOX_AT
    OutMdlStruct = asm_proc('get_parameter','MainComp','DrivetrainBasic','SubComp','GEARBOX_AT','ParaName','Map_i_Ratio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
elseif asm_proc('check_parameter','MainComp','DrivetrainBasic','SubComp','DCT_GEARBOX_TOPOLOGY','CheckType',[0 0])
    % DrivetrainBasic.DCT_GEARBOX_TOPOLOGY
    OutMdlStruct = asm_proc('get_parameter','MainComp','DrivetrainBasic','SubComp','DCT_GEARBOX_TOPOLOGY','ParaName','Map_i_Gear','InstID', InstID, 'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID],'Default',struct('v',[]));
    % Dimension mismatch 21x1 => 25x1
else
    OutMdlStruct.SkipReason = 'Subcomponent AUTOMATIC GEARBOX is not available';
    return
end

%% Plotting 
asm_plot_table(OutMdlStruct,0,asm_proc('get_PlotConfig','Property','FinalResult'),0);

return