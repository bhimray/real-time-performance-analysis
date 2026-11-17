%
% Copyright (c) The acados authors.
%
% This file is part of acados.
%
% The 2-Clause BSD License
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
%
% 1. Redistributions of source code must retain the above copyright notice,
% this list of conditions and the following disclaimer.
%
% 2. Redistributions in binary form must reproduce the above copyright notice,
% this list of conditions and the following disclaimer in the documentation
% and/or other materials provided with the distribution.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
% AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
% IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
% ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
% LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
% CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
% SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
% INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
% CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
% ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
% POSSIBILITY OF SUCH DAMAGE.;

%




  
  
  
  
  
  
  
  
  
  
  
  
  
  




SOURCES = { ...
            'ecu_vehicle_nmpc_model/ecu_vehicle_nmpc_expl_ode_fun.c', ...
            'ecu_vehicle_nmpc_model/ecu_vehicle_nmpc_expl_vde_forw.c', ...
            'ecu_vehicle_nmpc_model/ecu_vehicle_nmpc_expl_vde_adj.c', ...
            'ecu_vehicle_nmpc_cost/ecu_vehicle_nmpc_cost_y_0_fun.c', ...
            'ecu_vehicle_nmpc_cost/ecu_vehicle_nmpc_cost_y_0_fun_jac_ut_xt.c', ...
            'ecu_vehicle_nmpc_cost/ecu_vehicle_nmpc_cost_y_fun.c', ...
            'ecu_vehicle_nmpc_cost/ecu_vehicle_nmpc_cost_y_fun_jac_ut_xt.c', ...
            'ecu_vehicle_nmpc_cost/ecu_vehicle_nmpc_cost_y_e_fun.c', ...
            'ecu_vehicle_nmpc_cost/ecu_vehicle_nmpc_cost_y_e_fun_jac_ut_xt.c', ...
            'ecu_vehicle_nmpc_constraints/ecu_vehicle_nmpc_constr_h_0_fun.c', ...
            'ecu_vehicle_nmpc_constraints/ecu_vehicle_nmpc_constr_h_0_fun_jac_uxt_zt.c', ...
            'ecu_vehicle_nmpc_constraints/ecu_vehicle_nmpc_constr_h_fun.c', ...
            'ecu_vehicle_nmpc_constraints/ecu_vehicle_nmpc_constr_h_fun_jac_uxt_zt.c', ...
            'acados_solver_sfunction_ecu_vehicle_nmpc.c', ...
            'acados_solver_ecu_vehicle_nmpc.c'
          };

INC_PATH = 'C:\Users\bxr240009\Downloads\bim\real-time-performance-analysis\buildSCALEXIO\install\include';

INCS = {['-I', fullfile(INC_PATH, 'blasfeo', 'include')], ...
        ['-I', fullfile(INC_PATH, 'hpipm', 'include')], ...
        ['-I', fullfile(INC_PATH, 'acados')], ...
        ['-I', fullfile(INC_PATH)]};



CFLAGS = 'CFLAGS=$CFLAGS';
LDFLAGS = 'LDFLAGS=$LDFLAGS';
COMPFLAGS = 'COMPFLAGS=$COMPFLAGS';
COMPDEFINES = 'COMPDEFINES=$COMPDEFINES';



LIB_PATH = ['-L', fullfile('C:\Users\bxr240009\Downloads\bim\real-time-performance-analysis\buildSCALEXIO\install\lib')];

LIBS = {'-lacados', '-lhpipm', '-lblasfeo'};

% acados linking libraries and flags
LDFLAGS = [LDFLAGS ' '];
COMPFLAGS = [COMPFLAGS ' '];
LIBS{end+1} = '';
LIBS{end+1} = '';
LIBS{end+1} = '';

COMPFLAGS = [COMPFLAGS ' -O2'];
CFLAGS = [CFLAGS ' -O2'];

