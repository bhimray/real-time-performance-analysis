function create_ecu_project(root)
% Create and validate a native MATLAB project using the selected release.
assert(strcmp(erase(version('-release'),'R'),'2025b'));
p = matlab.project.createProject('Folder',root,'Name','ECU_RealTime_Control_Performance');
p.Description = 'ECU-level real-time computation and control performance study using acados NMPC, with future ASM, AURELION, VEOS and SCALEXIO integration.';
entries = dir(fullfile(root,'**','*'));
for k = 1:numel(entries)
    if entries(k).isdir, continue; end
    f = fullfile(entries(k).folder,entries(k).name);
    if contains(f,[filesep 'resources' filesep]) || endsWith(f,'.prj'), continue; end
    addFile(p,f);
end
for folder = {'src','config','scripts','scripts/setup','scripts/build','scripts/validation','scripts/scenarios','scripts/plotting','experiments/week02'}
    addPath(p,fullfile(root,folder{1}));
end
addStartupFile(p,fullfile(root,'scripts','project_startup.m'));
s = addShortcut(p,fullfile(root,'scripts','setup','check_environment.m')); s.Name = 'Check environment';
s = addShortcut(p,fullfile(root,'scripts','validation','check_foundation.m')); s.Name = 'Verify foundation';
s = addShortcut(p,fullfile(root,'scripts','show_project_status.m')); s.Name = 'Resume work';
close(p);
p = openProject(root);
check_foundation();
report = check_environment();
save(fullfile(root,'docs','validation','foundation_environment.mat'),'report');
fid = fopen(fullfile(root,'docs','validation','foundation_check.txt'),'w');
fprintf(fid,'MATLAB %s\nNative project created, closed and reopened successfully.\nProject path and scaffold checks passed.\nNo controller, solver, plant or deployment validation performed.\n',version('-release'));
fclose(fid);
addFile(p,fullfile(root,'docs','validation','foundation_environment.mat'));
addFile(p,fullfile(root,'docs','validation','foundation_check.txt'));
close(p);
assert(~isempty(dir(fullfile(root,'*.prj'))),'Native .prj file missing');
fprintf('ECU_PROJECT_CREATED_AND_VERIFIED\n');
end
