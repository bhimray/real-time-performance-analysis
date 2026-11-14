function projection = project_to_reference(positionXY, path, history, reset, limits)
%#codegen
%PROJECT_TO_REFERENCE Local projection onto a sampled OPEN controller path.
% positionXY: CoG [X;Y] [m], already in the path's earth frame.
% path: fixed-size N-by-7 double [s X Y heading kappa psi_pvr vr], SI.
% Heading and psi_pvr columns must be unwrapped before entering the block.
% history: [last_valid_s; initialized_0_or_1], supplied through a Unit Delay.
% limits: [search_half_width_m; D_min; max_distance_m; tangent_tolerance_m].
% Reset/uninitialized uses a global search on this single open route.
% Geometry between samples is piecewise linear; the Frenet equation in the
% measurement adapter is exact algebra, but sampled projection is numerical.

projection = struct('s',NaN,'e',NaN,'heading',NaN,'kappa',NaN, ...
    'psi_pvr',NaN,'vr',NaN,'distance',Inf,'tangent_residual',NaN, ...
    'segment',0.0,'valid',false);
if size(path,2) ~= 7 || size(path,1) < 2
    return
end
if ~all(isfinite(positionXY)) || ~all(isfinite(path(:))) || ...
        ~all(isfinite(limits)) || limits(1) <= 0 || limits(2) <= 0 || ...
        limits(3) <= 0 || limits(4) < 0
    return
end
n = size(path,1);
if any(diff(path(:,1)) <= 0)
    return
end
lower = path(1,1);
upper = path(n,1);
if ~reset && history(2) == 1
    if ~isfinite(history(1)) || history(1) < lower || history(1) > upper
        return
    end
    lower = max(lower,history(1)-limits(1)); % to keep moving forward or previous traveled path must be less than future one.
    upper = min(upper,history(1)+limits(1));
end
bestDistanceSquared = Inf;
bestSegment = 0;
bestFraction = 0.0;
for i = 1:n-1
    s0 = path(i,1);
    s1 = path(i+1,1);
    if s1 < lower || s0 > upper
        continue
    end
    dx = path(i+1,2)-path(i,2);
    dy = path(i+1,3)-path(i,3);
    lengthSquared = dx*dx+dy*dy;
    if lengthSquared <= 1e-16
        continue
    end
    fraction = ((positionXY(1)-path(i,2))*dx ...
        +(positionXY(2)-path(i,3))*dy)/lengthSquared;
    minFraction = max(0.0,(lower-s0)/(s1-s0));
    maxFraction = min(1.0,(upper-s0)/(s1-s0));
    fraction = min(maxFraction,max(minFraction,fraction));
    ex = positionXY(1)-(path(i,2)+fraction*dx);
    ey = positionXY(2)-(path(i,3)+fraction*dy);
    distanceSquared = ex*ex+ey*ey;
    if distanceSquared < bestDistanceSquared
        bestDistanceSquared = distanceSquared;
        bestSegment = i;
        bestFraction = fraction;
    end
end
if bestSegment == 0
    return
end
i = bestSegment;
sample = path(i,:)+bestFraction*(path(i+1,:)-path(i,:));
dx = positionXY(1)-sample(2);
dy = positionXY(2)-sample(3);
projection.s = sample(1);
projection.heading = sample(4);
projection.kappa = sample(5);
projection.psi_pvr = sample(6);
projection.vr = sample(7);
projection.e = -sin(sample(4))*dx+cos(sample(4))*dy;
projection.distance = sqrt(bestDistanceSquared);
projection.tangent_residual = cos(sample(4))*dx+sin(sample(4))*dy;
projection.segment = double(i);
% Reject longitudinal overrun at route/search ends rather than pretending
% an endpoint clamp is a valid perpendicular projection.
projection.valid = projection.distance <= limits(3) && ...
    abs(projection.tangent_residual) <= limits(4);
end
