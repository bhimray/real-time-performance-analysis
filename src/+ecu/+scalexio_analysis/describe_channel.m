function [name,group,unit]=describe_channel(raw,path)
%DESCRIBE_CHANNEL Human-readable names for the project's ControlDesk export.
% Source indices are zero-based. Prediction names use colNN deliberately:
% warm_start columns are shifted, so col00 must not be called raw MPC node 0.
states=["lateral_error_m","heading_error_rad","speed_error_mps","lateral_velocity_mps","yaw_rate_radps"];
stateUnits=["m","rad","m/s","m/s","rad/s"];
inputs=["Fx_N","Fy_N","Mz_Nm"]; inputUnits=["N","N","N*m"];
constraints=["lateral_velocity","yaw_rate","lateral_error","obstacle1","obstacle2"];
constraintUnits=["m/s","rad/s","m","1","1"];
params=["vx_mps","ego_station_m","psi_pvr_rad","kappa_per_m","dpsi_pvr_per_m", ...
    "dkappa_per_m2","ddpsi_pvr_per_m2","reference_speed_mps","dvr_per_s", ...
    "fellow1_station_m","fellow1_offset_m","fellow1_lateral_axis_m","fellow1_longitudinal_axis_m", ...
    "fellow2_station_m","fellow2_offset_m","fellow2_lateral_axis_m","fellow2_longitudinal_axis_m", ...
    "road_lower_m","road_upper_m"];
paramUnits=["m/s","m","rad","1/m","1/m","1/m^2","1/m^2","m/s","1/s",repmat("m",1,10)];
leaf=regexp(char(path),'[^/]+$','match','once');
name="other_"+string(leaf)+"_"+raw; group="Other recorded channels"; unit="";
indices=regexp(char(raw),'\[(\d+)\]','tokens');
idx=cellfun(@(x) str2double(x{1}),indices);
base=regexprep(raw,'\[.*$','');

if endsWith(path,"/horizon_prep") && base=="P" && numel(idx)==2
    name="p_"+params(idx(1)+1)+"_n"+compose('%02d',idx(2));
    group="Horizon parameters"; unit=paramUnits(idx(1)+1);
elseif endsWith(path,"/assemble_problem") && startsWith(base,"solverInputs.") && numel(idx)==1
    field=extractAfter(base,"solverInputs."); i=idx(1);
    if ismember(field,["lbx_0","ubx_0"])
        if field=="lbx_0", name=states(i+1); group="Measured state";
        else, name="bound_x0_upper_"+states(i+1); group="State bounds"; end
        unit=stateUnits(i+1);
    elseif field=="parameter_traj"
        row=mod(i,19)+1; node=floor(i/19);
        name="solver_p_"+params(row)+"_n"+compose('%02d',node);
        group="Solver parameter input"; unit=paramUnits(row);
    elseif ismember(field,["x_init","u_init"])
        if field=="x_init", labels=states; units=stateUnits; width=5; stem="warm_guess_x_";
        else, labels=inputs; units=inputUnits; width=3; stem="warm_guess_u_"; end
        row=mod(i,width)+1;
        name=stem+labels(row)+"_col"+compose('%02d',floor(i/width));
        group="Solver initial guess"; unit=units(row);
    elseif ismember(field,["lh","uh","lh_0","uh_0"])
        side="lower"; if startsWith(field,"u"), side="upper"; end
        node=0; if ~endsWith(field,"_0"), node=floor(i/5)+1; end
        row=mod(i,5)+1;
        name="bound_"+side+"_"+constraints(row)+"_n"+compose('%02d',node);
        group="Nonlinear constraint bounds"; unit=constraintUnits(row);
    end
elseif (endsWith(path,"/warm_start") || endsWith(path,"/warm_start/MATLAB Function")) && numel(idx)==2
    if ismember(base,["x_pred","nextX"]), labels=states; units=stateUnits; stem="x_";
    elseif ismember(base,["u_pred","nextU"]), labels=inputs; units=inputUnits; stem="u_";
    else, return; end
    prefix="shifted_"; group="Shifted predictions";
    if ismember(base,["nextX","nextU"]), prefix="warm_next_"; group="Warm-start output aliases"; end
    name=prefix+stem+labels(idx(1)+1)+"_col"+compose('%02d',idx(2)); unit=units(idx(1)+1);
elseif contains(path,"/telemetry_unwrapped/")
    leaf=extractAfter(path,"/telemetry_unwrapped/");
    if leaf=="slack_values" && numel(idx)==1
        i=idx(1); row=mod(i,5)+1; side="lower"; if mod(i,10)>=5, side="upper"; end
        name="slack_"+side+"_"+constraints(row)+"_n"+compose('%02d',floor(i/10));
        group="Constraint slack"; unit=constraintUnits(row);
    elseif leaf=="residual_history" && numel(idx)==2
        labels=["stationarity","equality","inequality","complementarity"];
        name="solver_res_"+labels(idx(1)+1)+"_it"+compose('%03d',idx(2));
        group="Solver residual history";
    elseif leaf=="qp_iteration_history" && numel(idx)==1
        name="solver_qp_iterations_it"+compose('%03d',idx(1)); group="QP iteration history"; unit="1";
    elseif leaf=="lam_stage0" && numel(idx)==1
        name="solver_lam_stage0_i"+compose('%02d',idx(1)); group="Stage-zero multipliers";
    elseif leaf=="kkt_residuals" && numel(idx)==1
        labels=["stationarity","equality","inequality","complementarity"];
        name="solver_kkt_"+labels(idx(1)+1); group="KKT residuals";
    elseif isempty(idx)
        name=leaf; if ~startsWith(name,"solver_"), name="solver_"+name; end
        group="Solver diagnostics";
        if endsWith(leaf,"_s"), unit="s";
        elseif ismember(leaf,["solver_status","sqp_iterations","history_length"]), unit="1"; end
    end
