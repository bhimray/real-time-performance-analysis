addpath(fullfile(pwd, 'scripts'));

folder = fullfile(pwd, 'results', 'VEOS');
inputFile  = fullfile(folder, 'rec1_009.mat');
outputFile = fullfile(folder, 'rec1_009_readable.mat');

[signals, channelDictionary, recordMetadata, horizon] = ...
    convert_veos_recording(inputFile, outputFile);