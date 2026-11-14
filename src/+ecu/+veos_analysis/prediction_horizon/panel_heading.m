function p = panel_heading(d)
p = panel_data("heading", "Heading error [rad]", "Ego", ...
    d.Signals.mpc_lbx0_heading_error_rad, d.Horizon.X(2,:,:), d);
end
