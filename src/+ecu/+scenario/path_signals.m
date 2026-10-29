function signals = path_signals(instance, station, vehicle)
%PATH_SIGNALS Evaluate A3 path/reference quantities for the A6 families.
%
%   All A6 paths have constant curvature and constant reference speed.
%   The display coordinate origin is (0,0), with initial heading zero.
%   This origin is a coordinate convention, not a randomized scenario value.
%
%   STATION may be scalar or vector. Path positions describe the reference
%   center line, not a simulated ego trajectory.

validateattributes(station, {'double'}, ...
    {'vector', 'nonempty', 'real', 'finite'});

station = station(:).';

curvature = instance.road.curvature_per_m;
referenceSpeed = instance.reference.speed_mps;

%% Reference heading and display position

signals.s = station;
signals.heading_rad = curvature * station;

if curvature == 0
    signals.X_m = station;
    signals.Y_m = zeros(size(station));
else
    signals.X_m = sin(curvature * station) / curvature;
    signals.Y_m = (1 - cos(curvature * station)) / curvature;
end

%% A3 steady-state sideslip correction

sideslipCorrection = -vehicle.lr * curvature ...
    + vehicle.m * vehicle.lf * referenceSpeed^2 * curvature ...
    / (2 * vehicle.Cy * (vehicle.lf + vehicle.lr));

signals.psi_pvr = sideslipCorrection * ones(size(station));
signals.dpsi_pr = curvature * ones(size(station));
signals.dpsi_pvr = zeros(size(station));
signals.ddpsi_pr = zeros(size(station));
signals.ddpsi_pvr = zeros(size(station));
signals.vr = referenceSpeed * ones(size(station));
signals.dvr = zeros(size(station));

end
