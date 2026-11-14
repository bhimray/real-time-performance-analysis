function config = setup_a11()
%SETUP_A11 Add integration functions and return metadata without loading ASM.
folder = fileparts(mfilename('fullpath'));
addpath(folder, fullfile(folder,'adapters'));
config = a11_integration_config();
fprintf('A11 measurement and bounded actuation helpers available. Closed-loop readiness: false.\n');
fprintf('ASM initialization and solver generation are separate steps.\n');
end
