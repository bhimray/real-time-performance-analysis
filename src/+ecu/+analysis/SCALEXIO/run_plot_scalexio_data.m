root = "C:\Users\bxr240009\Downloads\bim\real-time-performance-analysis";
addpath(fullfile(root,"src"));

file = fullfile(root,"results","SCALEXIO","rec1_009_readable.mat");
figures = ecu.scalexio_analysis.plot_scalexio_run(file, ...
    SnapshotTimes_s=[3.107 8]);