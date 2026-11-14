function path = prepare_asm_reference(reference)
%PREPARE_ASM_REFERENCE Offline laneData.reference to numeric Simulink parameter.
% Run outside the MATLAB Function block, once per scenario. Returned values
% retain the reference earth frame; align ASM and reference BEFORE use.
names = {'station_m','X_m','Y_m','heading_rad','curvature_per_m','psi_pvr','vr'};
n = numel(reference.station_m);
assert(n >= 2,'ecu:ASMReference','Need at least two reference points.');
path = zeros(n,7);
for k = 1:7
    assert(isfield(reference,names{k}),'ecu:ASMReference','Missing %s.',names{k});
    values = reference.(names{k});
    assert(isvector(values) && numel(values) == n && isreal(values) && ...
        all(isfinite(values(:))),'ecu:ASMReference','Invalid %s.',names{k});
    path(:,k) = double(values(:));
end
assert(all(diff(path(:,1)) > 0),'ecu:ASMReference','Station must increase.');
assert(all(sum(diff(path(:,2:3)).^2,2)>1e-16), ...
    'ecu:ASMReference','Consecutive XY points must differ.');
path(:,4) = unwrap(path(:,4));
path(:,6) = unwrap(path(:,6));
end
