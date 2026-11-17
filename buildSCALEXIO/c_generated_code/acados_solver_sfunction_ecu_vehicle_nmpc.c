/*
 * Copyright (c) The acados authors.
 *
 * This file is part of acados.
 *
 * The 2-Clause BSD License
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions are met:
 *
 * 1. Redistributions of source code must retain the above copyright notice,
 * this list of conditions and the following disclaimer.
 *
 * 2. Redistributions in binary form must reproduce the above copyright notice,
 * this list of conditions and the following disclaimer in the documentation
 * and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
 * AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE
 * LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.;
 */

#define S_FUNCTION_NAME acados_solver_sfunction_ecu_vehicle_nmpc
#define S_FUNCTION_LEVEL 2

#define MDL_START

// acados
// #include "acados/utils/print.h"
#include "acados_c/sim_interface.h"
#include "acados_c/external_function_interface.h"

// example specific
#include "acados_solver_ecu_vehicle_nmpc.h"

// external project specific
#include <math.h>



#include "simstruc.h"

#define SAMPLINGTIME 0.05


  
  
  
  
  
  
  
  
  
  
  
  
  
  



/*
 * Project extension.
 *
 * Allocate history ports for the maximum iteration count configured
 * when the solver is generated. Runtime caps must not exceed it.
 */
#define ECU_MAX_SQP_ITER 200
#define ECU_HISTORY_ROWS (ECU_MAX_SQP_ITER + 1)

#define ECU_LAM_STAGE0_SIZE \
    (2 * (3 + 5 + \
          0 + 5 + \
          0 + 5))

#define ECU_EXTRA_OUTPUTS 4

static void mdlInitializeSizes (SimStruct *S)
{
    // specify the number of continuous and discrete states
    ssSetNumContStates(S, 0);
    ssSetNumDiscStates(S, 0);

    int N = 40;// Additional input for payload (only when enabled)

  

  

  

  

  

  

  

   
   
   

    // specify the number of input ports
    if ( !ssSetNumInputPorts(S, 10) )
        return;

    // specify the number of output ports
    if ( !ssSetNumOutputPorts(S, 16) )
        return;

    // specify dimension information for the input ports
    // lbx_0
    ssSetInputPortVectorDimension(S, 0, 5);
    // ubx_0
    ssSetInputPortVectorDimension(S, 1, 5);
    // parameter_traj
    ssSetInputPortVectorDimension(S, 2, 779);


    // lh
    ssSetInputPortVectorDimension(S, 3, 195);
    // uh
    ssSetInputPortVectorDimension(S, 4, 195);
    // lh_0
    ssSetInputPortVectorDimension(S, 5, 5);
    // uh_0
    ssSetInputPortVectorDimension(S, 6, 5);
    // x_init
    ssSetInputPortVectorDimension(S, 7, 205);
    // u_init
    ssSetInputPortVectorDimension(S, 8, 120);/* specify dimension information for the OUTPUT ports */
    ssSetOutputPortVectorDimension(S, 0, 3 );
    ssSetOutputPortVectorDimension(S, 1, 120 );
    ssSetOutputPortVectorDimension(S, 2, 205 );
    ssSetOutputPortVectorDimension(S, 3, 2*200 );
    ssSetOutputPortVectorDimension(S, 4, 1 );
    ssSetOutputPortVectorDimension(S, 5, 1 );
    ssSetOutputPortVectorDimension(S, 6, 4 );
    ssSetOutputPortVectorDimension(S, 7, 5 ); // state at shooting node 1
    ssSetOutputPortVectorDimension(S, 8, 1);
    ssSetOutputPortVectorDimension(S, 9, 1);
    ssSetOutputPortVectorDimension(S, 10, 1);
    ssSetOutputPortVectorDimension(S, 11, 1 );

    /* Append the project iteration-cap input. */
    ssSetInputPortVectorDimension(S, 9, 1);
    ssSetInputPortDataType(S, 9, SS_DOUBLE);

    /* Append the project diagnostic outputs. */
    const int ecu_first_output = 12;

    ssSetOutputPortVectorDimension(
        S, ecu_first_output, ECU_HISTORY_ROWS);

    ssSetOutputPortMatrixDimensions(
        S, ecu_first_output + 1, 4, ECU_HISTORY_ROWS);

    ssSetOutputPortVectorDimension(
        S, ecu_first_output + 2, 1);

    ssSetOutputPortVectorDimension(
        S, ecu_first_output + 3, ECU_LAM_STAGE0_SIZE);

    for (int port = ecu_first_output;
         port < ecu_first_output + ECU_EXTRA_OUTPUTS;
         ++port)
    {
        ssSetOutputPortDataType(S, port, SS_DOUBLE);
    }

    // specify the direct feedthrough status
    // should be set to 1 for all inputs used in mdlOutputs
    ssSetInputPortDirectFeedThrough(S, 0, 1);
    ssSetInputPortDirectFeedThrough(S, 1, 1);
    ssSetInputPortDirectFeedThrough(S, 2, 1);
    ssSetInputPortDirectFeedThrough(S, 3, 1);
    ssSetInputPortDirectFeedThrough(S, 4, 1);
    ssSetInputPortDirectFeedThrough(S, 5, 1);
    ssSetInputPortDirectFeedThrough(S, 6, 1);
    ssSetInputPortDirectFeedThrough(S, 7, 1);
    ssSetInputPortDirectFeedThrough(S, 8, 1);
    ssSetInputPortDirectFeedThrough(S, 9, 1);


    // one sample time
    ssSetNumSampleTimes(S, 1);
}


