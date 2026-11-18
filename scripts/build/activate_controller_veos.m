function activate_controller_veos(root)
%ACTIVATE_CONTROLLER_VEOS Select the existing VEOS build explicitly.
% Kept as the VEOS entry point; all path and manifest checks have one owner.
if nargin < 1
    root = fileparts(fileparts(fileparts(mfilename('fullpath'))));
end
select_controller_target('VEOS',Root=root);
end
