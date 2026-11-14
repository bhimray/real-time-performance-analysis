function p = panel_data(name, label, series, history, forecast, d, kind)
%PANEL_DATA Define the common contract for a history/forecast panel.
arguments
    name
    label
    series
    history
    forecast
    d
    kind = "state"
end
forecast(:, :, d.Horizon.SolverStatus ~= 0) = NaN;
ahead = d.Horizon.StageTime_s(1:size(forecast, 2));
style = "line";
if kind == "input"
    % Extend the final held input to the terminal time. Stage zero stays blank.
    forecast(:, end+1, :) = forecast(:, end, :);
    ahead = d.Horizon.StageTime_s;
    style = "stairs";
end
values = [history(:); forecast(:)];
values = values(isfinite(values));
limits = [-1, 1];
if ~isempty(values)
    limits = [min(values), max(values)];
    padding = 0.08 * max(diff(limits), 0.01);
    limits = limits + [-padding, padding];
end
p = struct('Name', name, 'Label', label, 'Series', series, ...
    'HistoryTime', d.Time, 'History', history, 'HistoryStyle', style, ...
    'Ahead', ahead, 'Predicted', forecast, 'ForecastStyle', style, ...
    'Limits', limits, 'ZeroLine', false);
end
