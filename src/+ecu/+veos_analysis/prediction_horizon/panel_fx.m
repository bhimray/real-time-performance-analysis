function p = panel_fx(d)
p = panel_data("fx", "Longitudinal force [kN]", "Fx", ...
    d.Signals.cmd_Fx_N/1000, d.Horizon.U(1,:,:)/1000, d, "input");
end
