function test_prepare_asm_horizon()
% Verify the saved ASM port layout and the straight/curved parameter output.
root = fileparts(fileparts(mfilename('fullpath')));
addpath(fullfile(root,'src'), fullfile(root,'config'), ...
    fullfile(root,'scripts','integration','asm'));
cfg = controller_config();
inst = ecu.scenario.gen_instance(1,1);
s = 50;
vx = 23;
vr = 24;
d = [16;24;32;40;48;56;64;0;80;100;zeros(5,1)];
preview = [vr;99;zeros(15,1);d;(1:10).'];
traffic = zeros(30,4);
traffic([2 7],:) = [0,84,1,72; 3.75,74,1,36];
X = zeros(5,41);
X(3,1:40) = linspace(0,2,40);
P = horizon_prep_asm(s,vx,preview,traffic(:),X(:),cfg,inst);
assert(isequal(size(P),[19 41]));
assert(all(P(1,:)==vx) && all(P(8,:)==vr));
assert(all(P(3:7,:)==0,'all') && all(P(9,:)==0));
assert(max(abs(P(2,:) - (s+[0,cumsum(cfg.Ts*(vr+X(3,1:40)))])))<1e-10);
assert(max(abs(P(10,:) - (84+20*(0:40)*cfg.Ts)))<1e-10);
assert(max(abs(P(14,:) - (74+10*(0:40)*cfg.Ts)))<1e-10);
assert(isequal(P([11 15],1),[0;3.75]));
assert(isequal(P([12 13],1),inst.obstacle_geometry.safety_semi_axes_m(:)));
assert(isequal(P(18:19,1),inst.road.bounds_m(:)));

k0 = 0.001;
dk = 0.0002;
preview(3:17) = k0+dk*d;
P = horizon_prep_asm(s,vx,preview.',traffic(:).',X(:),cfg,inst);
vehicle = cfg.vehicle;
A = -vehicle.lr+vehicle.m*vehicle.lf*vr^2 ...
    /(2*vehicle.Cy*(vehicle.lf+vehicle.lr));
assert(max(abs(P(4,:) - (k0+dk*(P(2,:)-s))))<1e-10);
assert(max(abs(P(6,:) - dk))<1e-10);
assert(max(abs(P(3,:) - A*P(4,:)))<1e-10);
assert(max(abs(P(5,:) - A*dk))<1e-10 && max(abs(P(7,:)))<1e-10);

short = preview;
short(18:32) = d/10;
short(3:17) = 0;
must_error(@() horizon_prep_asm(s,vx,short,traffic(:),X(:),cfg,inst));
traffic(8,3) = 1;
must_error(@() horizon_prep_asm(s,vx,preview,traffic(:),X(:),cfg,inst));
disp('ASM horizon tests passed.');
end

function must_error(action)
try
    action();
catch
    return
end
error('Expected an explicit ASM horizon error.');
end
