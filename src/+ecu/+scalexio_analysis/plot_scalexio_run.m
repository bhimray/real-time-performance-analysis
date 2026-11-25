function figures = plot_scalexio_run(recordingFile, options)
%PLOT_SCALEXIO_RUN Plot a converted recording using its native time bases.
% SnapshotTimes_s selects the nearest usable solves by recorded output time.
% An empty selection shows the valid solve with the largest obstacle slack.
% Individual plot functions also accept a loaded record structure.
arguments
    recordingFile (1,1) string
    options.SnapshotTimes_s (1,:) double {mustBeFinite} = []
    options.Visible (1,1) string {mustBeMember(options.Visible,["on","off"])} = "on"
    options.OutputDirectory (1,1) string = ""
end
data = load(recordingFile,'record');
assert(isfield(data,'record'),'Expected a readable SCALEXIO MAT file with a record structure.');
record = data.record;
figures.trajectory = ecu.scalexio_analysis.plot_trajectory(record,options.Visible);
figures.prediction = ecu.scalexio_analysis.plot_prediction_horizons(record, ...
    options.SnapshotTimes_s,options.Visible);
figures.constraints = ecu.scalexio_analysis.plot_constraints(record,options.Visible);
figures.steering = ecu.scalexio_analysis.plot_steering(record,options.Visible);
figures.solver = ecu.scalexio_analysis.plot_solver(record,options.Visible);
figures.overruns = ecu.scalexio_analysis.plot_overruns(record,options.Visible);

if options.OutputDirectory == "", return; end
if ~isfolder(options.OutputDirectory), mkdir(options.OutputDirectory); end
[~,recordName] = fileparts(recordingFile);
for name = string(fieldnames(figures)).'
    for k = 1:numel(figures.(name))
        filename = recordName + "_" + name;
        if numel(figures.(name)) > 1, filename = filename + "_" + k; end
        exportgraphics(figures.(name)(k),fullfile(options.OutputDirectory,filename+".pdf"), ...
            'ContentType','vector','BackgroundColor','white');
    end
end
end
