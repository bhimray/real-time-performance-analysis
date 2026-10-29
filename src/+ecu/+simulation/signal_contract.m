function channels = signal_contract(config)
%SIGNAL_CONTRACT Stable analysis IDs mapped to Simulink logging paths.
% Paths start with a custom Dataset logging name, followed by bus leaves.
% Size zero means determined from the logged signal; never infer time by index.

arguments
    config (1,1) struct
end

% id, source, unit, components, rate, required profile, legacy MATLAB field.
rows = {
'vehicle.lateral_error','plant_state','m',7,'plant','debug','plant.state'
'controller.measurement.x','controller_measurements.x','mixed',5,'controller','debug','log.x'
'controller.measurement.vx','controller_measurements.vx','m/s',1,'controller','debug','log.vx'
'controller.measurement.s','controller_measurements.s','m',1,'controller','debug','log.s'
'command.candidate.Fx','command_candidate.Fx','N',1,'controller','debug','log.u_candidate'
'command.candidate.Fy','command_candidate.Fy','N',1,'controller','debug','log.u_candidate'
'command.candidate.Mz','command_candidate.Mz','N m',1,'controller','debug','log.u_candidate'
'command.applied.Fx','command_applied.Fx','N',1,'controller','debug','log.u_applied'
'command.applied.Fy','command_applied.Fy','N',1,'controller','debug','log.u_applied'
'command.applied.Mz','command_applied.Mz','N m',1,'controller','debug','log.u_applied'
'execution.cap','execution.cap','iterations',1,'controller','debug','log.cap'
'execution.enable','execution.enable','boolean',1,'controller','debug',''
'execution.reset','execution.reset','boolean',1,'controller','debug',''
'controller.solver.status','solver_outputs.solver_status','code',1,'controller','debug','log.status'
'controller.solver.iterations','solver_outputs.sqp_iter','iterations',1,'controller','debug','log.sqp_iter'
'controller.solver.cost','solver_outputs.cost_value','cost',1,'controller','research','log.cost'
'controller.solver.total_time','solver_outputs.CPU_time','s',1,'controller','research','log.time_tot'
'controller.solver.qp_time','solver_outputs.CPU_time_qp','s',1,'controller','research','log.time_qp'
'controller.solver.linearization_time','solver_outputs.CPU_time_lin','s',1,'controller','research','log.time_lin'
'controller.solver.residuals','solver_outputs.KKT_residuals','mixed',4,'controller','research',''
'controller.prediction.x','solver_outputs.xtraj','mixed',config.nx*(config.N+1),'controller','research',''
'controller.prediction.u','solver_outputs.utraj','mixed',config.nu*config.N,'controller','research',''
'controller.solver.slacks','solver_outputs.slack_values','mixed',0,'controller','research',''
'controller.solver.qp_history','solver_outputs.qp_iteration_history','iterations',config.max_iter+1,'controller','research',''
'controller.solver.residual_history','solver_outputs.residual_history','mixed',4*(config.max_iter+1),'controller','research',''
'controller.solver.history_length','solver_outputs.history_length','records',1,'controller','research',''
'controller.solver.lam_stage0','solver_outputs.lam_stage0','mixed',0,'controller','research',''
'controller.step_time','controller_step_time','s',1,'controller','optional','log.controller_step_time'
'replay.x_init','replay.x_init','mixed',config.nx*(config.N+1),'controller','research',''
'replay.u_init','replay.u_init','mixed',config.nu*config.N,'controller','research',''
'replay.parameters','replay.parameter_traj','mixed',config.np*(config.N+1),'controller','research',''
'replay.lbx0','replay.lbx_0','mixed',config.nx,'controller','research',''
'replay.ubx0','replay.ubx_0','mixed',config.nx,'controller','research',''
'replay.lh','replay.lh','mixed',0,'controller','research',''
'replay.uh','replay.uh','mixed',0,'controller','research',''
'replay.lh0','replay.lh_0','mixed',0,'controller','research',''
'replay.uh0','replay.uh_0','mixed',0,'controller','research',''
};
channels = cell2table(rows, VariableNames= ...
    {'id','source','unit','components','rate','requirement','legacy'});
if iscell(channels.components)
    channels.components = cell2mat(channels.components);
end
channels.component = zeros(height(channels),1);
channels.component(1) = 1; % Expose e while retaining full plant vector separately.

% Additional components from the same plant and controller vector.
plantNames = {'heading_error','speed_error','lateral_velocity','yaw_rate','longitudinal_velocity','station'};
plantUnits = {'rad','m/s','m/s','rad/s','m/s','m'};
for index = 2:7
    item = channels(1,:);
    item.id = {['vehicle.',plantNames{index-1}]};
    item.unit = plantUnits(index-1);
    item.component = index;
    channels = [channels; item]; %#ok<AGROW>
end
item = channels(2,:);
item.id = {'controller.measurement.e'};
item.unit = {'m'};
item.component = 1;
channels = [channels; item];
item = channels(1,:);
item.id = {'vehicle.state'};
item.unit = {'mixed'};
item.component = 0;
channels = [channels; item];
for index = 5:10
    channels.component(index) = mod(index-5,3)+1;
    % Individual command leaves are already scalar in Simulink.
end
end
