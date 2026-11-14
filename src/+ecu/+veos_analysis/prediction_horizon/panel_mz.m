function p = panel_mz(d)
p = panel_data("mz", "Yaw moment [kN m]", "Mz", ...
    d.Signals.cmd_Mz_Nm/1000, d.Horizon.U(3,:,:)/1000, d, "input");
end
