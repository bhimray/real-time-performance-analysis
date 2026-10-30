function [directory, lockCleanup] = prepare_run_directory(root, identity)
%PREPARE_RUN_DIRECTORY Replace owned outputs sharing the same readable parameter name.
% The exclusive lock lives outside the output directory for the entire run.
if ~isfolder(root)
    mkdir(root);
end
root = char(java.io.File(char(root)).getCanonicalPath());
directory = fullfile(root,identity.id);
lockPath = fullfile(root,[identity.id,'.lock']);
lock = java.io.File(lockPath);
assert(lock.createNewFile(),'ecu:RunDirectoryBusy', ...
    'Experiment is already running, or has a stale lock: %s',lockPath);
lockCleanup = onCleanup(@() delete_lock(lockPath));
identityFile = fullfile(directory,'metadata','identity.json');
if isfolder(directory)
    assert(isfile(identityFile),'ecu:UnownedRunDirectory', ...
        'Refusing to replace a folder without identity metadata: %s',directory);
    previous = jsondecode(fileread(identityFile));
    % assert(isfield(previous,'id') && strcmp(previous.id,identity.id),'ecu:RunIdentityCollision', ...
    %     'Stored experiment name does not match this folder: %s',directory);
    for name = ["data","metadata","analysis"]
        child = fullfile(directory,name);
        resolved = char(java.io.File(char(child)).getCanonicalPath());
        assert(strcmp(resolved,char(child)),'ecu:UnsafeRunDirectory', ...
            'Output directory resolves outside its expected location: %s',child);
    end
    % Stale figures/data must not survive a failed replacement run.
    for name = ["data","metadata","analysis"]
        child = fullfile(directory,name);
        if isfolder(child)
            rmdir(child,'s');
        end
    end
end
mkdir(fullfile(directory,'data'));
mkdir(fullfile(directory,'metadata'));
ecu.simulation.write_json(identityFile,identity);
end

function delete_lock(path)
if isfile(path)
    delete(path);
end
end
