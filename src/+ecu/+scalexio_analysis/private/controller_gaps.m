function gaps = controller_gaps(record,time)
%CONTROLLER_GAPS Use task-counter evidence when the native clock matches.
gaps = false(numel(time),1);
timing = record.timing;
if ismember('gap_detected',timing.Properties.VariableNames) && ...
        isequal(timing.Time,seconds(time(:)))
    gaps = timing.gap_detected | timing.task_counter_reset;
end
end
