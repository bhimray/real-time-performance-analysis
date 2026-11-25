addpath(fullfile(pwd, 'scripts'));

folder = fullfile(pwd, 'results', 'SCALEXIO'); %% 'VEOS', 'SCALEXIO
inputFile  = fullfile(folder, 'rec1_008.mat');
outputFile = fullfile(folder, 'rec1_008_readable.mat');

[signals, channelDictionary, recordMetadata, horizon] = ...
    convert_veos_recording(inputFile, outputFile);