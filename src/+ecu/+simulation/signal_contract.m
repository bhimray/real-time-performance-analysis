function channels = signal_contract(config)
%SIGNAL_CONTRACT Stable analysis IDs mapped to Simulink logging paths.
% Sources match the harness logs: opt_cmd (pre-delay) and telemetry.
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
'command.candidate.Fx','opt_cmd.Fx','N',1,'controller','debug','log.u_candidate'
'command.candidate.Fy','opt_cmd.Fy','N',1,'controller','debug','log.u_candidate'
'command.candidate.Mz','opt_cmd.Mz','N m',1,'controller','debug','log.u_candidate'
'command.applied.Fx','command_applied.Fx','N',1,'controller','debug','log.u_applied'
'command.applied.Fy','command_applied.Fy','N',1,'controller','debug','log.u_applied'
'command.applied.Mz','command_applied.Mz','N m',1,'controller','debug','log.u_applied'
'execution.cap','execution.cap','iterations',1,'controller','debug','log.cap'
'execution.enable','execution.enable','boolean',1,'controller','debug',''
'execution.reset','execution.reset','boolean',1,'controller','debug',''
'controller.solver.status','telemetry.solver_status','code',1,'controller','debug','log.status'
'controller.solver.iterations','telemetry.sqp_iter','iterations',1,'controller','debug','log.sqp_iter'
'controller.solver.cost','telemetry.cost_value','cost',1,'controller','research','log.cost'
'controller.solver.total_time','telemetry.cpu_time','s',1,'controller','research','log.time_tot'
'controller.solver.qp_time','telemetry.cpu_time_qp','s',1,'controller','research','log.time_qp'
'controller.solver.linearization_time','telemetry.cpu_time_lin','s',1,'controller','research','log.time_lin'
'controller.solver.residuals','telemetry.kkt_residuals','mixed',4,'controller','research',''
'controller.prediction.x','telemetry.xtraj','mixed',config.nx*(config.N+1),'controller','research',''
'controller.prediction.u','telemetry.utraj','mixed',config.nu*config.N,'controller','research',''
'controller.solver.slacks','telemetry.slack_values','mixed',0,'controller','research',''
'controller.solver.qp_history','telemetry.qp_iteration_history','iterations',config.max_iter+1,'controller','research',''
'controller.solver.residual_history','telemetry.residual_history','mixed',4*(config.max_iter+1),'controller','research',''
'controller.solver.history_length','telemetry.history_length','records',1,'controller','research',''
'controller.solver.lam_stage0','telemetry.lam_stage0','mixed',0,'controller','research',''
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

