function [OutMdlStruct] = Map_omega_DownShift (Settings, MainComp, SubComp, ParaName, InstID, varargin)

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

%% Settings
MainCompInst.v      = Settings.MainCompInst(1).v;
Vector_Pos_AccPedal = Settings.(MainCompInst(1).v).Vector_Pos_AccPedal; 

%% Parameters
n_down_acc    = asm_proc('get_parameter','MainComp',MainComp,'SubComp',SubComp,'ParaName','Proc_n_down_acc','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID]);
n_down_no_acc = asm_proc('get_parameter','MainComp',MainComp,'SubComp',SubComp,'ParaName','Proc_n_down_no_acc','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID]);
Map_i_Ratio   = asm_proc('get_parameter','MainComp',MainComp,'SubComp',SubComp,'ParaName','Proc_Map_i_Ratio','InstID',InstID,'readfrom',[MainComp,'.', SubComp,'.', ParaName,'.', InstID]);

if ~any([asm_proc('check_parameter','MainComp','DrivetrainBasic','SubComp','GEARBOX_AT','CheckType',[0 0]),...
         asm_proc('check_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT','CheckType',[0 0]),...
         asm_proc('check_parameter','MainComp','Drivetrain','SubComp','GEARBOX_AT_RIGID','CheckType',[0 0])])
    OutMdlStruct.SkipReason = 'Subcomponent AUTOMATIC GEARBOX is not available';
    return
end

%% Parameter attributes
OutMdlStruct = asm_proc('get_parameter','MainComp',MainComp,'SubComp',SubComp,'ParaName',ParaName,'InstID',InstID,'FieldName','Infofields');

%% Processing 
% find neutral gear and consider only forward gears
IDx = find(Map_i_Ratio.v==0);
OutMdlStruct.y = Map_i_Ratio.x(IDx+1:end);
i_Ratio.v = Map_i_Ratio.v(IDx+1:end);

% Apply x axis
OutMdlStruct.x     = Vector_Pos_AccPedal.v;
OutMdlStruct.xName = Vector_Pos_AccPedal.vName;
OutMdlStruct.xUnit = Vector_Pos_AccPedal.vUnit;

% Calculation of shift parameters
EngineShiftSpeed = interp1([0,100],[n_down_no_acc.v,n_down_acc.v] ,OutMdlStruct.x) ;

% Calculation of shift table

NumGears = size(OutMdlStruct.y ,1);
for kk = 1:1:NumGears   
    for kkk = 1:1:size(OutMdlStruct.x,1)         
        if OutMdlStruct.y(kk)
            OutMdlStruct.v(kkk,kk) = EngineShiftSpeed(kkk)/i_Ratio.v(kk);
        end % if
    end % for
end % for

%% Plotting 
asm_plot_table(OutMdlStruct,0,asm_proc('get_PlotConfig','Property','FinalResult'),0);

return