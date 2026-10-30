function exports = export_groups(run, directory)
%EXPORT_GROUPS Save named groups without filtering or changing native clocks.
% Each MAT contains group.signals (including arrays) and group.scalars (table).
% CSVs contain only scalar channels and explicitly named vector components.
arguments
    run (1,1) struct
    directory (1,1) string
end
assert(~isfolder(directory),'ecu:GroupDirectoryExists', ...
    'Choose a new group directory rather than mixing exports: %s',directory);
mkdir(directory);
names = ["vehicle","measurements","commands_candidate","commands_applied", ...
    "execution","solver_summary","timing","solver_residuals", ...
    "solver_histories","predictions","replay","other"];
exports = struct('group',{},'mat_file',{},'mat_sha256',{}, ...
    'csv_file',{},'csv_sha256',{},'signal_count',{});
dictionary = table();
for name = names
    selected = false(1,numel(run.signals));
    for index = 1:numel(run.signals)
        selected(index) = classify(string(run.signals(index).id)) == name;
    end
    signals = run.signals(selected);
    group = struct('run_id',run.id,'name',name,'signals',signals, ...
        'scalars',table());
    for index = 1:numel(signals)
        s = signals(index);
        columns = strings(0,1);
        if size(s.values,1) == 1
            columns = string(matlab.lang.makeValidName( ...
                char(regexprep(string(s.id),'^[^.]+\.',''))));
        elseif string(s.id) == "controller.measurement.x" && size(s.values,1) == 5
            columns = ["e_m";"psi_rad";"speed_error_mps";"vy_mps";"gamma_radps"];
        elseif string(s.id) == "controller.solver.residuals" && size(s.values,1) == 4
            columns = ["stationarity";"equality";"inequality";"complementarity"];
        end
        if ~isempty(columns)
            if width(group.scalars) == 0
                group.scalars.time_s = s.time_s(:);
            else
                assert(isequal(group.scalars.time_s,s.time_s(:)), ...
                    'ecu:GroupClockMismatch','Clocks differ in group %s.',name);
            end
            for component = 1:numel(columns)
                column = char(columns(component));
                assert(~ismember(column,group.scalars.Properties.VariableNames), ...
                    'ecu:GroupColumnCollision','Duplicate column %s.',column);
                group.scalars.(column) = s.values(component,:).';
            end
        end
        row = table(string(s.id),name,string(s.unit),string(s.source), ...
            string(s.rate),size(s.values,1),numel(s.time_s), ...
            strjoin(columns,';'),"groups/"+name+".mat", ...
            VariableNames={'signal_id','group','unit','source','rate', ...
            'components','samples','csv_columns','mat_file'});
        dictionary = [dictionary;row]; %#ok<AGROW>
    end
    if isempty(signals)
        continue;
    end
    matFile = fullfile(directory,name+".mat");
    save(matFile,'group','-v7.3');
    entry = struct('group',name,'mat_file',name+".mat", ...
        'mat_sha256',string(ecu.simulation.file_hash(matFile)), ...
        'csv_file',"",'csv_sha256',"",'signal_count',numel(signals));
    if width(group.scalars) > 0
        csvFile = fullfile(directory,name+".csv");
        writetable(group.scalars,csvFile);
        entry.csv_file = name+".csv";
        entry.csv_sha256 = string(ecu.simulation.file_hash(csvFile));
    end
    exports(end+1) = entry; %#ok<AGROW>
end
if width(dictionary) == 0
    dictionary = table(strings(0,1),VariableNames={'signal_id'});
end
writetable(dictionary,fullfile(directory,'signal_dictionary.csv'));
% Include expected but missing channels; absence must not look like zero data.
expected = string(run.channels.id);
present = string({run.signals.id}).';
inventory = table(expected,ismember(expected,present), ...
    VariableNames={'signal_id','available'});
writetable(inventory,fullfile(directory,'availability.csv'));
index.run_id = run.id;
index.groups = exports;
index.dictionary_sha256 = ecu.simulation.file_hash(fullfile(directory,'signal_dictionary.csv'));
index.availability_sha256 = ecu.simulation.file_hash(fullfile(directory,'availability.csv'));
index.processing = 'Grouping and named component extraction only; no filtering or resampling.';
ecu.simulation.write_json(fullfile(directory,'index.json'),index);
end

function name = classify(id)
if startsWith(id,"vehicle.")
    name = "vehicle";
elseif startsWith(id,"controller.measurement.")
    name = "measurements";
elseif startsWith(id,"command.candidate.")
    name = "commands_candidate";
elseif startsWith(id,"command.applied.")
    name = "commands_applied";
elseif startsWith(id,"execution.")
    name = "execution";
elseif startsWith(id,"replay.")
    name = "replay";
elseif startsWith(id,"controller.prediction.")
    name = "predictions";
elseif endsWith(id,"_time") || endsWith(id,".total_time")
    name = "timing";
elseif contains(id,"history")
    name = "solver_histories";
elseif id == "controller.solver.residuals"
    name = "solver_residuals";
elseif startsWith(id,"controller.solver.")
    name = "solver_summary";
else
    name = "other";
end
end
