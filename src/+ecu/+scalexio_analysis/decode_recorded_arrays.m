function record=decode_recorded_arrays(record,step,controllerPeriod)
%DECODE_RECORDED_ARRAYS Restore project arrays by their explicit source indices.
% Native tables remain authoritative. These views do not resample signals.
% Current model: nx=5, nu=3, np=19, N=40, five nonlinear constraints.
if nargin<3, controllerPeriod=NaN; end
assert(isscalar(controllerPeriod) && isreal(controllerPeriod) && ...
    (isnan(controllerPeriod) || (isfinite(controllerPeriod) && controllerPeriod>0)), ...
    'ecu:RecordingControllerPeriod','Controller period must be positive and finite, or NaN.');
d=record.channelDictionary;
record.horizon=struct('Available',false,'Reason',"Complete prediction channels were not recorded.");
record.traffic=struct('Available',false);
record.solverHistory=struct('Available',false);
record.timing=timetable();

%% Traffic slots: preserve every slot, including inactive ones
if any(endsWith(d.OriginalPath,"/Fellow") & d.OriginalName=="signal1[119]")
    [flat,clock]=read_grid("signal1","/Fellow",120,1);
    traffic=reshape(flat,30,4,[]);
    flags=squeeze(traffic(:,3,:)).';
    assert(all(flags==0 | flags==1,'all'),'ecu:RecordingTraffic','Traffic flags must be 0 or 1.');
    record.traffic=struct('Available',true,'Time_s',native_time(clock),'SlotIndex',1:30, ...
        'Offset_m',squeeze(traffic(:,1,:)).','Station_m',squeeze(traffic(:,2,:)).', ...
        'Active',logical(flags),'Speed_kph',squeeze(traffic(:,4,:)).');
    record.traffic.Speed_mps=record.traffic.Speed_kph/3.6;
    record.traffic.ActiveCount=sum(record.traffic.Active,2);
end

%% Iteration histories: padding is retained, and valid lengths are explicit
if any(endsWith(d.OriginalPath,"/telemetry_unwrapped/residual_history"))
    [residual,clock]=read_grid("Out1","/telemetry_unwrapped/residual_history",4,201);
    [qp,qpClock]=read_grid("Out1","/telemetry_unwrapped/qp_iteration_history",201,1);
    [lengths,lengthClock]=scalar_signal("solver_history_length");
    assert(clock==qpClock && clock==lengthClock,'ecu:RecordingArrayClocks','Solver histories use different clocks.');
    assert(all(isfinite(lengths) & lengths==fix(lengths) & lengths>=1 & lengths<=201), ...
        'ecu:RecordingHistoryLength','Invalid solver history_length.');
    record.solverHistory=struct('Available',true,'Time_s',native_time(clock), ...
        'Residuals',reshape(residual,4,201,[]),'QpIterations',reshape(qp,201,[]), ...
        'Length',lengths,'IterationIndex',0:200, ...
        'ResidualNames',["stationarity","equality","inequality","complementarity"]);
    record.solverHistory.ValidRows=(0:200).' < lengths.';
    record.solverHistory.Note="Only Length rows are valid. Iteration zero is the initial iterate, before a QP solve.";
end

%% Controller execution timing: recording time is NOT an exact input timestamp
if any(d.SignalName=="solver_time_s")
    [solverTime,clock]=scalar_signal("solver_time_s");
    t=native_time(clock);
    % Unknown period produces unknown comparisons, rather than false flags.
    exceedsPeriod=NaN(size(solverTime));
    if isfinite(controllerPeriod)
        valid=isfinite(solverTime);
        exceedsPeriod(valid)=double(solverTime(valid)>controllerPeriod);
    end
    timing=timetable(seconds(t),t,[NaN;diff(t)],solverTime,t-solverTime,exceedsPeriod, ...
        'VariableNames',{'recorded_time_s','sample_interval_s','solver_time_s', ...
        'estimated_input_time_s','solver_exceeds_controller_period'});
    timing.Properties.DimensionNames{1}='Time';
    timing.Properties.VariableUnits={'s','s','s','s','1'};
    native=record.signals.(d.Timetable(find(d.XIndex==clock,1)));
    rtos=d.XIndex==clock & d.Group=="RTOS diagnostics";
    for k=reshape(find(rtos),1,[])
        timing.(d.SignalName(k))=native.(d.SignalName(k));
        column=find(string(timing.Properties.VariableNames)==d.SignalName(k));
        timing.Properties.VariableUnits{column}=char(d.Unit(k));
    end
    callRow=find(rtos & endsWith(d.SignalName,"_call_counter"));
    overrunRow=find(rtos & endsWith(d.SignalName,"_overrun_count"));
    if ~isempty(callRow)
        assert(isscalar(callRow),'ecu:RecordingTaskCounter','Ambiguous controller task counter.');
        delta=[NaN;diff(double(native.(d.SignalName(callRow))))];
        unsaved=max(0,delta-1); unsaved(1)=0; unsaved(delta<0)=NaN;
        timing.task_call_increment=delta;
        timing.unsaved_task_calls=unsaved;
        timing.task_counter_reset=delta<0;
        timing.gap_detected=delta>1;
    end
    if ~isempty(overrunRow)
        assert(isscalar(overrunRow),'ecu:RecordingOverrunCounter','Ambiguous controller overrun counter.');
        timing.overrun_increment=[0;diff(native.(d.SignalName(overrunRow)))];
    end
    timing.Properties.UserData=struct('PredictionStep_s',step,'ControllerPeriod_s',controllerPeriod, ...
        'PeriodComparisonNote',"solver_exceeds_controller_period is NaN when the period or duration is unknown; it is not an RTOS overrun flag.", ...
        'TaskCallNote',"unsaved_task_calls counts additional calls between saved samples, not skipped executions; the first sample is the baseline.", ...
        'InputTimeNote',"recorded_time_s - solver_time_s is an estimate, excluding other task overhead.", ...
        'RtosNote',"RTOS turnaround can describe the previous invocation; values are not automatically shifted.");
    record.timing=timing;
end

%% Predictions: these are outputs of shift_warm_start, not raw solver nodes
required=["P[18][40]","x_pred[4][40]","u_pred[2][39]", ...
    "nextX[4][40]","nextU[2][39]","solverInputs.parameter_traj[778]"];
if ~all(ismember(required,d.OriginalName)), return; end
[P,clock]=read_grid("P","/horizon_prep",19,41);
[packed,pc]=read_grid("solverInputs.parameter_traj","/assemble_problem",779,1);
[shiftedX,xc]=read_grid("x_pred","/warm_start",5,41);
[shiftedU,uc]=read_grid("u_pred","/warm_start",3,40);
[nextX,nxc]=read_grid("nextX","/warm_start/MATLAB Function",5,41);
[nextU,nuc]=read_grid("nextU","/warm_start/MATLAB Function",3,40);
[x0,lc]=read_grid("solverInputs.lbx_0","/assemble_problem",5,1);
[upper0,bc]=read_grid("solverInputs.ubx_0","/assemble_problem",5,1);
assert(all([pc,xc,uc,nxc,nuc,lc,bc]==clock),'ecu:RecordingArrayClocks', ...
    'Prediction and parameter channels must share one native clock.');
assert(isequaln(P,reshape(packed,size(P))),'ecu:RecordingParameters', ...
    'Recorded P differs from the parameters delivered to the solver.');
assert(isequaln(x0,upper0),'ecu:RecordingInitialState','Node zero is not fixed by equal state bounds.');
assert(isequaln(shiftedX,nextX) && isequaln(shiftedU,nextU) && ...
    isequaln(shiftedX(:,end,:),shiftedX(:,end-1,:)) && ...
    isequaln(shiftedU(:,end,:),shiftedU(:,end-1,:)), ...
    'ecu:RecordingPredictionConvention', ...
    'Prediction channels do not match the project shifted-output convention. Inspect the logged ports.');

[slack,sc]=read_grid("Out1","/telemetry_unwrapped/slack_values",400,1);
[lower0,l0c]=read_grid("solverInputs.lh_0","/assemble_problem",5,1);
[upperPath0,u0c]=read_grid("solverInputs.uh_0","/assemble_problem",5,1);
[lowerPath,lpc]=read_grid("solverInputs.lh","/assemble_problem",195,1);
[upperPath,upc]=read_grid("solverInputs.uh","/assemble_problem",195,1);
[status,statusClock]=scalar_signal("solver_status");
[cost,costClock]=scalar_signal("solver_cost");
assert(all([sc,l0c,u0c,lpc,upc,statusClock,costClock]==clock), ...
    'ecu:RecordingArrayClocks','Constraint and solver diagnostics use different clocks.');
stageSlack=reshape(slack,10,40,[]);
ns=size(P,3);
h=struct('Available',true,'Time_s',native_time(clock),'PredictionStep_s',step, ...
    'StateStageTime_s',(0:40)*step,'InputStageTime_s',(0:39)*step, ...
    'ConstraintStageTime_s',(0:39)*step,'P',P,'ShiftedX',shiftedX,'ShiftedU',shiftedU, ...
    'X0',reshape(x0,5,[]),'X',cat(2,x0,shiftedX(:,1:40,:)), ...
    'U',cat(2,NaN(3,1,ns),shiftedU(:,1:39,:)), ...
    'LowerSlack',stageSlack(1:5,:,:),'UpperSlack',stageSlack(6:10,:,:), ...
    'ConstraintLower',cat(2,lower0,reshape(lowerPath,5,39,[])), ...
    'ConstraintUpper',cat(2,upperPath0,reshape(upperPath,5,39,[])), ...
    'SolverStatus',status,'SolverCost',cost,'SolverSuccess',status==0, ...
    'PMatchesSolverInput',true,'U0Available',false);
h.ObstacleSlack=h.LowerSlack(4:5,:,:);
h.EstimatedInputTime_s=native_time(clock)-record.solver.solver_time_s;
h.StateNames=["lateral_error","heading_error","speed_error","lateral_velocity","yaw_rate"];
h.StateUnits=["m","rad","m/s","m/s","rad/s"];
h.InputNames=["Fx","Fy","Mz"]; h.InputUnits=["N","N","N*m"];
layout=ecu.control.parameter_layout();
h.ParameterNames=string(layout.names(:));
h.ConstraintNames=["lateral_velocity","yaw_rate","lateral_error","obstacle1","obstacle2"];
h.ActiveSlots=NaN(2,ns); h.TrafficActive=false(ns,1);
if record.traffic.Available
    assert(isequal(record.traffic.Time_s,h.Time_s),'ecu:RecordingTrafficClock', ...
        'Traffic and prediction timestamps differ. No automatic resampling is performed.');
    h.TrafficActive=record.traffic.ActiveCount==2;
    for k=reshape(find(h.TrafficActive),1,[])
        slots=find(record.traffic.Active(k,:));
        h.ActiveSlots(:,k)=slots(:);
    end
end
h.ValidPrediction=h.SolverSuccess & h.TrafficActive;
h.Note="X reconstructs node zero from fixed solver input. U(:,1,:) is unknown. Failed-solve data is retained; use SolverSuccess/ValidPrediction when plotting.";
record.horizon=h;

    function [values,clock]=read_grid(base,block,nRows,nCols)
        % Labels, not recorder order, define MATLAB column-major array order.
        available=find(endsWith(d.OriginalPath,block) & startsWith(d.OriginalName,base+"["));
        [i,j]=ndgrid(0:nRows-1,0:nCols-1);
        requested=base+"["+i(:)+"]";
        if nCols>1, requested=requested+"["+j(:)+"]"; end
        [found,pos]=ismember(requested,d.OriginalName(available));
        assert(all(found) && numel(available)==numel(requested),'ecu:RecordingGrid', ...
            'Incomplete or ambiguous %s grid at %s. Expected %d channels.',base,block,numel(requested));
        rows=available(pos);
        clocks=unique(d.XIndex(rows));
        assert(isscalar(clocks),'ecu:RecordingArrayClocks','%s spans multiple clocks.',base);
        clock=clocks;
        tt=record.signals.(d.Timetable(rows(1)));
        values=reshape(tt{:,cellstr(d.SignalName(rows))}.',nRows,nCols,[]);
    end

    function [values,clock]=scalar_signal(name)
        row=find(d.SignalName==name);
        assert(isscalar(row),'ecu:RecordingScalar','Expected one scalar channel named %s.',name);
        clock=d.XIndex(row);
        values=record.signals.(d.Timetable(row)).(name);
    end

    function t=native_time(clock)
        t=double(record.metadata.TimeBases(clock).Data(:));
    end
end
