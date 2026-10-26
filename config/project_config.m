function cfg = project_config()
%PROJECT_CONFIG Repository defaults; deployment choices remain explicit.
cfg.schema_version = 1;
cfg.name = "ECU_RealTime_Control_Performance";
cfg.matlab_release = "R2025b";
cfg.controller = "acados_nmpc";
cfg.plant = "kinodynamic";
cfg.platform = "desktop";
cfg.controller_period_s = 0.05;
cfg.plant_step_s = 0.001;
cfg.horizon_intervals = 40;
cfg.run_duration_s = 8;
cfg.codegen_iteration_cap = 200;
cfg.hardware_execution_role = "UNCONFIRMED";
end
