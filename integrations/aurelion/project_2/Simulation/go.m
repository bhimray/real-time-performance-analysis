function go(varargin)

% GO starts ASM project. 
% 
%       go (varargin)
%
%       Arguments:
%
%           parameter:  'simmode'
%
%           value:      'PC'  - for off-line simulation on PC under SIMULINK
%                       'HIL' - for real-time simulation on Real-Time HW
%                               with ECU connected
%                       'CPT' - for real-time simulation on Real-Time HW
%                               without ECU connected
%
%           The first argument defines the simulation mode in which
%           ASM should be used. Calling GO without 'simmode' initializes
%           the default simulation mode.
%
%           ---------------------------------------------------------------
%
%           parameter:   <VARIANTLIST> - Name of variant definition list e.g. 'engine'
%
%           value: <VARIANTNAME> - Name of variant e.g. 'EngineVariant2'
%
%           The second argument defines the initialisation variant which
%           should be loaded to the MATLAB workspace. You can easily add
%           further variants by attaching other variant structures e.g.
%
%           godata.variants.engine =    { ...
%                                        'EngineVariant1',...  <== Default engine variant
%                                        'EngineVariant2',...
%                                       };
%
%           godata.variants.drivetrain = { ...
%                                        'DrivetrainVariant1',...  <== Default drivetrain variant
%                                        'DrivetrainVariant2',...,
%                                        'DrivetrainVariant3',...
%                                        };
%
%           ... append own variants in the same way.
%
%           Calling GO without variant arguments initializes the default
%           variants. They are always on the first position of each
%           variant definition list.
%
%           ---------------------------------------------------------------
%
%           parameter: platform
%
%           value: 'RTI'        - DS1202 Hardware
%                  'SCALEXIO'   - SCALEXIO, MLBX II Hardware
%                  'VEOS'       - VEOS Simulation Platform on Windows PC
%                  'VEOS_LNX'   - VEOS Simulation Platform on Linux
%                  'NONE'       - Keep platform unchanged
%
%           Platform controls the SystemTargetFile 
%           Calling GO without platform arguments initializes the default
%           platform. This is always on the first position of platform definition list.
%
%           ---------------------------------------------------------------
%
%       Examples:
%
%         - Start of default variant with  
%           default simulation mode 
%
%	        go 
% 
%         - Start of default variant 
%           with simulation mode 'PC'
%
%           go PC
%           go ('simmode','PC') 
%
%         - Start of user defined variant with
%           simulation mode 'PC'
%
%           go ('simmode','PC','VehicleDynamics','MidSizeCarBrkHydBasic') 
%
%
% See also: 
%
%

% REMARKS
%
%
% AUTHOR(S): dSPACE
%
%
% Copyright 2005 - 2025 by dSPACE GmbH, GERMANY

% =========================================================================
% =====                DEFINE SETTINGS AND DEFAULTS                   =====
% =========================================================================

DefSimMode  =  'PC';           % <== Default simulation mode

DefPlatform = {'VEOS',...  % <== Default platform (always first)
               'VEOS_LNX',...
               'SCALEXIO',...
               'RTI',...
               'NONE'};
           
SimulationModel = 'ASM_Traffic';

% Define the default communication method which is set in the
% connection settings block inside the AnimationInterface. 
% DefCommunicationMethod:
%   Value:  'Communication_Service'
%           Supported Platforms: Please refer to the help of the 
%                                "dsmsi_communication_service_BL1" block.
%            
%   Value: 'Ethernet_TCP'
%           Supported Platforms: Simulink, VEOS, SCALEXIO
% 
%   Value: '' <== The communication method isn't changed by the go script. 

DefCommunicationMethod = 'Communication_Service';

% =========================================================================
% =====                   INSERT YOUR VARIANTS HERE                   =====
% =========================================================================

godata.variants.VehicleDynamics = { ...
    'MidSizeCarBrkHydBasicTraffic',...   % <== Default variant (always first variant)
    'MidSizeCarBrkHydTraffic',... 
    };

% Apply defaults
CurPlatform         = DefPlatform{1};

try
    home;
    %% check ASM Installation
    i_checkasminstallation

    %% Handle vargin calling
    if(nargin==0)
        varargin{1} = 'simmode';
        varargin{2} = DefSimMode;
    elseif(nargin==1)
        varargin{2} = varargin{1};
        varargin{1} = 'simmode';
    elseif(any(strcmpi(varargin{1},{'hil','cpt','pc'})))
        for k=nargin:-1:1
            varargin{k+1} = varargin{k};
        end
        varargin{1} = 'simmode';
    else
        if ~strcmpi(varargin{1},'simmode')
            for k=nargin:-1:1
                varargin{k+2} = varargin{k};
            end
            varargin{1} = 'simmode';
            varargin{2} = DefSimMode;
        end
    end
    varargin{2} = upper(varargin{2});

    
    %% Check for and get platform and remove from varargin
    indx = find(strcmpi(varargin(1:2:end),'platform'))*2;
    if ~isempty(indx)
        CurPlatform = varargin{indx};
    end
    
    godata.excludepath = {};
    % The following parameter are not an initialization variant and have to be ignored
    godata.excludeparameter = {'simmode','platform'};
    % Add Simulation Model to godata
    godata.CurrentSystem = {SimulationModel};
    %% Start Initialization
    fprintf(['Simulation Mode: ', varargin{2}, '\n\n']);
    
    if ~SimulationInit(godata,varargin{:})
        error('asm:SimulationInit','Model initialization failed.\nRefer to messages above for details.')
    end
    
    try
        hModel = load_system(SimulationModel);
        open_system(hModel);
    catch asm_error
        fprintf('\n### ERROR opening model: %s.\n',SimulationModel)
        rethrow(asm_error)
    end

    % Configure connection settings inside AnimationInterface
    asm_set_animation_interface(SimulationModel, CurPlatform, DefCommunicationMethod)

    % Set the simulation platform
    ModelVariant = 'VehicleDynamics';
    asm_set_platform(SimulationModel,CurPlatform,ModelVariant);
    
    fprintf('\n*** GO successfully executed.\n')
catch asm_error
    asm_migrate_common('showerror','Exception',asm_error)
    fprintf('\n*** GO failed.\n')
end
return

% =====================================================================================================================
function i_checkasminstallation()
if ~exist('asmver','file')
    error('asm:asmnotinstalled','dSPACE Automotive Simulation Models (ASM) Software is not installed for this MATLAB version.\n')
end
return % end of i_checkasminstallation
