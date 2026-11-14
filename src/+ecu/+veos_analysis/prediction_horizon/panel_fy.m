function p = panel_fy(d)
p = panel_data("fy", "Lateral force [kN]", "Fy", ...
    d.Signals.cmd_Fy_N/1000, d.Horizon.U(2,:,:)/1000, d, "input");
end
