function options = simulink_options()
%SIMULINK_OPTIONS Define the optional generated S-function interface.
%
%   This function changes interface settings only. Automatic creation of
%   Simulink blocks/models is disabled; the user owns model construction.

options = get_acados_simulink_opts();

%% Disable defaults so the interface is completely explicit

inputNames = fieldnames(options.inputs);

for input = 1:numel(inputNames)
    options.inputs.(inputNames{input}) = 0;
end

outputNames = fieldnames(options.outputs);

for output = 1:numel(outputNames)
    options.outputs.(outputNames{output}) = 0;
end

%% Enable measurements, horizon parameters, bounds and primal guesses

enabledInputs = {
    'lbx_0', 'ubx_0', 'parameter_traj', ...
    'lh_0', 'uh_0', 'lh', 'uh', 'x_init', 'u_init'
};

for input = 1:numel(enabledInputs)
    options.inputs.(enabledInputs{input}) = 1;
end

%% Enable solution trajectories and available solver diagnostics

enabledOutputs = {
    'u0', 'utraj', 'xtraj', 'solver_status', 'cost_value', ...
    'KKT_residuals', 'x1', 'CPU_time', 'CPU_time_qp', ...
    'CPU_time_lin', 'sqp_iter', 'slack_values'
};

for output = 1:numel(enabledOutputs)
    options.outputs.(enabledOutputs{output}) = 1;
end

%% Sampling and model-creation policy

options.samplingtime = 't0';
options.generate_simulink_block = 1;
options.show_port_info = 1;

end
