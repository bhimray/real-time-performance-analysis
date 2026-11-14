function makeInfo = rtwmakecfg_veos()
% Controller build dependencies, published by build_veos_windows.
out = fileparts(fileparts(mfilename('fullpath')));
file = fullfile(out,'registration_manifest.json');
assert(isfile(file),'ecu:VEOSRegistration','Run build_veos_windows first.');
r = jsondecode(fileread(file));
selection = jsondecode(fileread(fullfile(out,'veos_target.json')));
assert(r.schema_version == 1 && strcmp(r.target,'VEOS_WIN64_GCC') ...
    && strcmp(selection.target,r.target),'ecu:VEOSRegistration', ...
    'This controller registration targets Windows VEOS. Run build_veos_windows.');
sources = cellstr(string(r.sources));
flat = cellstr(string(r.flat_headers));
tree = cellstr(string(r.tree_headers));
folders = cellstr(string(r.tree_folders));
libraries = cellstr(string(r.libraries));
assert(all(cellfun(@isfile,[sources(:);flat(:);tree(:);libraries(:)])), ...
    'ecu:VEOSRegistration','A registered dependency is missing; run build_veos_windows.');
assert(~any(contains(sources,'sfunction')),'S-function wrapper must not be registered twice.');
makeInfo.includePath = cellstr(string(r.include_dirs)).';
makeInfo.sourcePath = unique(cellfun(@fileparts,sources,'UniformOutput',false),'stable').';
[~,names,exts] = cellfun(@fileparts,sources,'UniformOutput',false);
makeInfo.sources = strcat(names,exts).';
makeInfo.linkLibsObjs = libraries.';
if exist('dsrt_addfiles','file') ~= 0
    % DSRT explicitly compiles SrcFile entries and links platform binaries.
    %dsrt_addfiles(sources,'FileType','SrcFile','Platform',r.target);
    dsrt_addfiles(flat,'FileType','HeaderFile');
    destinations = unique(folders,'stable');
    for k = 1:numel(destinations)
        if ~isempty(destinations{k})
            dsrt_addfiles(tree(strcmp(folders,destinations{k})), ...
                'Destination',destinations{k});
        end
    end
    dsrt_addfiles(libraries,'FileType','Binary','Platform',r.target);
end
fprintf('[buildVEOS] %s: %d generated sources, %d headers, %d libraries.\n', ...
    r.target,numel(sources),numel(flat),numel(libraries));
end
