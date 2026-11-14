function activate_controller_veos(root)
%ACTIVATE_CONTROLLER_VEOS Give the buildVEOS controller session path priority.
if nargin < 1
    root = fileparts(fileparts(fileparts(mfilename('fullpath'))));
end
generated = fullfile(root,'buildVEOS','c_generated_code');
name = 'acados_solver_sfunction_ecu_vehicle_nmpc';
expected = fullfile(generated,[name '.' mexext]);
assert(isfile(expected),'Run build_controller_veos first.');
[~,loaded] = inmem('-completenames');
old = loaded(contains(loaded,[name '.']));
assert(isempty(old) || all(strcmpi(old,expected)), ...
    'Close models and clear the previously loaded S-function before activating buildVEOS.');
addpath(generated,'-begin');
rehash;
assert(strcmpi(which(name),expected), ...
    'Another folder or the current directory shadows the buildVEOS S-function.');
fprintf('Controller S-function: %s\n',which(name));
end
