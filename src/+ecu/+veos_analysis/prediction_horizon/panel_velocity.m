function p = panel_velocity(d)
forecast = [d.Horizon.P(d.Layout.vr,:,:) + d.Horizon.X(3,:,:); d.Horizon.X(4,:,:)];
p = panel_data("velocity", "Velocity [m/s]", ["Longitudinal","Lateral"], ...
    [d.Speed, d.Signals.mpc_lbx0_lateral_velocity_mps], forecast, d);
end
