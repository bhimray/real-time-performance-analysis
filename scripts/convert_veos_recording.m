function [signals, channelDictionary, recordMetadata, horizon] = ...
    convert_veos_recording(inputFile, outputFile)
%CONVERT_VEOS_RECORDING Convert a ControlDesk X/Y MAT export for plotting.
% Known ASM channels get group prefixes. Other numeric channels are kept
% under an other_ prefix and can be identified in channelDictionary.
% Output defaults to <recording>_readable.mat in the current folder.

arguments
    inputFile (1,1) string
    outputFile (1,1) string = ""
end

assert(isfile(inputFile), 'Recording file not found: %s', inputFile);
if outputFile == ""
    [~, inputName] = fileparts(inputFile);
    outputFile = fullfile(pwd, inputName + "_readable.mat");
end
assert(~isfile(outputFile) && ~isfolder(outputFile), ...
    'Choose a new output file. This converter will not overwrite %s.', outputFile);
[~, ~, extension] = fileparts(outputFile);
assert(strcmpi(extension, '.mat'), 'Output filename must end in .mat.');

% Locate the recording by structure, independent of its saved variable name.
loaded = load(inputFile);
variableNames = fieldnames(loaded);
isRecording = structfun(@(value) isstruct(value) && isscalar(value) && ...
    all(isfield(value, {'X', 'Y', 'Info', 'Description'})), loaded);
assert(nnz(isRecording) == 1, ...
    'Expected exactly one ControlDesk recording structure with X and Y data.');
recordingName = variableNames{isRecording};
recording = loaded.(recordingName);
assert(~isempty(recording.X) && ~isempty(recording.Y), ...
    'The recording needs at least one time base and one channel.');

%% Validate the source clocks and combine them without interpolation

timeBases = recording.X(:);
channels = recording.Y(:);
timeSeconds = cell(numel(timeBases), 1);
for k = 1:numel(timeBases)
    time = timeBases(k).Data;
    assert(isnumeric(time) && isreal(time) && isvector(time) && ...
        all(isfinite(time(:))), 'Time base X(%d) must be a finite numeric vector.', k);
    unit = lower(strtrim(string(timeBases(k).Unit)));
    assert(ismember(unit, ["", "s", "sec", "second", "seconds"]), ...
        'Time base X(%d) uses %s. This converter expects seconds.', k, unit);
    timeSeconds{k} = double(time(:));
    assert(all(diff(timeSeconds{k}) > 0), ...
        'Time base X(%d) must have strictly increasing timestamps.', k);
end

channelCount = numel(channels);
clockIndex = reshape([channels.XIndex], [], 1);
assert(numel(clockIndex) == channelCount && all(isfinite(clockIndex)) && ...
    all(clockIndex == fix(clockIndex) & clockIndex >= 1 & clockIndex <= numel(timeBases)), ...
    'Each channel must refer to a valid time base through XIndex.');

usedClocks = unique(clockIndex, 'stable');
firstClock = timeSeconds{usedClocks(1)};
identicalClocks = all(cellfun(@(time) isequal(time, firstClock), ...
    timeSeconds(usedClocks)));
if identicalClocks
    combinedTime = firstClock;
else
    combinedTime = unique(vertcat(timeSeconds{usedClocks}));
end
rowTimes = seconds(combinedTime);
assert(all(diff(rowTimes) > seconds(0)), ...
    'MATLAB duration cannot represent these timestamps as distinct row times.');
clockRows = cell(size(timeSeconds));
for k = reshape(usedClocks, 1, [])
    [found, clockRows{k}] = ismember(timeSeconds{k}, combinedTime);
    assert(all(found), 'A source timestamp is missing for X(%d).', k);
end

%% Name and copy each channel

readableNames = strings(channelCount, 1);
groups = strings(channelCount, 1);
units = strings(channelCount, 1);
originalNames = strings(channelCount, 1);
originalPaths = strings(channelCount, 1);
columns = cell(1, channelCount);
for k = 1:channelCount
    channel = channels(k);
    originalNames(k) = string(channel.Name);
    originalPaths(k) = string(channel.Path);
    [readableNames(k), groups(k), units(k)] = ...
        describe_channel(originalNames(k), originalPaths(k));

    values = channel.Data(:);
    sourceTime = timeSeconds{clockIndex(k)};
    assert((isnumeric(values) || islogical(values)) && ...
        isvector(channel.Data) && numel(values) == numel(sourceTime), ...
        'Y(%d), %s, must contain one numeric or logical value per timestamp.', ...
        k, originalNames(k));

    if identicalClocks
        columns{k} = values;
    else
        % The time union preserves recorded samples. Gaps are represented by NaN.
        rows = clockRows{clockIndex(k)};
        column = NaN(size(combinedTime));
        column(rows) = values;
        assert(isequaln(cast(column(rows), 'like', values), values), ...
            'Y(%d) would lose numeric precision when aligned.', k);
        columns{k} = column;
    end
end

