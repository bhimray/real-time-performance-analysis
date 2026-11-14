function p = panel_yaw_rate(d)
p = panel_data("yaw_rate", "Yaw rate [rad/s]", "Ego", ...
    d.Signals.mpc_lbx0_yaw_rate_radps, d.Horizon.X(5,:,:), d);
end
