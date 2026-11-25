function record = convert_scalexio_recording(inputFile, outputFile, options)
%CONVERT_SCALEXIO_RECORDING Read a ControlDesk X/Y export without resampling.
% Saves one structure, record, in a NEW <input>_readable.mat file.
%
% Main outputs:
%   record.signals.plant       Native plant-clock timetable (all channels).
%   record.signals.controller  Native controller-clock timetable (all channels).
%   record.signals.parameters  Native parameter-snapshot timetable.
%   record.states             Five measured/controller initial states.
%   record.commands           Requested wrench, steering and wheel torques.
%   record.solver             Scalar solver diagnostics and KKT residuals.
%   record.horizon            Decoded P, shifted predictions, bounds and slack.
%   record.traffic            All 30 recorded traffic slots.
%   record.solverHistory      Iteration histories and their valid lengths.
%   record.timing             Native timing data and explicitly named estimates.
%   record.channelDictionary  Links every column to its original Y channel.
%   record.metadata           Original recording/channel/clock metadata.
%
% No interpolation, clock rebasing, failed-solve deletion or unit conversion
% is applied to the native timetables. Unknown channels are retained by name.
% PredictionStep_s describes the model grid, NOT the irregular recorder clock.
% ControllerPeriod_s must be confirmed from the RTOS configuration; NaN is unknown.
arguments
    inputFile (1,1) string
    outputFile (1,1) string = ""
    options.PredictionStep_s (1,1) double {mustBePositive,mustBeFinite} = 0.05
    options.ControllerPeriod_s (1,1) double = NaN
end
assert(isreal(options.ControllerPeriod_s) && (isnan(options.ControllerPeriod_s) || ...
    (isfinite(options.ControllerPeriod_s) && options.ControllerPeriod_s>0)), ...
    'ecu:RecordingControllerPeriod','ControllerPeriod_s must be positive and finite, or NaN.');
assert(isfile(inputFile),'ecu:RecordingMissing','Missing recording: %s.',inputFile);
inputFile = string(java.io.File(char(inputFile)).getCanonicalPath());
if outputFile == ""
    [folder,name] = fileparts(inputFile);
    outputFile = fullfile(folder,name + "_readable.mat");
end
outputFile = string(java.io.File(char(outputFile)).getCanonicalPath());
assert(~isfile(outputFile) && ~isfolder(outputFile),'ecu:RecordingOutputExists', ...
    'Output already exists. Choose a new filename; no recording will be overwritten: %s.',outputFile);
[outputFolder,~,extension] = fileparts(outputFile);
assert(strcmpi(extension,'.mat') && isfolder(outputFolder), ...
    'ecu:RecordingOutput','Choose a .mat filename in an existing folder.');
projectRoot = fileparts(fileparts(mfilename('fullpath')));
addpath(fullfile(projectRoot,'src'),'-begin');

%% 1. Locate the recording and validate every native time base
loaded = load(inputFile);
variables = fieldnames(loaded);
matches = structfun(@(x) isstruct(x) && isscalar(x) && ...
    all(isfield(x,{'X','Y','Info','Description'})),loaded);
assert(nnz(matches)==1,'ecu:RecordingSchema', ...
    'Expected one scalar ControlDesk structure containing X, Y, Info and Description.');
sourceName = variables{matches};
source = loaded.(sourceName);
assert(~isempty(source.X) && ~isempty(source.Y),'ecu:RecordingEmpty','The recording has no clock or channel data.');
clockCount = numel(source.X);
channelCount = numel(source.Y);
times = cell(clockCount,1);
clockStats = NaN(clockCount,6);
for k = 1:clockCount
    t = source.X(k).Data;
    assert(isnumeric(t) && isreal(t) && isvector(t) && all(isfinite(t(:))), ...
        'ecu:RecordingClock','X(%d) needs finite numeric timestamps.',k);
    unit = lower(strtrim(string(source.X(k).Unit)));
    assert(ismember(unit,["","s","sec","seconds","second"]), ...
        'ecu:RecordingClockUnit','X(%d) uses unsupported time units: %s.',k,unit);
    times{k} = double(t(:));
    dt = diff(times{k});
    assert(all(dt>0),'ecu:RecordingClockOrder', ...
        'X(%d) has repeated or backward timestamps. Inspect it before conversion.',k);
    clockStats(k,1:3) = [numel(t),t(1),t(end)];
    if ~isempty(dt), clockStats(k,4:6) = [min(dt),median(dt),max(dt)]; end
end
clockIndex = double(reshape([source.Y.XIndex],[],1));
assert(numel(clockIndex)==channelCount && all(isfinite(clockIndex)) && ...
    all(clockIndex==fix(clockIndex) & clockIndex>=1 & clockIndex<=clockCount), ...
    'ecu:RecordingClockIndex','A channel refers to an invalid XIndex.');

%% 2. Assign semantic names; retain every original channel and alias
names = strings(channelCount,1); groups = names; units = names;
rawNames = names; rawPaths = names; rawUnits = names;
sampleCount = zeros(channelCount,1); nonfinite = sampleCount;
sourceShape = strings(channelCount,1);
for k = 1:channelCount
    y = source.Y(k);
    rawNames(k) = string(y.Name); rawPaths(k) = string(y.Path); rawUnits(k) = string(y.Unit);
    [names(k),groups(k),units(k)] = ecu.scalexio_analysis.describe_channel(rawNames(k),rawPaths(k));
    v = y.Data;
    assert((isnumeric(v)||islogical(v)) && isreal(v) && isvector(v) && ...
        numel(v)==numel(times{clockIndex(k)}),'ecu:RecordingChannel', ...
        'Y(%d), %s at %s, must have one real value per native timestamp.',k,rawNames(k),rawPaths(k));
    sampleCount(k)=numel(v); nonfinite(k)=nnz(~isfinite(v)); sourceShape(k)=string(mat2str(size(v)));
