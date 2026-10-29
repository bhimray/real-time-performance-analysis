function dictionary = channel_dictionary()
%CHANNEL_DICTIONARY Describe array axes, units and their offline plot roles.

dictionary.schema_version = 1;
dictionary.orientation = 'Columns are samples; rows are state/input channels';

dictionary.plant_state.order = {'e', 'psi', 'v', 'vy', 'gamma', 'vx', 's'};
dictionary.plant_state.units = {'m', 'rad', 'm/s', 'm/s', 'rad/s', 'm/s', 'm'};
dictionary.plant_state.field = 'plant.state';
dictionary.plant_state.time_field = 'plant.time_s';
dictionary.plant_state.plot_id = 'plant_states';

dictionary.plant_input.order = {'Fx', 'Fy', 'Mz'};
dictionary.plant_input.units = {'N', 'N', 'N m'};
dictionary.plant_input.field = 'plant.input';
dictionary.plant_input.time_field = 'plant.time_s(1:end-1)';
dictionary.plant_input.convention = ...
    'Input column j acts between plant-state columns j and j+1';
dictionary.plant_input.plot_id = 'applied_inputs';

dictionary.trajectory.fields = {'plant.state(7,:)', 'plant.state(1,:)'};
dictionary.trajectory.axes = {'Station s [m]', 'Lateral error e [m]'};
dictionary.trajectory.plot_id = 'trajectory';

dictionary.controller_state.order = {'e', 'psi', 'v', 'vy', 'gamma'};
dictionary.controller_state.field = 'log.x';
dictionary.controller_state.time_field = 'log.t';
dictionary.controller_state.csv_columns = ...
    {'e_m', 'psi_rad', 'v_mps', 'vy_mps', 'gamma_radps'};

dictionary.solver.fields = {
    'log.sqp_iter', 'log.time_tot', 'log.active', 'log.slack_max'
};
dictionary.solver.units = {'iterations', 's', 'boolean', 'constraint units'};
dictionary.solver.time_field = 'log.t';
dictionary.solver.plot_id = 'solver_diagnostics';
dictionary.solver.time_display = 'log.time_tot multiplied by 1000 for ms';

dictionary.prediction_error.field = 'log.dx';
dictionary.prediction_error.definition = ...
    'Current x minus previous solution second state node';
dictionary.first_sample_unavailable = ...
    'Prediction error and previous-warm-start difference use NaN';

dictionary.active.order_per_stage = {'Fx', 'Fy', 'Mz', 'vy', 'gamma', ...
    'e', 'obstacle1', 'obstacle2'};
dictionary.active.layout = '8 rows per stage, stages 0:N-1, flattened by (:).';
dictionary.active.definition = 'Physical unrelaxed bounds within scaled 1e-4';

dictionary.csv_policy = ...
    'Scalar/control channels only; full predictions and histories are in MAT';

end
