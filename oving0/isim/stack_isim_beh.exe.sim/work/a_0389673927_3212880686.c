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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/oving0/oving0/storage.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0389673927_3212880686_p_0(char *t0)
{
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    int t9;
    int t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 660U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 1972);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t3 = (t0 + 776U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1144U);
    t3 = *((char **)t1);
    t1 = (t0 + 960U);
    t4 = *((char **)t1);
    t9 = *((int *)t4);
    t10 = (t9 - 0);
    t12 = (t10 * 1);
    xsi_vhdl_check_range_of_index(0, 255, 1, t9);
    t13 = (8U * t12);
    t14 = (0 + t13);
    t1 = (t3 + t14);
    t7 = (t0 + 2052);
    t8 = (t7 + 32U);
    t15 = *((char **)t8);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(51, ng0);
    t3 = (t0 + 592U);
    t7 = *((char **)t3);
    t3 = (t0 + 960U);
    t8 = *((char **)t3);
    t9 = *((int *)t8);
    t10 = (t9 + 1);
    t11 = (t10 - 0);
    t12 = (t11 * 1);
    t13 = (8U * t12);
    t14 = (0U + t13);
    t3 = (t0 + 2016);
    t15 = (t3 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    memcpy(t18, t7, 8U);
    xsi_driver_first_trans_delta(t3, t14, 8U, 0LL);
    xsi_set_current_line(52, ng0);
    t1 = (t0 + 592U);
    t3 = *((char **)t1);
    t1 = (t0 + 2052);
    t4 = (t1 + 32U);
    t7 = *((char **)t4);
    t8 = (t7 + 32U);
    t15 = *((char **)t8);
    memcpy(t15, t3, 8U);
    xsi_driver_first_trans_fast_port(t1);
    goto LAB6;

}


extern void work_a_0389673927_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0389673927_3212880686_p_0};
	xsi_register_didat("work_a_0389673927_3212880686", "isim/stack_isim_beh.exe.sim/work/a_0389673927_3212880686.didat");
	xsi_register_executes(pe);
}
