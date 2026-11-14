function [fig, axesList] = render_panels(signals, panels, defaultTitle, columnCount, options, tileWidths)
%RENDER_PANELS Draw common time and XY panels with consistent paper styling.
% Columns describe the title, y channels, y label, style, x channel, and legend.
panelCount = size(panels, 1);
if nargin < 6
    tileWidths = ones(panelCount, 1);
end
panelTitles = panel_labels(options.PanelTitles, panelCount, 'PanelTitles');
xLabels = panel_labels(options.XLabels, panelCount, 'XLabels');
yLabels = panel_labels(options.YLabels, panelCount, 'YLabels');
xLimits = panel_limits(options.XLimits, panelCount, 'XLimits');
yLimits = panel_limits(options.YLimits, panelCount, 'YLimits');
figureTitle = options.Title;
if figureTitle == ""
    figureTitle = defaultTitle;
end

rowTimes = signals.Properties.RowTimes;
assert(isduration(rowTimes), 'Expected elapsed duration row times from the VEOS converter.');
time = seconds(rowTimes);
available = string(signals.Properties.VariableNames);

rowCount = ceil(sum(tileWidths) / columnCount);
fig = figure('Color', 'w', 'Visible', options.Visible, 'Name', figureTitle, ...
    'NumberTitle', 'off', 'Units', 'inches', ...
    'Position', [0.8 0.8 7.2 0.6+1.65*rowCount]);
layout = tiledlayout(fig, rowCount, columnCount, ...
    'TileSpacing', 'compact', 'Padding', 'compact');
title(layout, figureTitle, 'Interpreter', 'none', 'FontSize', 12);
axesList = gobjects(panelCount, 1);
timeAxes = gobjects(0, 1);
palette = [0.00 0.29 0.55; 0.78 0.26 0.13; 0.00 0.46 0.38; 0.50 0.30 0.62];
lineStyles = ["-", "--", "-.", ":"];

for k = 1:panelCount
    ax = nexttile(layout, [1 tileWidths(k)]);
    axesList(k) = ax;
    set(ax, 'FontName', 'Arial', 'FontSize', 9, 'LineWidth', 0.75, ...
        'Box', 'on', 'TickDir', 'out', 'Color', 'w');
    hold(ax, 'on');
    grid(ax, 'on');

    yChannels = panels{k, 2};
    style = panels{k, 4};
    xChannel = panels{k, 5};
    labels = panels{k, 6};
    keep = ismember(yChannels, available);
    isTimePanel = all(xChannel == "");
    if isTimePanel
        xLabel = "Time [s]";
        timeAxes(end + 1, 1) = ax;
    else
        xLabel = "Global X [m]";
        keep = keep & ismember(xChannel, available);
    end

    for j = reshape(find(keep), 1, [])
        x = time;
        if ~isTimePanel
            x = signals.(xChannel(j));
        end
        y = signals.(yChannels(j));
        label = yChannels(j);
        if numel(labels) >= j && labels(j) ~= ""
            label = labels(j);
        end
        colorIndex = mod(j - 1, size(palette, 1)) + 1;
        properties = {'LineWidth', 1.15, 'Color', palette(colorIndex,:), ...
            'LineStyle', lineStyles(colorIndex), 'DisplayName', label};
        if style == "stairs"
            stairs(ax, x, y, properties{:});
        else
            plot(ax, x, y, properties{:});
        end
    end
    if ~any(keep)
        text(ax, 0.5, 0.5, 'Unavailable in this recording', 'Units', 'normalized', ...
            'HorizontalAlignment', 'center', 'Color', [0.35 0.35 0.35]);
    elseif numel(yChannels) > 1
        legend(ax, 'Location', 'best', 'Interpreter', 'none', 'FontSize', 8);
    end
    if style == "xy" && any(keep)
        axis(ax, 'equal');
    end

    heading = panels{k, 1};
    if panelTitles(k) ~= ""
        heading = panelTitles(k);
    end
    if xLabels(k) ~= ""
        xLabel = xLabels(k);
    end
    yLabel = panels{k, 3};
    if yLabels(k) ~= ""
        yLabel = yLabels(k);
    end
    title(ax, heading, 'Interpreter', 'none');
    xlabel(ax, xLabel, 'Interpreter', 'none');
    ylabel(ax, yLabel, 'Interpreter', 'none');
    if all(isfinite(xLimits(k,:)))
        xlim(ax, xLimits(k,:));
    end
    if all(isfinite(yLimits(k,:)))
        ylim(ax, yLimits(k,:));
    end
end

% Link time axes when they use a common window.
timeRows = cellfun(@(x) all(x == ""), panels(:,5));
if numel(timeAxes) > 1 && ...
        isequaln(xLimits(timeRows,:), repmat(xLimits(find(timeRows,1),:), nnz(timeRows), 1))
    linkaxes(timeAxes, 'x');
    if all(isfinite(xLimits(find(timeRows,1),:)))
        xlim(timeAxes(1), xLimits(find(timeRows,1),:));
    elseif numel(time) > 1
        xlim(timeAxes(1), [time(1) time(end)]);
    end
end
end

function labels = panel_labels(labels, count, argumentName)
if isempty(labels)
    labels = strings(count, 1);
elseif isscalar(labels)
    labels = repmat(labels, count, 1);
else
    assert(numel(labels) == count, '%s needs one label or one per panel.', argumentName);
    labels = labels(:);
end
end

function limits = panel_limits(limits, count, argumentName)
if isempty(limits)
    limits = NaN(count, 2);
else
    assert(size(limits, 2) == 2 && ismember(size(limits, 1), [1 count]), ...
        '%s needs one [min max] row or one row per panel.', argumentName);
    valid = all(isnan(limits), 2) | ...
        (all(isfinite(limits), 2) & limits(:,1) < limits(:,2));
    assert(all(valid), '%s rows must be increasing finite bounds or [NaN NaN].', argumentName);
    if size(limits, 1) == 1
        limits = repmat(limits, count, 1);
    end
end
end
