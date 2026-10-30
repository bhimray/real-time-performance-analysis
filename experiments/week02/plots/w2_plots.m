function artifacts = w2_plots(files, options)
%W2_PLOTS Load selected grouped files and export four Week 2 figures.
% Use run_w2_plots.m to set the paths. Plot functions receive arrays only.
arguments
    files (1,1) struct
    options.ObstacleTimes double = [0 2 4 6 8]
    options.OutputDirectory (1,1) string = ""
    options.Visible (1,1) string {mustBeMember(options.Visible,["on","off"])} = "on"
end

% Read and fingerprint inputs before plotting.
sources = struct('name',{},'path',{},'sha256',{});
names = fieldnames(files);
for k=1:numel(names)
    path = string(files.(names{k}));
    if strlength(path)==0, continue; end
    assert(isfile(path),'Missing input file: %s',path);
    sources(end+1) = struct('name',names{k},'path',path, ...
        'sha256',ecu.logging.file_sha256(path)); %#ok<AGROW>
end
[data, context] = load_w2_plot_groups(files);

directory = options.OutputDirectory;
if directory==""
    % files.context normally points to <run>/metadata/request.mat.
    runDirectory = fileparts(fileparts(string(files.context)));
    directory = fullfile(runDirectory,"plots","w2");
end
if ~isfolder(directory), mkdir(directory); end

previous = get(groot,'DefaultFigureVisible');
restore = onCleanup(@() set(groot,'DefaultFigureVisible',previous));
set(groot,'DefaultFigureVisible','off');
figures = gobjects(1,5);
try
    figures(1) = ecu.analysis.plot_w2_trajectory( ...
        data.plant,context.instance,options.ObstacleTimes);
    figures(2) = ecu.analysis.plot_w2_states_inputs( ...
        data.plant,data.inputs,context.config.lbu,context.config.ubu);
    activeCount = data.solver.active_count;
    countLabel = ["Predicted near-boundary";"constraint-stage pairs [count]"];
    if isempty(activeCount.values) && width(data.constraints.counts)>0
        activeCount.time_s = data.constraints.counts.time_s.';
        activeCount.values = data.constraints.counts.total_near_count.';
        countLabel = ["Recorded near-boundary";"groups [count]"];
    end
    figures(3) = ecu.analysis.plot_w2_solver( ...
        data.solver.iterations,data.solver.total_time,activeCount,countLabel);
    figures(4) = ecu.analysis.plot_w2_slack(data.slack);
    figures(5) = ecu.analysis.plot_w2_constraints(data.constraints);

    names = ["trajectory","states_inputs","solver","slack_max","constraints"];
    pngFiles = strings(1,5);
    for k=1:5
        set(findall(figures(k),'Type','axes'),'Color','w','XColor','k','YColor','k');
        set(findall(figures(k),'Type','text'),'Color','k');
        pngFiles(k) = fullfile(directory,names(k)+".png");
        exportgraphics(figures(k),pngFiles(k),'Resolution',160,'BackgroundColor','white');
        savefig(figures(k),fullfile(directory,names(k)+".fig"));
        set(figures(k),'Visible',options.Visible);
    end
catch exception
    close(figures(isgraphics(figures)));
    rethrow(exception)
end

manifest.run_id = context.run_id;
manifest.sources = sources;
manifest.obstacle_times_s = options.ObstacleTimes;
manifest.input_kind = data.inputs.label;
manifest.notes = data.notes;
manifest.png_files = names+".png";
manifest.processing = 'No filtering/resampling; seconds to ms; per-solve maximum slack and active-flag count.';
manifest.constraint_scope = data.constraints.scope;
manifest.constraint_tolerance = data.constraints.tolerance;
constraintReport = data.constraints;
save(fullfile(directory,"constraints.mat"),'constraintReport');
writetable(constraintReport.summary,fullfile(directory,"constraint_summary.csv"));
if width(constraintReport.counts)>0
    writetable(constraintReport.counts,fullfile(directory,"constraint_counts.csv"));
end
ecu.simulation.write_json(fullfile(directory,"plot_manifest.json"),manifest);
for k=1:numel(data.notes)
    warning('ecu:PlotDataUnavailable','%s',data.notes(k));
end
artifacts = struct('directory',directory,'png_files',pngFiles, ...
    'figures',figures,'notes',data.notes);
end
