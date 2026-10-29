function index = parameter_layout()
%PARAMETER_LAYOUT Define the stage-parameter order prescribed in Sheet A5.
%
%   INDEX contains MATLAB indices into a 19-by-1 parameter vector.
%   Use these names instead of numerical offsets in controller code.
%
%   Each obstacle occupies four entries: [station; lateral_position; a; b].
%   a is its lateral semi-axis; b is its longitudinal semi-axis.

%% Measured speed and predicted path signals

index.vx = 1;           % Measured longitudinal speed [m/s], frozen in horizon.
index.s = 2;            % Predicted station [m].
index.psi_pvr = 3;      % Reference sideslip correction [rad].
index.dpsi_pr = 4;      % Path-heading derivative d(psi_pr)/ds [1/m].
index.dpsi_pvr = 5;     % First derivative of sideslip correction [rad/m].
index.ddpsi_pr = 6;     % Second derivative of path heading [1/m^2].
index.ddpsi_pvr = 7;    % Second derivative of sideslip correction [rad/m^2].
index.vr = 8;           % Reference speed [m/s].
index.dvr = 9;          % Reference-speed derivative dv_r/ds [1/s].

%% Obstacle geometry and road limits

index.obstacle1 = 10:13;
index.obstacle2 = 14:17;
index.emin = 18;        % Lower lateral road bound [m].
index.emax = 19;        % Upper lateral road bound [m].

%% Field names used by the parameter-packing helper

index.names = {
    'vx', 's', 'psi_pvr', 'dpsi_pr', 'dpsi_pvr', ...
    'ddpsi_pr', 'ddpsi_pvr', 'vr', 'dvr', ...
    'so1', 'eo1', 'a1', 'b1', ...
    'so2', 'eo2', 'a2', 'b2', ...
    'emin', 'emax'
};

end