function report = check_environment()
%CHECK_ENVIRONMENT Inspect only; do not install or modify dependencies.
p = currentProject;
root = char(p.RootFolder);
report.matlab_release = ['R' erase(version('-release'),'R')];
report.expected_release = 'R2025b';
report.release_matches = strcmp(report.matlab_release, report.expected_release);
report.simulink_installed = ~isempty(ver('simulink'));
report.simulink_license_available = license('test','Simulink');
report.acados_on_path = ~isempty(which('AcadosOcpSolver'));
report.local_configuration_present = isfile(fullfile(root,'config','local.json'));
report.compiler = 'Unconfigured';
try
    c = mex.getCompilerConfigurations('C','Selected');
    if ~isempty(c), report.compiler = c(1).Name; end
catch err
    report.compiler = err.message;
end
report.dspace_compatibility = 'Not verified; record versions in dependencies/toolchain.json';
report.hardware_mapping = 'Not configured';
disp(report)
end
