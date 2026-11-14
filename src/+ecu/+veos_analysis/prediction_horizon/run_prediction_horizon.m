% Run from any MATLAB working directory.
folder = fileparts(mfilename('fullpath'));
root = fileparts(fileparts(fileparts(fileparts(folder))));
addpath(folder, fullfile(root, 'src'), fullfile(root, 'config'));
recording = fullfile(root, 'results', 'VEOS', 'rec1_003_readable.mat');
animate_prediction_horizon(recording, PlaybackSpeed=0.25);
