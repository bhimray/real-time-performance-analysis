% Plot only the driving interval from the VEOS recording.
projectRoot = fileparts(fileparts(fileparts(mfilename('fullpath'))));
addpath(fullfile(projectRoot, 'scripts'), ...
        fullfile(projectRoot, 'src'), ...
        fullfile(projectRoot, 'config'));

recordingFolder = fullfile(projectRoot, 'results', 'SCALEXIO'); % 'VEOS', 'SCALEXIO'
sourceFile = fullfile(recordingFolder, 'rec1_008.mat');
convertedFile = fullfile(recordingFolder, 'rec1_008_readable.mat');
croppedFile = fullfile(recordingFolder, 'rec1_024_cropped.mat');

if ~isfile(convertedFile)
    convert_veos_recording(sourceFile, convertedFile);
end

data = load(convertedFile, 'signals', 'channelDictionary');
channelDictionary = data.channelDictionary;

% Times are on the original ControlDesk recording clock.
start_s = 1.45;
maneuver_dur = 12.0;
assert(maneuver_dur > 0, 'Maneuver duration must be positive.');
stop_s = start_s + maneuver_dur;
tolerance_s = 1e-9;

recordingTime_s = seconds(data.signals.Properties.RowTimes);
keep = recordingTime_s >= start_s - tolerance_s & ...
       recordingTime_s <  stop_s  - tolerance_s;

signals = data.signals(keep, :);
assert(height(signals) >= 2, 'The selected interval contains too few samples.');

% Set the first retained sample to t = 0 before rebuilding the horizon.
signals.Properties.RowTimes = ...
    signals.Properties.RowTimes - signals.Properties.RowTimes(1);

horizon = ecu.veos_analysis.align_recorded_horizon(signals, channelDictionary);

save(croppedFile, 'signals', 'channelDictionary', 'horizon', '-v7.3');

ecu.veos_analysis.plot_veos_run(croppedFile);
ecu.veos_analysis.plot_collision_avoidance_paper(croppedFile);