function parameters = pack_parameters(stage)
%PACK_PARAMETERS Pack the fixed A5 layout without cell-array field lookup.
%#codegen
% Order: nine path scalars, two four-entry obstacles, two road bounds.
validateattributes(stage.vx, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.s, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.psi_pvr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.dpsi_pr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.dpsi_pvr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.ddpsi_pr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.ddpsi_pvr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.vr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.dvr, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.obstacles, {'double'}, ...
    {'size', [4, 2], 'real', 'finite'});
validateattributes(stage.emin, {'double'}, {'scalar', 'real', 'finite'});
validateattributes(stage.emax, {'double'}, {'scalar', 'real', 'finite'});

parameters = [stage.vx; stage.s; stage.psi_pvr; stage.dpsi_pr; ...
    stage.dpsi_pvr; stage.ddpsi_pr; stage.ddpsi_pvr; stage.vr; stage.dvr; ...
    stage.obstacles(:, 1); stage.obstacles(:, 2); stage.emin; stage.emax];
assert(all(isfinite(parameters)));
assert(stage.vx > 0);
assert(stage.emin < stage.emax);
assert(all(stage.obstacles(3:4, :) > 0, 'all'));
end
