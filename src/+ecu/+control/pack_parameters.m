function parameters = pack_parameters(stage)
%PACK_PARAMETERS Convert named stage signals into the A5 parameter vector.
%
%   STAGE has scalar fields vx, s, psi_pvr, dpsi_pr, dpsi_pvr, ddpsi_pr,
%   ddpsi_pvr, vr, dvr, emin and emax.
%
%   STAGE.obstacles is 4-by-2. Each obstacle column contains:
%     [station; lateral_position; lateral_semi_axis; longitudinal_semi_axis]
%
%   Call this function once per node to assemble a 19-by-(N+1) trajectory.

%% Pack the nine speed and path entries

index = ecu.control.parameter_layout();
parameters = zeros(19, 1);

pathFieldNames = index.names(1:9);

for entry = 1:numel(pathFieldNames)
    fieldName = pathFieldNames{entry};

    validateattributes(stage.(fieldName), {'double'}, ...
        {'scalar', 'real', 'finite'});

    parameters(entry) = stage.(fieldName);
end

%% Pack obstacle geometry and road bounds

validateattributes(stage.obstacles, {'double'}, ...
    {'size', [4, 2], 'real', 'finite'});

parameters(index.obstacle1) = stage.obstacles(:, 1);
parameters(index.obstacle2) = stage.obstacles(:, 2);
parameters(index.emin) = stage.emin;
parameters(index.emax) = stage.emax;

%% Check the completed vector

assert(all(isfinite(parameters)));
assert(parameters(index.vx) > 0);
assert(parameters(index.emin) < parameters(index.emax));
assert(all(stage.obstacles(3:4, :) > 0, 'all'));

end
