function sfunctionFile = build_controller_sfunction(buildDirectory)
%BUILD_CONTROLLER_SFUNCTION Compile an optional S-function binary.
%
%   First build a MATLAB controller and pass bundle.build_dir here.
%   Automatic Simulink model creation must remain disabled. This helper
%   compiles the binary only; the user creates and connects all models.

%% Verify the selected build and its model-creation setting

assert(isfolder(buildDirectory), ...
    'Select an existing successful controller build.');

setup_controller_environment();

generatedDirectory = fullfile(buildDirectory, 'c_generated_code');
ocpFile = fullfile(buildDirectory, 'ocp.json');
ocpDescription = jsondecode(fileread(ocpFile));

% assert(ocpDescription.simulink_opts.generate_simulink_block == 0, ...
%     'ecu:ModelCreationDisabled', ...
%     'Automatic Simulink model creation must be disabled.');

%% Run the generated S-function compilation script

originalDirectory = pwd;
directoryCleanup = onCleanup(@() cd(originalDirectory)); %#ok<NASGU>

cd(generatedDirectory);
run('make_sfun.m');

%% Verify the expected binary was produced

solverName = ocpDescription.name;

sfunctionFile = fullfile( ...
    generatedDirectory, ...
    ['acados_solver_sfunction_', solverName, '.', mexext] ...
);

assert(isfile(sfunctionFile), ...
    'S-function binary was not produced.');

% Publish the fixed-name Simulink build to a project-managed location.
% Other MATLAB controller builds keep their isolated names and folders.
if strcmp(solverName, 'ecu_vehicle_nmpc')
    root = char(currentProject().RootFolder);
    target = fullfile(root, 'build', 'simulink');
    if ~isfolder(target), mkdir(target); end
    destination = fullfile(target, ['acados_solver_sfunction_', solverName, '.', mexext]);
    [ok, message] = copyfile(sfunctionFile, destination, 'f');
    assert(ok, 'ecu:SfunctionPublish', ...
        'Cannot publish S-function. Close models using it and retry: %s', message);
    copyfile(ocpFile, fullfile(target, 'ocp.json'), 'f');
    addpath(target, '-begin');
    sfunctionFile = destination;
end
fprintf([ ...
    'S-function built. Create and connect the model yourself using ' ...
    'docs/SIMULINK_GUIDE.md.\n' ...
]);

end

