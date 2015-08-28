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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/DM kons/oving1/ProgramCounter.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1007874614_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(22, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB8;

LAB9:
LAB3:    t1 = (t0 + 1696);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(23, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    if (-1 == -1)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    t7 = (t6 - 31);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (t5 + t9);
    t11 = (0 - 31);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    memset(t10, (unsigned char)2, t13);
    t14 = (t0 + 1740);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 32U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB5:    t6 = 31;
    goto LAB7;

LAB8:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t2 = (t0 + 1740);
    t10 = (t2 + 32U);
    t14 = *((char **)t10);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    memcpy(t16, t5, 32U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

}


extern void work_a_1007874614_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1007874614_3212880686_p_0};
	xsi_register_didat("work_a_1007874614_3212880686", "isim/tb_ProgramCounter_isim_beh.exe.sim/work/a_1007874614_3212880686.didat");
	xsi_register_executes(pe);
}