end
names = string(matlab.lang.makeUniqueStrings( ...
    matlab.lang.makeValidName(cellstr(names)),{'Time'},namelengthmax));
unitSource = repmat("Project signal definition",channelCount,1);
unitSource(units=="")="Unknown";
units(rawUnits~="")=rawUnits(rawUnits~="");
unitSource(rawUnits~="")="Recorded Unit field";

%% 3. Build one timetable PER CLOCK, never a sparse union of all clocks
tags = strings(clockCount,1);
for k=1:clockCount
    p=rawPaths(clockIndex==k);
    if any(contains(p,"/controller_subsys") | contains(p,"/telemetry_unwrapped/"))
        tags(k)="controller";
    elseif ~isempty(p) && all(p=="Tunable Parameters")
        tags(k)="parameters";
    elseif any(contains(p,"/DISP_Plant/"))
        tags(k)="plant";
    else
        tags(k)="raster_" + compose('%02d',k);
    end
end
tags=string(matlab.lang.makeUniqueStrings(cellstr(tags)));
record=struct('schema_version',1,'sourceFile',inputFile,'outputFile',outputFile);
record.signals=struct();
for k=1:clockCount
    indices=find(clockIndex==k);
    columns=arrayfun(@(i) source.Y(i).Data(:),indices,'UniformOutput',false);
    tt=timetable(seconds(times{k}),columns{:},'VariableNames',cellstr(names(indices)));
    tt.Properties.DimensionNames{1}='Time';
    tt.Properties.VariableUnits=cellstr(units(indices).');
    tt.Properties.VariableDescriptions=cellstr((rawPaths(indices)+" :: "+rawNames(indices)).');
    record.signals.(tags(k))=tt;
end
record.channelDictionary=table((1:channelCount).',tags(clockIndex),names,groups,rawNames,rawPaths, ...
    rawUnits,units,unitSource,clockIndex,sampleCount,sourceShape,nonfinite, ...
    reshape(string({source.Y.Raster}),[],1),reshape(string({source.Y.Device}),[],1), ...
    double(reshape([source.Y.DownSampling],[],1)),reshape(string({source.Y.Description}),[],1), ...
    'VariableNames',{'YIndex','Timetable','SignalName','Group','OriginalName','OriginalPath', ...
    'RecordedUnit','Unit','UnitSource','XIndex','SampleCount','OriginalShape','NonfiniteCount', ...
    'Raster','Device','DownSampling','Description'});
record.timeBases=array2table(clockStats,'VariableNames', ...
    {'SampleCount','FirstTime_s','LastTime_s','MinStep_s','MedianStep_s','MaxStep_s'});
record.timeBases=addvars(record.timeBases,(1:clockCount).',tags, ...
    reshape(string({source.X.Raster}),[],1),'Before',1,'NewVariableNames',{'XIndex','Timetable','Raster'});

%% 4. Preserve source metadata and verify an exact round trip
record.metadata=rmfield(source,{'X','Y'});
record.metadata.TimeBases=source.X;
record.metadata.Channels=rmfield(source.Y,'Data');
record.metadata.SourceVariable=string(sourceName);
record.metadata.ConvertedUTC=string(datetime('now','TimeZone','UTC','Format','yyyy-MM-dd HH:mm:ss'));
record.metadata.PredictionStep_s=options.PredictionStep_s;
record.metadata.ControllerPeriod_s=options.ControllerPeriod_s;
record.metadata.TimeNote="Empty clock Unit fields are interpreted as seconds; clocks retain their original offsets.";
record.metadata.TimestampNote="Controller inputs and outputs can describe different physical instants despite sharing a recorder timestamp.";
for k=1:channelCount
    tt=record.signals.(tags(clockIndex(k)));
    assert(isequal(tt.Time,seconds(times{clockIndex(k)})) && ...
        isequaln(tt.(names(k)),source.Y(k).Data(:)), ...
        'ecu:RecordingVerification','Exact sample/time verification failed for Y(%d).',k);
end
record.states=group_table(record,"Measured state");
record.commands=group_table(record,["Controller wrench request","Actuator command"]);
record.solver=group_table(record,["Solver diagnostics","KKT residuals"]);
record=ecu.scalexio_analysis.decode_recorded_arrays(record,options.PredictionStep_s,options.ControllerPeriod_s);

%% 5. Write a new file only after all checks succeeded
record.verification=struct('AllOriginalSamplesVerified',true,'ChannelCount',channelCount, ...
    'ClockCount',clockCount,'NonfiniteValueCount',sum(nonfinite), ...
    'UnknownChannelCount',nnz(groups=="Other recorded channels"));
save(outputFile,'record','-v7.3');
fprintf('Saved readable SCALEXIO recording: %s\n',outputFile);
fprintf('Verified %d channels on %d native clocks; %d unclassified channels retained.\n', ...
    channelCount,clockCount,record.verification.UnknownChannelCount);
disp(record.timeBases);
end

function tt=group_table(record,groups)
% Convenience views retain the source clock, names and units.
d=record.channelDictionary;
rows=ismember(d.Group,groups);
if ~any(rows), tt=timetable(); return; end
tags=unique(d.Timetable(rows));
assert(numel(tags)==1,'ecu:RecordingGroupClocks', ...
    'The %s view spans multiple clocks. Use the native timetables explicitly.',strjoin(groups,', '));
tt=record.signals.(tags)(:,cellstr(d.SignalName(rows)));
end
