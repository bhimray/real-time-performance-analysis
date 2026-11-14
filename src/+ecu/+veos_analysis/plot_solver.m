function [fig, axesList] = plot_solver(signals, options)
%PLOT_SOLVER Plot solver status, cost, runtime, and SQP iterations.
% Title, PanelTitles, XLabels, YLabels, XLimits, and YLimits are optional.
% Use one label/limit for all panels or one entry per panel.
arguments
    signals timetable
    options.Title (1,1) string = ""
    options.PanelTitles string = strings(0,1)
    options.XLabels string = strings(0,1)
    options.YLabels string = strings(0,1)
    options.XLimits double = zeros(0,2)
    options.YLimits double = zeros(0,2)
    options.Visible (1,1) string {mustBeMember(options.Visible, ["on","off"])} = "on"
end

panels = {
    "Solver status", "solver_status", "Status code", "stairs", "", ""
    "Objective value", "solver_cost", "Objective value", "stairs", "", ""
    "Solve time", "solver_time_s", "Solve time [s]", "stairs", "", ""
    "SQP iterations", "solver_sqp_iterations", "Iterations per solve", "stairs", "", ""
};

[fig, axesList] = render_panels(signals, panels, "NMPC solver performance", 2, options);
end
