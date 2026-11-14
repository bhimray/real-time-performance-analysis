function VariantIni(varargin)

c = 0;

c = c + 1;
VariantIniFiles{c} = 'drivetrain\asm_drivetrain_ini';
c = c + 1;
VariantIniFiles{c} = 'enginebasic\asm_enginebasic_ini';
c = c + 1;
VariantIniFiles{c} = 'environment\asm_environment_ini';
c = c + 1;
VariantIniFiles{c} = 'softecu\asm_softecu_ini';
c = c + 1;
VariantIniFiles{c} = 'vehicledynamics\asm_vehicledynamics_ini';



% .... continue this array as wanted - use relative paths to the current folder of this M file


c = c+1;
% ===== CHANGES INITIALIZATION =====
if exist(fullfile(fileparts(mfilename('fullpath')),'changes.m'),'file')
    VariantIniFiles{c} = 'changes';
end

% ===================================================================================================================
% DO NOT CHANGE HERE: -------------------------------------------------------------------------------------------------
% ===================================================================================================================

ExecuteIniFiles(fileparts(which(mfilename)),  strcat(VariantIniFiles','.m')', varargin{:});

return

