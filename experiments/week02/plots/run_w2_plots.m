% RUN_W2_PLOTS Select the saved files, then generate the four Week 2 plots.
% Change only groupsDirectory when selecting another run with the same layout.

% Open the MATLAB project first.
project = currentProject();
projectRoot = string(project.RootFolder);

experimentStage = "w2_2run"; % Change to "w3" to plot Week 3 data.
runName = "F1_I0001_mu0p9_cap200_T8"; % Change to F1/2/3/4 for different family

runDirectory = fullfile( ...
    projectRoot, "results", "simulink", experimentStage, runName);

groupsDirectory = fullfile(runDirectory, "data", "groups");

outputDirectory = fullfile(runDirectory);

runDirectory = fileparts(fileparts(groupsDirectory));

% Explicit paths make it easy to see which data feeds each plot.
files.vehicle = fullfile(groupsDirectory,"vehicle.mat");
files.commands = fullfile(groupsDirectory,"commands_candidate.mat");
files.solver = fullfile(groupsDirectory,"solver_summary.mat");
files.timing = fullfile(groupsDirectory,"timing.mat");
files.context = fullfile(runDirectory,"metadata","request.mat");
files.active = ""; % Optional group containing controller.constraints.active.

addpath(fileparts(mfilename('fullpath')));
artifacts = w2_plots(files, ...
    ObstacleTimes=[0 2 4 6 8], ...
    OutputDirectory=fullfile(outputDirectory,"plots"), ...
    Visible="on");
