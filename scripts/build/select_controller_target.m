function selection = select_controller_target(target, options)
%SELECT_CONTROLLER_TARGET Select exactly one controller build in this session.
% Startup uses NONE. There is no default target and no search for alternatives.
% Close models using the solver before changing targets.
%   select_controller_target('SCALEXIO', Root=projectRoot)
%   select_controller_target('VEOS', Root=projectRoot)
arguments
    target (1,1) string {mustBeMember(target,["NONE","VEOS","SCALEXIO"])}
    options.Root (1,1) string = string(fileparts(fileparts(fileparts(mfilename('fullpath')))))
    options.CheckOnly (1,1) logical = false
end
root = char(java.io.File(char(options.Root)).getCanonicalPath());
name = 'acados_solver_sfunction_ecu_vehicle_nmpc';
key = 'ecuControllerTarget';
selection = struct('target',target,'root',string(root),'directory',"");
if target ~= "NONE"
    folder = fullfile(root, ['build' char(target)], 'c_generated_code');
    selection.directory = string(folder);
    expectedMex = fullfile(folder, [name '.' mexext]);
    manifestFile = fullfile(fileparts(folder), 'registration_manifest.json');
    required = {expectedMex, fullfile(folder,'rtwmakecfg.m'), manifestFile};
    assert(all(cellfun(@isfile,required)), 'ecu:TargetArtifacts', ...
        'Incomplete %s build. Run its controller builder first: %s.', target, folder);
    registration = jsondecode(fileread(manifestFile));
    expectedPlatform = 'VEOS_WIN64_GCC';
    if target == "SCALEXIO", expectedPlatform = 'SCALEXIO_LNX64'; end
    assert(strcmp(registration.target,expectedPlatform), 'ecu:TargetManifest', ...
        'Unexpected registration target in %s.', manifestFile);
    % The target hook may only publish files belonging to this build.
    dependencies = [string(registration.sources(:)); string(registration.libraries(:))];
    prefix = lower(replace(string(fileparts(folder)), '\', '/') + '/');
    assert(all(startsWith(lower(replace(dependencies,'\','/')),prefix)), ...
        'ecu:TargetDependencies','Controller dependencies leave the selected target directory.');
    if target == "SCALEXIO"
        assert(all(endsWith(string(registration.libraries),'.a')), ...
            'ecu:TargetLibraries','SCALEXIO target libraries must be Linux .a archives.');
    end
end

if options.CheckOnly
    assert(isappdata(0,key), 'ecu:TargetNotSelected', ...
        'Select the controller target explicitly before generating code.');
    active = getappdata(0,key);
    assert(active.target == target && strcmpi(active.root,root), ...
        'ecu:TargetMismatch','This hook does not belong to the active controller target.');
else
    [~,loaded] = inmem('-completenames');
    solver = loaded(contains(loaded,[name '.']));
    if ~isempty(solver)
        assert(target ~= "NONE" && all(strcmpi(solver,expectedMex)), ...
            'ecu:TargetLoaded','Close models using the solver, then clear %s before switching targets.',name);
    end
    if isappdata(0,key), rmappdata(0,key); end
    % Remove build/cache trees and every directory exposing this solver/hook.
    % This also removes older desktop builds and duplicate checkout artifacts.
    entries = strsplit(path,pathsep);
    for k = 1:numel(entries)
        entry = entries{k};
        normalizedEntry = lower(replace(string(entry),'\','/'));
        withinProject = startsWith(normalizedEntry,lower(replace(string(root),'\','/')) + '/');
        isBuild = withinProject && ~isempty(regexpi(replace(entry,'\','/'), ...
            '/(build[^/]*|veos_build|_realtimeobjects|slprj|[^/]*_dsrt)(/|$)','once'));
        hasSolver = isfile(fullfile(entry,[name '.' mexext])) || ...
            isfile(fullfile(entry,[name '.c'])) || ...
            (withinProject && isfile(fullfile(entry,'rtwmakecfg.m')));
        % scripts/build contains the entry points and must remain on the path.
        isScriptsBuild = strcmpi(entry,fullfile(root,'scripts','build'));
        if (isBuild || hasSolver) && ~isScriptsBuild && ~isempty(entry)
            rmpath(entry);
        end
    end
    clear rtwmakecfg
    if target ~= "NONE", addpath(folder,'-begin'); end
    rehash;
end
if target ~= "NONE"
    assert(strcmpi(which(name),expectedMex), 'ecu:TargetShadowed', ...
        'Wrong solver selected. Inspect which %s -all and the current folder.',name);
    assert(strcmpi(which('rtwmakecfg'),fullfile(folder,'rtwmakecfg.m')), ...
        'ecu:TargetHookShadowed','Wrong registration hook selected. Inspect which rtwmakecfg -all.');
end
if ~options.CheckOnly
    setappdata(0,key,selection);
    fprintf('[controller target] %s: %s\n',target,selection.directory);
end
end
