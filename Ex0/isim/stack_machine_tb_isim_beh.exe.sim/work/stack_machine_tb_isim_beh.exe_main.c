/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

#include "xsi.h"

struct XSI_INFO xsi_info;

char *WORK_P_2408649327;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *WORK_P_1555542850;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_p_2408649327_init();
    work_p_1555542850_init();
    work_a_3222946569_1878664202_init();
    work_a_3930761711_3212880686_init();
    work_a_3539408484_1878664202_init();
    work_a_2670101705_1878664202_init();
    work_a_2415281640_1878664202_init();


    xsi_register_tops("work_a_2415281640_1878664202");

    WORK_P_2408649327 = xsi_get_engine_memory("work_p_2408649327");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_1555542850 = xsi_get_engine_memory("work_p_1555542850");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
