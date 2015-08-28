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
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_3564397177;
char *IEEE_P_3499444699;
char *WORK_P_0982324371;
char *STD_TEXTIO;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_p_2408649327_init();
    work_a_3222946569_1878664202_init();
    work_a_0389673927_3212880686_init();
    work_a_3376553604_1878664202_init();
    work_a_1416862925_1878664202_init();
    work_p_0982324371_init();
    work_a_0198830370_3212880686_init();
    work_a_3059077005_3212880686_init();
    work_a_3142303690_3212880686_init();
    work_a_3789895987_3212880686_init();
    work_a_3399466203_3212880686_init();
    work_a_3621634695_3212880686_init();
    xilinxcorelib_a_3531360208_2959432447_init();
    xilinxcorelib_a_4214018923_2959432447_init();
    xilinxcorelib_a_2804806948_1709443946_init();
    xilinxcorelib_a_0774306249_0543512595_init();
    xilinxcorelib_a_1910087818_3212880686_init();
    work_a_2030061974_0284528763_init();
    work_a_2822150758_3212880686_init();
    work_a_2395137934_3212880686_init();
    work_a_3622719947_2372691052_init();


    xsi_register_tops("work_a_3622719947_2372691052");

    WORK_P_2408649327 = xsi_get_engine_memory("work_p_2408649327");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    WORK_P_0982324371 = xsi_get_engine_memory("work_p_0982324371");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");

    return xsi_run_simulation(argc, argv);

}
