function assert_controller_mex_unlocked(file)
%ASSERT_CONTROLLER_MEX_UNLOCKED Fail before modifying a build used by MATLAB.
% INMEM only sees the current MATLAB process. An exclusive, non-truncating
% Windows file open also detects a solver loaded in another MATLAB session.
arguments
    file (1,1) string
end
if ~isfile(file), return; end
try
    stream = System.IO.File.Open(char(file),System.IO.FileMode.Open, ...
        System.IO.FileAccess.ReadWrite,System.IO.FileShare.None);
    stream.Close();
catch cause
    error('ecu:SolverFileLocked', ...
        ['Cannot replace solver MEX: %s\n' ...
        'Close models using it and run clear acados_solver_sfunction_ecu_vehicle_nmpc ' ...
        'in every MATLAB session that loaded it. Also check file permissions.\nDetails: %s'], ...
        file,cause.message);
end
end
