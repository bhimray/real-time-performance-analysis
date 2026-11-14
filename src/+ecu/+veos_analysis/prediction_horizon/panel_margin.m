function p = panel_margin(d)
ds = d.Station(:,1) - d.Station(:,2:3);
de = d.Offset(:,1) - d.Offset(:,2:3);
history = (de./d.Safety(:,1).').^2 + (ds./d.Safety(:,2).').^2 - 1;
p = panel_data("margin", ["Safety ellipse margin"; "(values above 3 clipped)"], ["Fellow 1","Fellow 2"], ...
    history, d.Horizon.ObstacleMargin, d);
p.Limits = [min(-1, p.Limits(1)), 3]; % Focus on the zero crossing.
p.ZeroLine = true;
end
