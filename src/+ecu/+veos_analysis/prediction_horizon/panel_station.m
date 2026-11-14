function p = panel_station(d)
p = panel_data("station", "Road station [m]", ["Ego","Fellow 1","Fellow 2"], ...
    d.Station, d.Horizon.P([d.Layout.s, d.Layout.obstacle1(1), d.Layout.obstacle2(1)],:,:), d);
p.Predicted(2:3, :, ~d.Horizon.ActiveAtSolve) = NaN;
end
