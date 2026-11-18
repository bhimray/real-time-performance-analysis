function cleanup = acquire_acados_build_lock(root)
%ACQUIRE_ACADOS_BUILD_LOCK Prevent concurrent CMake metadata writes.
% acados CMake writes source/lib metadata even for an out-of-tree build.
% Target outputs stay separate; this shared lock only serializes that writer.
arguments
    root (1,1) string
end
folder = fullfile(root,'build');
if ~isfolder(folder), mkdir(folder); end
file = fullfile(folder,'acados_source.lock');
try
    stream = System.IO.File.Open(char(file),System.IO.FileMode.OpenOrCreate, ...
        System.IO.FileAccess.ReadWrite,System.IO.FileShare.None);
catch cause
    error('ecu:AcadosBuildLocked', ...
        ['Cannot acquire the acados build lock: %s\n' ...
        'Finish the other controller build first, and check write permissions.\nDetails: %s'], ...
        file,cause.message);
end
cleanup = onCleanup(@() stream.Close());
end
