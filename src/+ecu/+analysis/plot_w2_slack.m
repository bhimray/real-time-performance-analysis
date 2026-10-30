function fig = plot_w2_slack(slack)
%PLOT_W2_SLACK Maximum logged slack over the horizon at each controller solve.
fig=figure('Color','w','Name','Maximum slack'); ax=axes(fig);
if isempty(slack.values)
    text(ax,.1,.5,'Slack values not available','Units','normalized');
else
    plot(ax,slack.time_s,slack.values,'LineWidth',1.2);
end
xlabel(ax,'Time [s]'); ylabel(ax,'Maximum slack [mixed constraint units]');
title(ax,'Maximum slack over the prediction horizon'); grid(ax,'on');
end
