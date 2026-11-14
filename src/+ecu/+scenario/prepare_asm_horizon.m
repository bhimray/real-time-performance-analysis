function parameters = prepare_asm_horizon( ...
    measuredStation, measuredLongitudinalSpeed, previousSpeedErrors, ...
    controllerConfig, previewDistances, previewCurvature, previewOriginStation, ...
    vr, actors, roadBounds, safetyAxes)
%#codegen
% Build 41 solver nodes from the ASM snapshot and longitudinal road preview.
% actors(:,i) = [station; lateral error; forward station speed].
% Current maneuver target and fellow station speeds are held over the horizon.

assert(controllerConfig.N==40 && controllerConfig.np==19 && controllerConfig.nx==5, ...
    'ASM horizon requires the five-state, N=40, np=19 solver.');
validateattributes(previewDistances,{'double'},{'vector','numel',15,'real','finite'});
validateattributes(previewCurvature,{'double'},{'vector','numel',15,'real','finite'});

idx = ecu.control.parameter_layout();
Ts = controllerConfig.Ts;
predictionTime = (0:40)*Ts;
station = measuredStation + [0, cumsum(Ts*(vr + reshape(previousSpeedErrors,1,40)))];

parameters = zeros(19,41); % number of variables X number of prediction steps
parameters(idx.vx,:) = measuredLongitudinalSpeed;
parameters(idx.s,:) = station;
parameters(idx.vr,:) = vr;
parameters(idx.obstacle1,:) = [actors(1,1) + actors(3,1)*predictionTime; ...
    repmat([actors(2,1); safetyAxes(:)],1,41)];
parameters(idx.obstacle2,:) = [actors(1,2) + actors(3,2)*predictionTime; ...
    repmat([actors(2,2); safetyAxes(:)],1,41)];
parameters(idx.emin,:) = roadBounds(1);
parameters(idx.emax,:) = roadBounds(2);

% Sort paired curvature/distance values; the first 15 can contain padding
% or repeated zero distances. Zero CURVATURE itself is always legitimate.
knots = zeros(15,1);
values = zeros(15,1);
for i=1:15
    knots(i) = previewDistances(i);
    values(i) = previewCurvature(i);
end
for i=2:15
    x=knots(i); y=values(i); j=i-1;
    while j>=1
        if knots(j)<=x
            break
        end
        knots(j+1)=knots(j); values(j+1)=values(j);
        j=j-1;
    end
    knots(j+1)=x; values(j+1)=y;
end
distanceTolerance = 1e-8*max(1.0,knots(15)-knots(1));
count = 1;
for i=2:15
    if knots(i)-knots(count)<=distanceTolerance
        curvatureTolerance=1e-8*max(1.0,max(abs(values(i)),abs(values(count))));
        assert(abs(values(i)-values(count))<=curvatureTolerance, ...
            'ASM gives inconsistent curvature at duplicate preview distances. Check lane/grid pairing.');
    else
        count=count+1;
        knots(count)=knots(i); values(count)=values(i);
    end
end
assert(count>=2, 'ASM preview needs at least two distinct curvature distances.');

% Natural cubic spline: solve the small tridiagonal system for kappa''.
% Fixed 15-element storage is compatible with the current ASM/codegen sizes.
lower=zeros(15,1); diagonal=ones(15,1); upper=zeros(15,1); rhs=zeros(15,1);
for i=2:count-1
    h0=knots(i)-knots(i-1); h1=knots(i+1)-knots(i);
    lower(i)=h0; diagonal(i)=2*(h0+h1); upper(i)=h1;
    rhs(i)=6*((values(i+1)-values(i))/h1-(values(i)-values(i-1))/h0);
end
for i=2:count
    factor=lower(i)/diagonal(i-1);
    diagonal(i)=diagonal(i)-factor*upper(i-1);
    rhs(i)=rhs(i)-factor*rhs(i-1);
end
second=zeros(15,1);
second(count)=rhs(count)/diagonal(count);
for i=count-1:-1:1
    second(i)=(rhs(i)-upper(i)*second(i+1))/diagonal(i);
end

vehicle=controllerConfig.vehicle;
assert(all(isfinite([vehicle.m;vehicle.lf;vehicle.lr;vehicle.Cy;vr])) && ...
    all([vehicle.m;vehicle.lf;vehicle.lr;vehicle.Cy;vr]>0), ...
    'ASM reference requires positive finite vehicle parameters and reference speed.');
betaCoefficient=-vehicle.lr+vehicle.m*vehicle.lf*vr^2 ...
    /(2*vehicle.Cy*(vehicle.lf+vehicle.lr));

for column=1:41
    query=parameters(2,column)-previewOriginStation;
    tolerance=64*eps(max(1.0,max(abs(query),max(abs(knots(1)),abs(knots(count))))));
    assert(query>=knots(1)-tolerance && query<=knots(count)+tolerance, ...
        'ASM curvature preview does not cover the NMPC horizon. Increase preview range or fix station alignment.');
    % Only roundoff at an otherwise covered boundary is adjusted.
    query=min(knots(count),max(knots(1),query));
    interval=count-1;
    for i=1:count-1
        if query<=knots(i+1)
            interval=i;
            break
        end
    end
    i=interval;
    h=knots(i+1)-knots(i);
    a=(knots(i+1)-query)/h;
    b=(query-knots(i))/h;
    kappa=a*values(i)+b*values(i+1) ...
        +((a^3-a)*second(i)+(b^3-b)*second(i+1))*h^2/6;
    kappaPrime=(values(i+1)-values(i))/h ...
        +h*(-(3*a^2-1)*second(i)+(3*b^2-1)*second(i+1))/6;
    kappaSecond=a*second(i)+b*second(i+1);

    % Existing A5 parameter layout: beta, kappa, beta', kappa', beta'', vr, vr'.
    parameters(3,column)=betaCoefficient*kappa;
    parameters(4,column)=kappa;
    parameters(5,column)=betaCoefficient*kappaPrime;
    parameters(6,column)=kappaPrime;
    parameters(7,column)=betaCoefficient*kappaSecond;
end
assert(all(isfinite(parameters(:))), 'ASM horizon calculation produced a nonfinite value.');
end
