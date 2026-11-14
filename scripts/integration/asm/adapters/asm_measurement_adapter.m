function measurement = asm_measurement_adapter(kinematicsSI, vehicleXY, referenceSI)
%#codegen
% kinematicsSI = [vx; vy; vehicle yaw; yaw rate].
% vehicleXY = [vehicle east X; vehicle east Y] in metres.
% referenceSI = [road X; road Y; station; road heading; curvature; psi_pvr; vr].
% The road point is the current projection on the fixed reference line.

vx = kinematicsSI(1);
vy = kinematicsSI(2);
r = kinematicsSI(4);
heading = referenceSI(4);
theta = kinematicsSI(3) - heading;

dx = vehicleXY(1) - referenceSI(1);
dy = vehicleXY(2) - referenceSI(2);
e = -sin(heading)*dx + cos(heading)*dy;
psi = theta - referenceSI(6);
psi = atan2(sin(psi), cos(psi));
sDot = (vx*cos(theta) - vy*sin(theta))/(1 - referenceSI(5)*e);
v = sDot - referenceSI(7);

measurement = struct('x', [e; psi; v; vy; r], 'vx', vx, 's', referenceSI(3));
end
