function model = vehicle_model(config)
%VEHICLE_MODEL Assemble the symbolic AcadosModel for Sheets A3 to A5.
%
%   Mathematical definitions live in VEHICLE_RHS, FEEDFORWARD and
%   CONSTRAINT_EXPRESSIONS. This function connects them to acados.
%   It does not generate or compile solver code.

import casadi.*

%% Symbolic state, input, derivative and stage-parameter vectors

model = AcadosModel();

model.name = config.model_name;
model.x = SX.sym('x', config.nx, 1);
model.xdot = SX.sym('xdot', config.nx, 1);
model.u = SX.sym('u', config.nu, 1);
model.p = SX.sym('p', config.np, 1);

%% Continuous-time dynamics

model.f_expl_expr = ecu.model.vehicle_rhs( ...
    model.x, model.u, model.p, config);

assert(isequal(size(model.f_expl_expr), [config.nx, 1]));

model.f_impl_expr = model.xdot - model.f_expl_expr;

%% Nonlinear least-squares cost outputs

referenceInput = ecu.control.feedforward(model.p, config);

% Subtract feedforward inside the output expression. Using a zero yref is
% equivalent to A5's y = [x; u], yref = [zeros(5,1); referenceInput].
model.cost_y_expr = [model.x; model.u - referenceInput];
model.cost_y_expr_0 = model.cost_y_expr;

% The terminal term contains state tracking only.
model.cost_y_expr_e = model.x;

%% Nonlinear constraint expressions

model.con_h_expr = ecu.control.constraint_expressions(model.x, model.p);
model.con_h_expr_0 = model.con_h_expr;

% A5 specifies no terminal constraint, so con_h_expr_e is left empty.

end
