projectRoot = char(currentProject().RootFolder);
outputDir = fullfile(projectRoot, 'VEOS_BUILD_CLEAN');

if ~isfolder(outputDir)
    mkdir(outputDir);
end

disp(pwd)