validNames = matlab.lang.makeValidName(cellstr(readableNames));
readableNames = string(matlab.lang.makeUniqueStrings(validNames, {'Time'}));
signals = timetable(rowTimes, columns{:}, 'VariableNames', cellstr(readableNames));
signals.Properties.DimensionNames{1} = 'Time';
recordedUnits = reshape(string({channels.Unit}), [], 1);
displayUnits = recordedUnits;
displayUnits(displayUnits == "") = units(displayUnits == "");
signals.Properties.VariableUnits = cellstr(displayUnits.');
signals.Properties.VariableDescriptions = cellstr(originalPaths.');

channelDictionary = table((1:channelCount).', groups, readableNames, ...
    originalNames, originalPaths, recordedUnits, units, clockIndex, ...
    reshape(string({channels.Raster}), [], 1), ...
    reshape(string({channels.Device}), [], 1), ...
    reshape([channels.DownSampling], [], 1), ...
    reshape(string({channels.Description}), [], 1), ...
    'VariableNames', {'YIndex', 'Group', 'SignalName', 'OriginalName', ...
    'OriginalPath', 'RecordedUnit', 'InterpretedUnit', 'XIndex', ...
    'Raster', 'Device', 'DownSampling', 'Description'});

% Preserve all original metadata, including fields that the dictionary omits.
recordMetadata = recording;
recordMetadata.Y = rmfield(recording.Y, 'Data');
recordMetadata.SourceFile = inputFile;
recordMetadata.SourceVariable = recordingName;
recordMetadata.UsedTimeBaseIndices = usedClocks;
recordMetadata.IdenticalUsedTimeBases = identicalClocks;
recordMetadata.TimeBaseSampleCounts = cellfun(@numel, timeSeconds);
recordMetadata.TimeBaseMedianStep_s = cellfun(@(time) median(diff(time)), timeSeconds);

%% Verify all recorded samples against the timetable before saving

for k = 1:channelCount
    sourceTime = timeSeconds{clockIndex(k)};
    values = channels(k).Data(:);
    rows = clockRows{clockIndex(k)};
    restored = signals.(readableNames(k));
    assert(isequal(signals.Properties.RowTimes(rows), seconds(sourceTime)), ...
        'Timestamp verification failed for Y(%d), %s.', k, readableNames(k));
    assert(isequaln(cast(restored(rows), 'like', values), values), ...
        'Sample verification failed for Y(%d), %s.', k, readableNames(k));
end

% Decode solver snapshots when the full prediction signals were recorded.
horizon = struct([]);
if any(originalNames == "P[18][40]") && any(originalNames == "x_pred[4][40]")
    horizon = ecu.veos_analysis.align_recorded_horizon(signals, channelDictionary);
end
save(outputFile, 'signals', 'channelDictionary', 'recordMetadata', 'horizon', '-v7.3');
fprintf('Verified and saved %d channels across %d timestamps to:\n%s\n', ...
    width(signals), height(signals), outputFile);
end

function [name, group, unit] = describe_channel(rawName, path)
% Match vector elements by ControlDesk's zero-based indices.
name = "other_" + rawName;
group = "Other";
unit = "";
wheel = ["FL", "FR", "RL", "RR"];

torque = regexp(char(rawName), '^(brake|drive)_torque_Nm\[([0-3])\]$', ...
    'tokens', 'once');
state = regexp(char(rawName), '^solverInputs\.lbx_0\[([0-4])\]$', ...
    'tokens', 'once');
command = regexp(char(rawName), '^command_Outport_1\[([0-2])\]$', ...
    'tokens', 'once');

if ~isempty(torque)
    index = str2double(torque{2}) + 1;
    name = "act_" + string(torque{1}) + "_" + wheel(index) + "_Nm";
    group = "Actuation commands";
    unit = "N*m";
elseif rawName == "steering_wheel_deg"
    name = "act_steering_wheel_deg";
    group = "Actuation commands";
    unit = "deg";
elseif ~isempty(state)
    names = ["lateral_error_m", "heading_error_rad", "speed_error_mps", ...
        "lateral_velocity_mps", "yaw_rate_radps"];
    stateUnits = ["m", "rad", "m/s", "m/s", "rad/s"];
    index = str2double(state{1}) + 1;
    name = "mpc_lbx0_" + names(index);
    group = "MPC initial state bounds";
    unit = stateUnits(index);
elseif ~isempty(command)
    names = ["cmd_Fx_N", "cmd_Fy_N", "cmd_Mz_Nm"];
    commandUnits = ["N", "N", "N*m"];
    index = str2double(command{1}) + 1;
    name = names(index);
    group = "Controller wrench request";
    unit = commandUnits(index);
elseif endsWith(path, "/horizon_prep")
    rawNames = ["P[1][0]", "P[9][0]", "P[13][0]", "P[17][0]", "P[18][0]", ...
        "P[10][0]", "P[14][0]"];
    names = ["horizon_ego_station_m", "horizon_fellow1_station_m", ...
        "horizon_fellow2_station_m", "horizon_road_lower_m", "horizon_road_upper_m", ...
        "horizon_fellow1_lateral_offset_m", "horizon_fellow2_lateral_offset_m"];
    [known, index] = ismember(rawName, rawNames);
    if known
        name = names(index);
        group = "Horizon at node zero";
        unit = "m";
    end
elseif rawName == "Out1" && contains(path, "/telemetry_unwrapped/")
    block = extractAfter(path, "/telemetry_unwrapped/");
    name = block;
    group = "Solver diagnostics";
    if block == "solver_time_s"
        unit = "s";
    elseif block == "sqp_iterations"
        name = "solver_sqp_iterations";
    end
elseif rawName == "Out1" && endsWith(path, "/Pos_x_Vehicle_CoorSys_E[m]")
    name = "ego_x_m";
    group = "Ego position";
    unit = "m";
elseif rawName == "Out1" && endsWith(path, "/Pos_y_Vehicle_CoorSys_E[m]")
    name = "ego_y_m";
    group = "Ego position";
    unit = "m";
elseif rawName == "Out1" && endsWith(path, "/Angle_SteeringWheel[deg]")
    name = "ego_steering_wheel_deg";
    group = "Actuation feedback";
    unit = "deg";
elseif ismember(rawName, ["Fellow1_StationGap", "Fellow2_StationGap"])
    name = "traffic_fellow" + extractBetween(rawName, "Fellow", "_StationGap") + "_station_gap_m";
    group = "Traffic gaps";
    unit = "m";
end
end
