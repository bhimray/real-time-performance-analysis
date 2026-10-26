% Display the maintained project handoff.
p = currentProject;
disp(fileread(fullfile(p.RootFolder,'docs','STATUS.md')));
