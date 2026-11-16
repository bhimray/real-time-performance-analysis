% Run from any MATLAB working directory.
folder = fileparts(mfilename('fullpath'));
root = fileparts(fileparts(fileparts(fileparts(folder))));
addpath(folder, fullfile(root, 'src'), fullfile(root, 'config'));
recording = fullfile(root, 'results', 'VEOS', 'rec1_024_readable.mat');
animate_prediction_horizon(recording, ...
    PlaybackSpeed = 1.0, ...
    VideoFile = fullfile(root, 'results', 'VEOS', 'prediction_horizon.mp4'), ...
    TimeWindow_s = [1.45 13.45]);

