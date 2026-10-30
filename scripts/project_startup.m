% Restore compiled Simulink artifacts without rebuilding or editing models.
project = currentProject();
% Prefer this project over duplicate repository folders on the session path.
addpath(fullfile(char(project.RootFolder), 'src'), '-begin');
sfunctionDirectory = fullfile(char(project.RootFolder), 'build', 'simulink');
if isfolder(sfunctionDirectory)
    addpath(sfunctionDirectory, '-begin');
end
fprintf('\nECU Real-Time Control Performance\n');
fprintf('Foundation ready. Begin with check_environment and docs/STATUS.md.\n');

