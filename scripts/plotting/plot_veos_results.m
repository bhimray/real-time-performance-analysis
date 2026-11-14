% Convert the VEOS export once, then open the diagnostic figures.
projectRoot = fileparts(fileparts(fileparts(mfilename('fullpath'))));
addpath(fullfile(projectRoot, 'scripts'), fullfile(projectRoot, 'src'));
recordingFolder = fullfile(projectRoot, 'results', 'VEOS');
sourceFile = fullfile(recordingFolder, 'rec1_009.mat');
convertedFile = fullfile(recordingFolder, 'rec1_009_readable.mat');
if ~isfile(convertedFile)
    convert_veos_recording(sourceFile, convertedFile);
end

ecu.veos_analysis.plot_veos_run(convertedFile, SnapshotTimes_s=[2, 9.343]);
ecu.veos_analysis.plot_collision_avoidance_paper(convertedFile)
