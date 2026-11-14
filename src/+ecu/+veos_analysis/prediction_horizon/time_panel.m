function draw = time_panel(ax, p, colors)
%TIME_PANEL Create reusable lines and the shaded prediction interval.
hold(ax, 'on');
grid(ax, 'on');
ylim(ax, p.Limits);
ylabel(ax, p.Label);
shade = patch(ax, NaN(1,4), p.Limits([1 1 2 2]), [0.91 0.93 0.96], ...
    'EdgeColor', 'none', 'HandleVisibility', 'off');
if p.ZeroLine
    yline(ax, 0, ':k', 'HandleVisibility', 'off');
end
for i = 1:numel(p.Series)
    history(i) = make_line(p.HistoryStyle, '-', p.Series(i), colors(i,:)); %#ok<AGROW>
    forecast(i) = make_line(p.ForecastStyle, '--', '', colors(i,:)); %#ok<AGROW>
end
cursor = xline(ax, 0, '-', 'Color', [0.35 0.38 0.43], 'HandleVisibility', 'off');
if numel(p.Series) > 1
    legend(ax, history, 'Location', 'northwest', 'Orientation', 'horizontal', ...
        'Box', 'off', 'FontSize', 8);
end
draw = @update_frame;

    function update_frame(k, now, viewStart, viewEnd)
        past = p.HistoryTime >= viewStart & p.HistoryTime <= now;
        for j = 1:numel(history)
            set(history(j), 'XData', p.HistoryTime(past), 'YData', p.History(past,j));
            set(forecast(j), 'XData', now+p.Ahead, 'YData', p.Predicted(j,:,k));
        end
        set(shade, 'XData', [now, viewEnd, viewEnd, now]);
        cursor.Value = now;
        xlim(ax, [viewStart, viewEnd]);
    end

    function lineHandle = make_line(style, lineStyle, name, color)
        properties = {'Color', color, 'LineStyle', lineStyle, 'LineWidth', 1.2, ...
            'DisplayName', name};
        if style == "stairs"
            lineHandle = stairs(ax, NaN, NaN, properties{:});
        else
            lineHandle = plot(ax, NaN, NaN, properties{:});
        end
    end
end
