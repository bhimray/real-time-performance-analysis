function artifacts = plot_matlab_run(runPath, options)
%PLOT_MATLAB_RUN Load one saved run and export the four Week 2 figure groups.
% Accept a run MAT file, run directory, or its data directory.
% Example: plot_matlab_run("C:/.../results/simulink/F1_I0001_mu0p9_cap200_T8")
arguments
    runPath (1,1) string
    options.ObstacleTimes double = [0 2 4 6 8]
    options.OutputDirectory (1,1) string = ""
    options.Visible (1,1) string {mustBeMember(options.Visible,["on","off"])} = "on"
end
if isfolder(runPath)
    if isfile(fullfile(runPath,'data','run.mat'))
        runPath=fullfile(runPath,'data','run.mat');
    else
        runPath=fullfile(runPath,'run.mat');
    end
end
assert(isfile(runPath),'Select a run MAT file or a directory containing it.');
runPath=string(java.io.File(char(runPath)).getCanonicalPath());
saved=load(runPath,'run'); 
run=saved.run;
data=ecu.analysis.prepare_w2_plot_data(run);
runDirectory=string(fileparts(runPath));
[parent,name]=fileparts(runDirectory);
if name=="data", runDirectory=parent; end
sourceHash=ecu.logging.file_sha256(runPath);
for name=["manifest.json","run_manifest.json"]
    file=fullfile(runDirectory,'metadata',name);
    if isfile(file)
        m=jsondecode(fileread(file));
        assert(strcmpi(m.mat_sha256,sourceHash),'Saved run checksum mismatch.');
    end
end
directory=options.OutputDirectory;
if directory=="", directory=fullfile(runDirectory,'plots','w2'); end
if ~isfolder(directory), mkdir(directory); end
% Each function below is reusable with prepared arrays, without file loading.
previous=get(groot,'DefaultFigureVisible');
restore=onCleanup(@() set(groot,'DefaultFigureVisible',previous));
set(groot,'DefaultFigureVisible','off');
figures=gobjects(1,4);
try
    figures(1)=ecu.analysis.plot_w2_trajectory(data.plant,run.instance,options.ObstacleTimes);
    figures(2)=ecu.analysis.plot_w2_states_inputs(data.plant,data.inputs,run.config.lbu,run.config.ubu);
    figures(3)=ecu.analysis.plot_w2_solver(data.solver.iterations,data.solver.total_time,data.solver.active_count);
    figures(4)=ecu.analysis.plot_w2_slack(data.slack);
    names=["trajectory","states_inputs","solver","slack_max"];
    files=strings(1,4);
    for k=1:4
        axesList=findall(figures(k),'Type','axes');
        set(axesList,'Color','w','XColor','k','YColor','k');
        set(findall(figures(k),'Type','text'),'Color','k');
        files(k)=fullfile(directory,names(k)+".png");
        exportgraphics(figures(k),files(k),'Resolution',160,'BackgroundColor','white');
        savefig(figures(k),fullfile(directory,names(k)+".fig"));
        set(figures(k),'Visible',options.Visible);
    end
catch exception
    close(figures(isgraphics(figures))); rethrow(exception)
end
manifest.run_id=run.id;
manifest.source_mat_file=runPath;
manifest.source_mat_sha256=sourceHash;
manifest.obstacle_times_s=options.ObstacleTimes;
manifest.input_kind=data.inputs.label;
manifest.notes=data.notes;
manifest.png_files=names+".png";
manifest.processing='No filtering/resampling. Solver seconds to ms; max slack and active count across rows.';
fid=fopen(fullfile(directory,'plot_manifest.json'),'w'); assert(fid>=0);
fileCleanup=onCleanup(@() fclose(fid));
fprintf(fid,'%s\n',jsonencode(manifest,PrettyPrint=true));
for k=1:numel(data.notes)
    warning('ecu:PlotDataUnavailable','%s',data.notes(k));
end
artifacts=struct('directory',directory,'png_files',files, ...
    'figures',figures,'notes',data.notes);
end