#if defined(MATLAB_MEX_FILE)

#define MDL_SET_INPUT_PORT_DIMENSION_INFO
#define MDL_SET_OUTPUT_PORT_DIMENSION_INFO

static void mdlSetInputPortDimensionInfo(SimStruct *S, int_T port, const DimsInfo_T *dimsInfo)
{
    if ( !ssSetInputPortDimensionInfo(S, port, dimsInfo) )
         return;
}

static void mdlSetOutputPortDimensionInfo(SimStruct *S, int_T port, const DimsInfo_T *dimsInfo)
{
    if ( !ssSetOutputPortDimensionInfo(S, port, dimsInfo) )
         return;
}

#endif /* MATLAB_MEX_FILE */


static void mdlInitializeSampleTimes(SimStruct *S)
{
    ssSetSampleTime(S, 0, SAMPLINGTIME);
    ssSetOffsetTime(S, 0, 0.0);
}


static void mdlStart(SimStruct *S)
{
    ecu_vehicle_nmpc_solver_capsule *capsule = ecu_vehicle_nmpc_acados_create_capsule();
    ecu_vehicle_nmpc_acados_create(capsule);

    ssSetUserData(S, (void*)capsule);
}


static void mdlOutputs(SimStruct *S, int_T tid)
{
    ecu_vehicle_nmpc_solver_capsule *capsule = ssGetUserData(S);
    ocp_nlp_config *nlp_config = ecu_vehicle_nmpc_acados_get_nlp_config(capsule);
    ocp_nlp_dims *nlp_dims = ecu_vehicle_nmpc_acados_get_nlp_dims(capsule);
    ocp_nlp_in *nlp_in = ecu_vehicle_nmpc_acados_get_nlp_in(capsule);
    ocp_nlp_out *nlp_out = ecu_vehicle_nmpc_acados_get_nlp_out(capsule);
    ocp_nlp_solver *nlp_solver = ecu_vehicle_nmpc_acados_get_nlp_solver(capsule);

    InputRealPtrsType in_sign;

    int N = 40;



    // local buffer
    double buffer[779];
    double tmp_double;
    int tmp_offset, tmp_int;

    /* go through inputs */
    // lbx_0
    in_sign = ssGetInputPortRealSignalPtrs(S, 0);
    for (int i = 0; i < 5; i++)
        buffer[i] = (double)(*in_sign[i]);

    ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, nlp_out, 0, "lbx", buffer);
    // ubx_0
    in_sign = ssGetInputPortRealSignalPtrs(S, 1);
    for (int i = 0; i < 5; i++)
        buffer[i] = (double)(*in_sign[i]);
    ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, nlp_out, 0, "ubx", buffer);
    // parameter_traj
    in_sign = ssGetInputPortRealSignalPtrs(S, 2);
    // update value of parameters
    tmp_offset = 0;
    for (int stage = 0; stage <= N; stage++)
    {
        tmp_int = ocp_nlp_dims_get_from_attr(nlp_config, nlp_dims, nlp_out, stage, "p");
        for (int jj = 0; jj < tmp_int; jj++)
        {
            buffer[jj] = (double)(*in_sign[tmp_offset+jj]);
        }
        ecu_vehicle_nmpc_acados_update_params(capsule, stage, buffer, tmp_int);
        tmp_offset += tmp_int;
    }

  


  

  
    // lh
    in_sign = ssGetInputPortRealSignalPtrs(S, 3);
    tmp_offset = 0;
    for (int stage = 1; stage < N; stage++)
    {
        tmp_int = ocp_nlp_dims_get_from_attr(nlp_config, nlp_dims, nlp_out, stage, "lh");
        for (int jj = 0; jj < tmp_int; jj++)
            buffer[jj] = (double)(*in_sign[tmp_offset+jj]);
        ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, nlp_out, stage, "lh", (void *) buffer);
        tmp_offset += tmp_int;
    }
    // uh
    in_sign = ssGetInputPortRealSignalPtrs(S, 4);
    tmp_offset = 0;
    for (int stage = 1; stage < N; stage++)
    {
        tmp_int = ocp_nlp_dims_get_from_attr(nlp_config, nlp_dims, nlp_out, stage, "uh");
        for (int jj = 0; jj < tmp_int; jj++)
            buffer[jj] = (double)(*in_sign[tmp_offset+jj]);
        ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, nlp_out, stage, "uh", (void *) buffer);
        tmp_offset += tmp_int;
    }
    // lh_0
    in_sign = ssGetInputPortRealSignalPtrs(S, 5);
    for (int i = 0; i < 5; i++)
        buffer[i] = (double)(*in_sign[i]);
    ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, nlp_out, 0, "lh", buffer);
    // uh_0
    in_sign = ssGetInputPortRealSignalPtrs(S, 6);
    for (int i = 0; i < 5; i++)
        buffer[i] = (double)(*in_sign[i]);
    ocp_nlp_constraints_model_set(nlp_config, nlp_dims, nlp_in, nlp_out, 0, "uh", buffer);

    int ignore_inits = 0;
    // ssPrintf("ignore_inits = %d\n", ignore_inits);

    if (ignore_inits == 0)
    {
        // x_init
        in_sign = ssGetInputPortRealSignalPtrs(S, 7);
        tmp_int = ocp_nlp_dims_get_total_from_attr(nlp_config, nlp_dims, nlp_out, "x");
        for (int jj = 0; jj < tmp_int; jj++)
            buffer[jj] = (double)(*in_sign[jj]);
        ocp_nlp_set_all(nlp_solver, nlp_in, nlp_out, "x", (void *) buffer);
        // u_init
        in_sign = ssGetInputPortRealSignalPtrs(S, 8);
        tmp_int = ocp_nlp_dims_get_total_from_attr(nlp_config, nlp_dims, nlp_out, "u");
        for (int jj = 0; jj < tmp_int; jj++)
            buffer[jj] = (double)(*in_sign[jj]);
        ocp_nlp_set_all(nlp_solver, nlp_in, nlp_out, "u", (void *) buffer);
    }/*
     * Read the appended iteration-cap input.
     * Validate before converting the double signal to an integer.
     */
    InputRealPtrsType ecu_cap_input =
        ssGetInputPortRealSignalPtrs(S, ssGetNumInputPorts(S) - 1);

    const double ecu_requested_cap = *ecu_cap_input[0];

    if (!isfinite(ecu_requested_cap) ||
        ecu_requested_cap < 1.0 ||
        ecu_requested_cap > ECU_MAX_SQP_ITER ||
        floor(ecu_requested_cap) != ecu_requested_cap)
    {
        ssSetErrorStatus(
            S,
            "iteration_cap must be an integer between 1 and "
            "the generated maximum SQP iteration count.");
        return;
    }

    int ecu_iteration_cap = (int) ecu_requested_cap;

    ocp_nlp_solver_opts_set(
        nlp_config,
        capsule->nlp_opts,
        "max_iter",
        &ecu_iteration_cap);

    /* call solver */
    int acados_status = ecu_vehicle_nmpc_acados_solve(capsule);
    // get time
    ocp_nlp_get(nlp_solver, "time_tot", (void *) buffer);
    tmp_double = buffer[0];

    /* set outputs */
    double *out_ptr;
    out_ptr = ssGetOutputPortRealSignal(S, 0);
    ocp_nlp_out_get(nlp_config, nlp_dims, nlp_out, 0, "u", (void *) out_ptr);
    out_ptr = ssGetOutputPortRealSignal(S, 1);
    ocp_nlp_get_all(nlp_solver, nlp_in, nlp_out, "u", out_ptr);

  
    out_ptr = ssGetOutputPortRealSignal(S, 2);
    ocp_nlp_get_all(nlp_solver, nlp_in, nlp_out, "x", out_ptr);

  

  

  
    out_ptr = ssGetOutputPortRealSignal(S, 3);
    ocp_nlp_get_all(nlp_solver, nlp_in, nlp_out, "s", out_ptr);
    out_ptr = ssGetOutputPortRealSignal(S, 4);
    *out_ptr = (double) acados_status;
    out_ptr = ssGetOutputPortRealSignal(S, 5);
    ocp_nlp_eval_cost(nlp_solver, nlp_in, nlp_out);
    ocp_nlp_get(nlp_solver, "cost_value", (void *) out_ptr);
    out_ptr = ssGetOutputPortRealSignal(S, 6);
    ocp_nlp_get(nlp_solver, "res_stat", (void *) &out_ptr[0]);
    ocp_nlp_get(nlp_solver, "res_eq", (void *) &out_ptr[1]);
    ocp_nlp_get(nlp_solver, "res_ineq", (void *) &out_ptr[2]);
    ocp_nlp_get(nlp_solver, "res_comp", (void *) &out_ptr[3]);
    out_ptr = ssGetOutputPortRealSignal(S, 7);
    ocp_nlp_out_get(nlp_config, nlp_dims, nlp_out, 1, "x", (void *) out_ptr);
    out_ptr = ssGetOutputPortRealSignal(S, 8);
    out_ptr[0] = tmp_double;
    out_ptr = ssGetOutputPortRealSignal(S, 9);
    ocp_nlp_get(nlp_solver, "time_qp", (void *) out_ptr);
    out_ptr = ssGetOutputPortRealSignal(S, 10);
    ocp_nlp_get(nlp_solver, "time_lin", (void *) out_ptr);
    out_ptr = ssGetOutputPortRealSignal(S, 11);
    // get sqp iter
    ocp_nlp_get(nlp_solver, "sqp_iter", (void *) &tmp_int);
    *out_ptr = (double) tmp_int;

  

  

  

     /*
     * Export project diagnostics.
     *
     * Native SQP statistics are stored row by row:
     *   columns 0..3: NLP residuals
     *   column 4:    QP status
     *   column 5:    QP iteration count
     */
    const int ecu_first_output =
        ssGetNumOutputPorts(S) - ECU_EXTRA_OUTPUTS;

    real_T *ecu_qp_history =
        ssGetOutputPortRealSignal(S, ecu_first_output);

    real_T *ecu_residual_history =
        ssGetOutputPortRealSignal(S, ecu_first_output + 1);

    real_T *ecu_history_length =
        ssGetOutputPortRealSignal(S, ecu_first_output + 2);

    real_T *ecu_lam_stage0 =
        ssGetOutputPortRealSignal(S, ecu_first_output + 3);

    /* Clear unused entries so old samples cannot appear as new data. */
    for (int row = 0; row < ECU_HISTORY_ROWS; ++row)
    {
        ecu_qp_history[row] = 0.0;

        for (int residual = 0; residual < 4; ++residual)
        {
            ecu_residual_history[residual + 4 * row] = 0.0;
        }
    }

    int ecu_sqp_iterations = 0;
    int ecu_stat_rows = 0;
    int ecu_stat_columns = 0;
    double *ecu_statistics = NULL;

    ocp_nlp_get(
        nlp_solver, "sqp_iter", &ecu_sqp_iterations);

    ocp_nlp_get(
        nlp_solver, "stat_m", &ecu_stat_rows);

    ocp_nlp_get(
        nlp_solver, "stat_n", &ecu_stat_columns);

    ocp_nlp_get(
        nlp_solver, "stat", &ecu_statistics);

    int ecu_valid_rows = ecu_sqp_iterations + 1;

    if (ecu_valid_rows > ecu_stat_rows)
    {
        ecu_valid_rows = ecu_stat_rows;
    }

    if (ecu_valid_rows > ECU_HISTORY_ROWS)
    {
        ecu_valid_rows = ECU_HISTORY_ROWS;
    }

    if (ecu_statistics == NULL || ecu_stat_columns < 6 ||
        ecu_valid_rows < 1)
    {
        ssSetErrorStatus(S, "Unexpected acados SQP statistics layout.");
        return;
    }

    for (int row = 0; row < ecu_valid_rows; ++row)
    {
        for (int residual = 0; residual < 4; ++residual)
        {
            ecu_residual_history[residual + 4 * row] =
                ecu_statistics[row * ecu_stat_columns + residual];
        }

        /*
         * Row zero is the initial iterate: no QP has been solved yet.
         * Subsequent rows contain QP counts for the preceding SQP step.
         */
        if (row > 0)
        {
            ecu_qp_history[row] =
                ecu_statistics[row * ecu_stat_columns + 5];
        }
    }

    *ecu_history_length = (double) ecu_valid_rows;

    /* Verify the generated port matches the solver's multiplier vector. */
    const int ecu_actual_lam_size =
        ocp_nlp_dims_get_from_attr(
            nlp_config, nlp_dims, nlp_out, 0, "lam");

    if (ecu_actual_lam_size != ECU_LAM_STAGE0_SIZE)
    {
        ssSetErrorStatus(S, "Stage-zero multiplier dimension mismatch.");
        return;
    }

    ocp_nlp_out_get(
        nlp_config, nlp_dims, nlp_out, 0, "lam", ecu_lam_stage0);

}

static void mdlTerminate(SimStruct *S)
{
    ecu_vehicle_nmpc_solver_capsule *capsule = ssGetUserData(S);

    ecu_vehicle_nmpc_acados_free(capsule);
    ecu_vehicle_nmpc_acados_free_capsule(capsule);
}


#ifdef  MATLAB_MEX_FILE
#include "simulink.c"
#else
#include "cg_sfun.h"
#endif
