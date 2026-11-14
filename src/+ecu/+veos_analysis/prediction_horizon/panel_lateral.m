function p = panel_lateral(d)
forecast = [d.Horizon.X(1,:,:); d.Horizon.P([d.Layout.obstacle1(2), d.Layout.obstacle2(2)],:,:)];
forecast(2:3, :, ~d.Horizon.ActiveAtSolve) = NaN;
p = panel_data("lateral", "Lateral offset [m]", ["Ego","Fellow 1","Fellow 2"], ...
    d.Offset, forecast, d);
end