try
    %     mex('-v', '-O', CFLAGS, LDFLAGS, COMPFLAGS, COMPDEFINES, INCS{:}, ...
    mex('-O', CFLAGS, LDFLAGS, COMPFLAGS, COMPDEFINES, INCS{:}, ...
            LIB_PATH, LIBS{:}, SOURCES{:}, ...
            '-output', 'acados_solver_sfunction_ecu_vehicle_nmpc' );
catch exception
    disp('make_sfun failed with the following exception:')
    disp(exception);
    disp(exception.message );
    disp('Try adding -v to the mex command above to get more information.')
    keyboard
end

fprintf( [ '\n\nSuccessfully created sfunction:\nacados_solver_sfunction_ecu_vehicle_nmpc', '.', ...
    eval('mexext')] );


%% print note on usage of s-function, and create I/O port names vectors
fprintf('\n\nNote: Usage of Sfunction is as follows:\n')
input_note = 'Inputs are:\n';
i_in = 1;

global sfun_input_names
sfun_input_names = {};
input_note = strcat(input_note, num2str(i_in), ') lbx_0 - lower bound on x for stage 0,',...
                    ' size [5]\n ');
sfun_input_names = [sfun_input_names; 'lbx_0 [5]'];
i_in = i_in + 1;
input_note = strcat(input_note, num2str(i_in), ') ubx_0 - upper bound on x for stage 0,',...
                    ' size [5]\n ');
sfun_input_names = [sfun_input_names; 'ubx_0 [5]'];
i_in = i_in + 1;
input_note = strcat(input_note, num2str(i_in), ') parameters - concatenated for all stages 0 to N,',...
                    ' size [779]\n ');
sfun_input_names = [sfun_input_names; 'parameter_traj [779]'];
i_in = i_in + 1;



input_note = strcat(input_note, num2str(i_in), ') lh for stages 1 to N-1, size [195]\n ');
sfun_input_names = [sfun_input_names; 'lh [195]'];
i_in = i_in + 1;
input_note = strcat(input_note, num2str(i_in), ') uh for stages 1 to N-1, size [195]\n ');
sfun_input_names = [sfun_input_names; 'uh [195]'];
i_in = i_in + 1;
input_note = strcat(input_note, num2str(i_in), ') lh_0, size [5]\n ');
sfun_input_names = [sfun_input_names; 'lh_0 [5]'];
i_in = i_in + 1;
input_note = strcat(input_note, num2str(i_in), ') uh_0, size [5]\n ');
sfun_input_names = [sfun_input_names; 'uh_0 [5]'];
i_in = i_in + 1;



input_note = strcat(input_note, num2str(i_in), ') x_init - initialization of x for all stages, size [205]\n ');
sfun_input_names = [sfun_input_names; 'x_init [205]'];
i_in = i_in + 1;
input_note = strcat(input_note, num2str(i_in), ') u_init - initialization of u for stages 0 to N-1, size [120]\n ');
sfun_input_names = [sfun_input_names; 'u_init [120]'];
i_in = i_in + 1;

sfun_input_names = [
    sfun_input_names
    {'iteration_cap [1]'}
];

input_note = sprintf( ...
    '%s%d) iteration_cap - runtime SQP iteration limit\n', ...
    input_note, numel(sfun_input_names));

fprintf(input_note)

disp(' ')

output_note = 'Outputs are:\n';
i_out = 0;

global sfun_output_names
sfun_output_names = {};
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') u0, control input at node 0, size [3]\n ');
sfun_output_names = [sfun_output_names; 'u0 [3]'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') utraj, control input concatenated for nodes 0 to N-1, size [120]\n ');
sfun_output_names = [sfun_output_names; 'utraj [120]'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') xtraj, state concatenated for nodes 0 to N, size [205]\n ');
sfun_output_names = [sfun_output_names; 'xtraj [205]'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') slack values concatenated in order [sl_0, su_0, ..., sl_N, su_N] \n ');
sfun_output_names = [sfun_output_names; 'slack_values [400]'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') acados solver status (0 = SUCCESS)\n ');
sfun_output_names = [sfun_output_names; 'solver_status'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') cost function value\n ');
sfun_output_names = [sfun_output_names; 'cost_value'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') KKT residuals, size [4] (stat, eq, ineq, comp)\n ');
sfun_output_names = [sfun_output_names; 'KKT_residuals [4]'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') x1, state at node 1\n ');
sfun_output_names = [sfun_output_names; 'x1 [5]'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') CPU time\n ');
sfun_output_names = [sfun_output_names; 'CPU_time'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') CPU time QP solution\n ');
sfun_output_names = [sfun_output_names; 'CPU_time_qp'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') CPU time linearization (including integrator)\n ');
sfun_output_names = [sfun_output_names; 'CPU_time_lin'];
i_out = i_out + 1;
output_note = strcat(output_note, num2str(i_out), ') SQP iterations\n ');
sfun_output_names = [sfun_output_names; 'sqp_iter'];



sfun_output_names = [
    sfun_output_names
    {'qp_iteration_history'}
    {'residual_history'}
    {'history_length'}
    {'lam_stage0'}
];

output_note = sprintf( ...
    ['%sProject diagnostics appended: QP iteration history, ' ...
     'NLP residual history, valid history length, ' ...
     'and stage-zero multipliers.\n'], ...
    output_note);
    
fprintf(output_note)
