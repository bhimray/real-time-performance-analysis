% Run in the base workspace before using ASM_Traffic.
root = 'C:\Users\bxr240009\Downloads\bim\real-time-performance-analysis';

variantFolder = fullfile(root, 'integrations', 'aurelion', ...
    'project_2', 'Simulation', ...
    '_MidSizeCarBrkHydBasicTraffic', 'IniFiles');

assert(isfile(fullfile(variantFolder, 'VariantIni.m')), ...
    'Missing ASM initializer: %s', variantFolder);

previousFolder = pwd;
try
    cd(variantFolder);
    VariantIni;
    cd(previousFolder);
catch ME
    cd(previousFolder);
    rethrow(ME);
end

assert(isfield(MDL, 'VehicleDynamics') && isfield(MDL, 'SoftECU'), ...
    'ASM initialization is incomplete.');

disp('ASM parameters initialized.');