function p = panel_slack(d)
peak = reshape(max(d.Horizon.ObstacleSlack, [], 2), 2, []).';
p = panel_data("slack", ["Obstacle slack"; "(past: horizon max)"], ["Fellow 1","Fellow 2"], ...
    peak, d.Horizon.ObstacleSlack, d);
p.HistoryTime = d.Horizon.Time_s;
p.HistoryStyle = "stairs";
p.ZeroLine = true;
end
