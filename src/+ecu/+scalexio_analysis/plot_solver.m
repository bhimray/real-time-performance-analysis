function fig = plot_solver(record,visible)
%PLOT_SOLVER Plot status, cost, iterations and final KKT residuals.
if nargin < 2, visible = "on"; end
s = record.solver;
time = seconds(s.Time);
gaps = controller_gaps(record,time);
[fig,layout] = plot_layout('Solver diagnostics',3,2,visible,1140);
ax = nexttile(layout);
plot(ax,time,s.solver_status,'.'); grid(ax,'on'); yticks(ax,unique(s.solver_status));
ylabel(ax,'Status code'); xlabel(ax,'Recorded time [s]'); title(ax,'All recorded solver statuses');
ax = nexttile(layout);
native_trace(ax,time,s.solver_cost,gaps); ylabel(ax,'Cost'); title(ax,'Solver objective');
ax = nexttile(layout);
native_trace(ax,time,s.solver_sqp_iterations,gaps); ylabel(ax,'Iterations'); title(ax,'SQP iterations');
ax = nexttile(layout);
native_trace(ax,time,1000*[s.solver_qp_time_s s.solver_linearization_time_s],gaps);
ylabel(ax,'Duration [ms]'); title(ax,'QP and linearization');
legend(ax,'QP','Linearization','Location','best');
ax = nexttile(layout,[1 2]);
values = s{:,{'solver_kkt_stationarity','solver_kkt_equality', ...
    'solver_kkt_inequality','solver_kkt_complementarity'}};
% Log display uses a floor at machine epsilon for exact numerical zeros.
native_trace(ax,time,max(values,eps),gaps); set(ax,'YScale','log');
title(ax,'Final KKT residuals (zeros displayed at machine epsilon)');
ylabel(ax,'Residual magnitude');
legend(ax,'Stationarity','Equality','Inequality','Complementarity','Location','best');
end
