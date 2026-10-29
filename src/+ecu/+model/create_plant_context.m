function context = create_plant_context(laneData, config)
%CREATE_PLANT_CONTEXT Prepare the constant A6 model terms outside integration.
%
%   A6 has constant curvature and reference speed. Cache those terms once
%   rather than interpolating a 50,001-point table at every RK4 substage.
%   vx and station are still updated from the current seven-state plant.
%
%   The saved lane data must have been built for the same vehicle values.

assert(isequaln(laneData.vehicle, config.vehicle), ...
    'ecu:PlantVehicleMismatch', ...
    'Saved reference and controller vehicle parameters differ.');

constantFields = {
    'psi_pvr', 'dpsi_pr', 'dpsi_pvr', ...
    'ddpsi_pr', 'ddpsi_pvr', 'vr', 'dvr'
};

for fieldIndex = 1:numel(constantFields)
    fieldName = constantFields{fieldIndex};
    values = laneData.reference.(fieldName);

    assert(all(values == values(1)), ...
        'ecu:PlantPathNotConstant', ...
        'This A6 plant context requires constant %s.', fieldName);
end

context.config = config;
context.rhs = @ecu.model.plant_rhs;
context.index = ecu.control.parameter_layout();
context.parameter_template = zeros(config.np, 1);

for fieldIndex = 1:numel(constantFields)
    fieldName = constantFields{fieldIndex};
    parameterIndex = context.index.(fieldName);

    context.parameter_template(parameterIndex) = ...
        laneData.reference.(fieldName)(1);
end

context.station_min_m = laneData.reference.station_m(1);
context.station_max_m = laneData.reference.station_m(end);
context.state_names = {'e', 'psi', 'v', 'vy', 'gamma', 'vx', 's'};
context.input_names = {'Fx', 'Fy', 'Mz'};

% Obstacle parameters are not needed by the dynamics. Collision checking
% belongs to the experiment runner, using the actual A6 obstacle motion.

end
