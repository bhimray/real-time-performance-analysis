function results = validate_controller()
%VALIDATE_CONTROLLER Build and test the MATLAB controller in isolation.
%
%   The tests cover equations, derivatives, constraints, cost scaling,
%   iteration caps and frozen-problem replay. No Simulink model is used.

%% Build a fresh solver

projectRoot = char(currentProject().RootFolder);
bundle = build_controller();

%% Temporarily expose the test entry point

testDirectory = fullfile(projectRoot, 'tests');
addpath(testDirectory);

pathCleanup = onCleanup(@() rmpath(testDirectory)); %#ok<NASGU>

%% Run the controller checks

results = test_controller(bundle);

%% Save a human-readable validation summary

reportFile = fullfile( ...
    projectRoot, 'docs', 'validation', 'controller_validation.json');

fileId = fopen(reportFile, 'w');
assert(fileId >= 0);

fileCleanup = onCleanup(@() fclose(fileId)); %#ok<NASGU>

fprintf(fileId, '%s\n', jsonencode(results, PrettyPrint=true));

end
