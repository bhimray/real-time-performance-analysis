function [X,Y] = road_to_global(station, lateral, curvature)
%ROAD_TO_GLOBAL Map A6 constant-curvature road coordinates to world X/Y.
% Reference starts at (0,0) with heading zero, matching scenario.path_signals.
% Positive lateral offset follows the reference's left normal.
arguments
    station double {mustBeFinite}
    lateral double {mustBeFinite}
    curvature (1,1) double {mustBeFinite}
end
heading=curvature.*station;
if curvature==0
    referenceX=station;
    referenceY=zeros(size(station));
else
    referenceX=sin(heading)./curvature;
    referenceY=(1-cos(heading))./curvature;
end
X=referenceX-lateral.*sin(heading);
Y=referenceY+lateral.*cos(heading);
end
