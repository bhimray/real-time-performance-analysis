function initial = controller_initialization(config)
%controller_initialization Return safe defaults for solver construction.
%
%   This is a synthetic straight-road fixture, not an A6 scenario instance.
%   Distant obstacles keep the default generation problem uncomplicated.
%   Actual run measurements and stage parameters replace these defaults.

%% One default stage in the exact A5 parameter order

parameters = [
    25          % vx: frozen measured longitudinal speed [m/s].
    0           % s: initial path station [m].
    0           % psi_pvr: reference sideslip correction [rad].
    0           % dpsi_pr: path curvature [1/m].
    0           % dpsi_pvr: first sideslip derivative.
    0           % ddpsi_pr: second path-heading derivative.
    0           % ddpsi_pvr: second sideslip derivative.
    25          % vr: reference speed [m/s].
    0           % dvr: reference-speed derivative.
    1000        % Obstacle 1 station [m].
    0           % Obstacle 1 lateral position [m].
    1.3         % Obstacle 1 lateral semi-axis [m].
    4.5         % Obstacle 1 longitudinal semi-axis [m].
    1000        % Obstacle 2 station [m].
    3.75        % Obstacle 2 lateral position [m].
    1.3         % Obstacle 2 lateral semi-axis [m].
    4.5         % Obstacle 2 longitudinal semi-axis [m].
    -1.75       % Lower road bound [m].
    5.25        % Upper road bound [m].
];

%% Extend to all state nodes, including the terminal node

initial.x0 = zeros(5, 1);
initial.P = repmat(parameters, 1, config.N + 1);
initial.P(2, :) = 25 * config.Ts * (0:config.N);
initial.mu = 0.9;

end
