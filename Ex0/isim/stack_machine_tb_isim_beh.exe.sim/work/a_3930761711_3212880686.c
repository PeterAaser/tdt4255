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

/* This file is designed for use with ISim build 0x141a37e9 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/shomed/a/anderlim/Desktop/tdt4255/Ex0/RegFile.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3930761711_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    char *t7;
    unsigned char t8;
    unsigned int t9;
    unsigned int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    int t21;

LAB0:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB7;

LAB8:
LAB3:    t1 = (t0 + 2176);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(8192U);
    memset(t1, 0, 8192U);
    t5 = t1;
    t6 = (8U * 1U);
    t7 = t5;
    memset(t7, (unsigned char)2, t6);
    t8 = (t6 != 0);
    if (t8 == 1)
        goto LAB5;

LAB6:    t10 = (8U * 1U);
    t11 = (0 - 0);
    t12 = (t11 * 1);
    t13 = (t10 * t12);
    t14 = (t5 + t13);
    t15 = t14;
    memset(t15, (unsigned char)2, t10);
    t16 = (t0 + 2228);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 32U);
    t20 = *((char **)t19);
    memcpy(t20, t1, 8192U);
    xsi_driver_first_trans_fast(t16);
    goto LAB3;

LAB5:    t9 = (8192U / t6);
    xsi_mem_set_data(t5, t5, t6, t9);
    goto LAB6;

LAB7:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t8 = (t4 == (unsigned char)3);
    if (t8 != 0)
        goto LAB9;

LAB11:
LAB10:    goto LAB3;

LAB9:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 960U);
    t7 = *((char **)t2);
    t2 = (t0 + 868U);
    t14 = *((char **)t2);
    t11 = *((int *)t14);
    t21 = (t11 - 0);
    t6 = (t21 * 1);
    t9 = (8U * t6);
    t10 = (0U + t9);
    t2 = (t0 + 2228);
    t15 = (t2 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 8U);
    xsi_driver_first_trans_delta(t2, t10, 8U, 0LL);
    goto LAB10;

}

static void work_a_3930761711_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 1144U);
    t2 = *((char **)t1);
    t1 = (t0 + 868U);
    t3 = *((char **)t1);
    t4 = *((int *)t3);
    t5 = (t4 - 1);
    t6 = (t5 - 0);
    t7 = (t6 * 1);
    xsi_vhdl_check_range_of_index(0, 1023, 1, t5);
    t8 = (8U * t7);
    t9 = (0 + t8);
    t1 = (t2 + t9);
    t10 = (t0 + 2264);
    t11 = (t10 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    memcpy(t14, t1, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 2184);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3930761711_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3930761711_3212880686_p_0,(void *)work_a_3930761711_3212880686_p_1};
	xsi_register_didat("work_a_3930761711_3212880686", "isim/stack_machine_tb_isim_beh.exe.sim/work/a_3930761711_3212880686.didat");
	xsi_register_executes(pe);
}
