function fingerprint = run_fingerprint(bundle, plantStep, warmupSolves)
%RUN_FINGERPRINT Record A9 environment identity outside the controller loop.
%
%   Raw solver times are retained, but this function does not change power
%   plans or CPU affinity and does not certify a timing benchmark.

fingerprint.created_utc = char( ...
    datetime('now', 'TimeZone', 'UTC', 'Format', 'yyyy-MM-dd HH:mm:ss Z'));

fingerprint.machine_name = getenv('COMPUTERNAME');
fingerprint.operating_system = computer;
fingerprint.matlab = version;
fingerprint.toolchain = bundle.environment;

fingerprint.build_id = bundle.build_id;
fingerprint.build_directory = bundle.build_dir;
fingerprint.controller_fingerprint = bundle.fingerprint;

fingerprint.controller_period_s = bundle.config.Ts;
fingerprint.plant_step_s = plantStep;
fingerprint.plant_integrator = 'Fixed-step RK4';
fingerprint.controller_integrator = 'One RK4 step per shooting interval';
fingerprint.warmup_solves_discarded = warmupSolves;
fingerprint.timing_policy_verified = false;
fingerprint.timing_scope = [ ...
    'Raw MATLAB/solver diagnostics. No ECU timing claim. ' ...
    'Power/affinity hygiene is recorded, not changed or certified.' ...
];

%% Read current machine and affinity settings without changing them

probeCommand = sprintf([ ...
    'powershell.exe -NoProfile -Command "' ...
    '$ErrorActionPreference=[System.Management.Automation.ActionPreference]::Stop;' ...
    '$cpu=Get-CimInstance Win32_Processor;' ...
    '$os=Get-CimInstance Win32_OperatingSystem;' ...
    '$machine=Get-CimInstance Win32_ComputerSystem;' ...
    '$process=Get-Process -Id %d;' ...
    '[ordered]@{' ...
    'cpu=@($cpu|Select-Object Name,MaxClockSpeed,NumberOfCores,NumberOfLogicalProcessors);' ...
    'ram_bytes=$machine.TotalPhysicalMemory;' ...
    'os_caption=$os.Caption;os_version=$os.Version;' ...
    'affinity_mask=$process.ProcessorAffinity.ToInt64().ToString();' ...
    'power_plan=((& powercfg /getactivescheme)-join [Environment]::NewLine)' ...
    '}|ConvertTo-Json -Depth 5 -Compress"' ...
], feature('getpid'));

[status, output] = system(probeCommand);

if status == 0
    try
        fingerprint.hardware = jsondecode(output);
    catch errorInfo
        fingerprint.hardware_probe_error = errorInfo.message;
    end
else
    fingerprint.hardware_probe_error = strtrim(output);
end

%% Record installed numerical-library identifiers where available

acadosRoot = bundle.environment.acados_root;
cacheFile = fullfile(acadosRoot, 'build', 'CMakeCache.txt');

fingerprint.blasfeo_target = 'Not verified';

if isfile(cacheFile)
    token = regexp(fileread(cacheFile), ...
        'BLASFEO_TARGET:STRING=([^\r\n]+)', 'tokens', 'once');

    if ~isempty(token)
        fingerprint.blasfeo_target = token{1};
        fingerprint.blasfeo_target_source = 'Installed acados CMake cache';
    end
end

[status, output] = system(sprintf( ...
    'git -C "%s" rev-parse HEAD', fullfile(acadosRoot, 'external', 'hpipm')));

if status == 0
    fingerprint.hpipm_commit = strtrim(output);
else
    fingerprint.hpipm_commit = 'Not verified';
end

fingerprint.external_function_optimization_flags = '-O2';
fingerprint.mex_flags = ...
    'Selected MATLAB compiler defaults; see native build logs';

end