elseif endsWith(path,"/Fellow") && base=="signal1" && numel(idx)==1
    labels=["offset_m","station_m","active","speed_kph"]; units=["m","m","1","km/h"];
    row=floor(idx(1)/30)+1;
    name="traffic_slot"+compose('%02d',mod(idx(1),30)+1)+"_"+labels(row);
    group="Traffic slots"; unit=units(row);
elseif path=="Tunable Parameters"
    if base=="roadFamilyData" && numel(idx)==2
        labels=["curvature_per_m","reference_speed_mps","road_lower_m","road_upper_m", ...
            "safety_lateral_axis_m","safety_longitudinal_axis_m"];
        units=["1/m","m/s","m","m","m","m"];
        name="road_f"+(idx(2)+1)+"_"+labels(idx(1)+1); unit=units(idx(1)+1);
        group="Road parameters";
    elseif raw=="roadFamilyId"
        name="road_family_id"; group="Road parameters"; unit="1";
    end
elseif endsWith(path,"/controller_subsys") && base=="command_Outport_1" && numel(idx)==1
    name="cmd_"+inputs(idx(1)+1); group="Controller wrench request"; unit=inputUnits(idx(1)+1);
elseif endsWith(path,"/cmd_hold_n_validity")
    canonical=regexprep(raw,'\(\d+\)$','');
    alias=regexp(char(raw),'\((\d+)\)$','tokens','once');
    torque=regexp(char(canonical),'^(drive|brake)_torque_Nm\[([0-3])\]$','tokens','once');
    if ~isempty(torque)
        wheels=["FL","FR","RL","RR"];
        name="cmd_"+string(torque{1})+"_"+wheels(str2double(torque{2})+1)+"_Nm";
        group="Actuator command"; unit="N*m";
        if ~isempty(alias)
            name=name+"_alias"+string(alias{1}); group="Actuator command aliases";
        end
    elseif raw=="deltaF_cmd"
        name="cmd_road_wheel_angle_rad"; group="Actuator command"; unit="rad";
    elseif raw=="deltaF_cmd_deg"
        name="cmd_road_wheel_angle_deg"; group="Actuator command"; unit="deg";
    elseif raw=="steering_wheel_deg"
        name="cmd_steering_wheel_deg"; group="Actuator command"; unit="deg";
    end
elseif endsWith(path,"/V_XY") && numel(idx)==1
    labels=["ego_x_controller_m","ego_y_controller_m"];
    name=labels(idx(1)+1); group="Controller position snapshot"; unit="m";
elseif contains(path,"Simulation and RTOS/Task Information Variables/")
    task=regexp(char(path),'Task Information Variables/Periodic Task (\d+)(?:/|$)','tokens','once');
    if isempty(task), return; end
    if raw=="Overrun Count", label="overrun_count"; unit="1";
    elseif raw=="Task Call Counter", label="call_counter"; unit="1";
    elseif raw=="Task Turnaround Time", label="turnaround_time_s"; unit="s";
    elseif ismember(raw,["Max Task Turnaround Time","Maximum Task Turnaround Time"])
        label="max_turnaround_time_s"; unit="s";
    else
        runnable=regexp(char(raw), ...
            '^(?:(Max|Maximum) )?Turnaround Time - Runnable Function (\d+)(?: \[Periodic Task \d+\])?$', ...
            'tokens','once');
        if isempty(runnable), return; end
        % The enclosing path identifies the task; the bracketed label can be stale.
        label="runnable"+string(runnable{end})+"_";
        if numel(runnable)>1 && ~isempty(runnable{1}), label=label+"max_"; end
        label=label+"turnaround_time_s"; unit="s";
    end
    name="task"+string(task{1})+"_"+label; group="RTOS diagnostics";
elseif raw=="Out1"
    if endsWith(path,"/Pos_x_Vehicle_CoorSys_E[m]"), name="ego_x_m"; unit="m";
    elseif endsWith(path,"/Pos_y_Vehicle_CoorSys_E[m]"), name="ego_y_m"; unit="m";
    elseif endsWith(path,"/Pos_z_Vehicle_CoorSys_E[m]"), name="ego_z_m"; unit="m";
    elseif endsWith(path,"/s_Vehicle[m]"), name="ego_s_vehicle_m"; unit="m";
    elseif endsWith(path,"/v_x_Vehicle_CoG[km|h]"), name="ego_vx_kph"; unit="km/h";
    elseif endsWith(path,"/ManeuverState[]"), name="maneuver_state"; unit="1";
    else, return; end
    group="Plant measurements";
end
end
