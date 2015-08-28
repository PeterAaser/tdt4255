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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/oving0/oving0/src/control.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3037777339_1878664202_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    static char *nl0[] = {&&LAB8, &&LAB9, &&LAB10, &&LAB11, &&LAB12, &&LAB12, &&LAB12, &&LAB12};

LAB0:    xsi_set_current_line(42, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 568U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 2844);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2896);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1696U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB7:    goto LAB3;

LAB8:    xsi_set_current_line(47, ng0);
    t6 = (t0 + 868U);
    t7 = *((char **)t6);
    t9 = *((unsigned char *)t7);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 2896);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB14:    goto LAB7;

LAB9:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2896);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB10:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    if (-1 == -1)
        goto LAB19;

LAB20:    t14 = 0;

LAB21:    t15 = (t14 - 7);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t6 = (t5 + t17);
    t18 = (0 - 7);
    t19 = (t18 * -1);
    t19 = (t19 + 1);
    t20 = (1U * t19);
    memset(t6, (unsigned char)2, t20);
    t3 = 1;
    if (8U == 8U)
        goto LAB22;

LAB23:    t3 = 0;

LAB24:    if (t3 != 0)
        goto LAB16;

LAB18:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t1 = (t0 + 5688);
    t3 = 1;
    if (8U == 8U)
        goto LAB30;

LAB31:    t3 = 0;

LAB32:    if (t3 != 0)
        goto LAB28;

LAB29:
LAB17:    goto LAB7;

LAB11:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2896);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);
    goto LAB7;

LAB12:    xsi_set_current_line(63, ng0);
    goto LAB7;

LAB13:    xsi_set_current_line(48, ng0);
    t6 = (t0 + 2896);
    t8 = (t6 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t6);
    goto LAB14;

LAB16:    xsi_set_current_line(56, ng0);
    t11 = (t0 + 2896);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t22 = (t13 + 32U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast(t11);
    goto LAB17;

LAB19:    t14 = 7;
    goto LAB21;

LAB22:    t21 = 0;

LAB25:    if (t21 < 8U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t7 = (t2 + t21);
    t8 = (t1 + t21);
    if (*((unsigned char *)t7) != *((unsigned char *)t8))
        goto LAB23;

LAB27:    t21 = (t21 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(58, ng0);
    goto LAB17;

LAB30:    t14 = 0;

LAB33:    if (t14 < 8U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t2 + t14);
    t7 = (t1 + t14);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB31;

LAB35:    t14 = (t14 + 1);
    goto LAB33;

}

static void work_a_3037777339_1878664202_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    static char *nl0[] = {&&LAB5, &&LAB3, &&LAB5, &&LAB4, &&LAB5, &&LAB5, &&LAB5, &&LAB5};

LAB0:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2932);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(71, ng0);
    t1 = (t0 + 2968);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(72, ng0);
    t1 = (t0 + 3004);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3040);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3076);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 1696U);
    t2 = *((char **)t1);
    t6 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t6);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 2852);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(77, ng0);
    t3 = (t0 + 3004);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(78, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t9 = (15 - 15);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t3 = (t0 + 3112);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t9 = (15 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t1 = (t2 + t11);
    t3 = (t0 + 3148);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    t7 = (t5 + 32U);
    t8 = *((char **)t7);
    memcpy(t8, t1, 8U);
    xsi_driver_first_trans_fast(t3);
    goto LAB2;

LAB4:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2932);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    t1 = (t0 + 3184);
    t3 = (t1 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t7 = *((char **)t5);
    memcpy(t7, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3220);
    t2 = (t1 + 32U);
    t3 = *((char **)t2);
    t4 = (t3 + 32U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(85, ng0);
    goto LAB2;

}


extern void work_a_3037777339_1878664202_init()
{
	static char *pe[] = {(void *)work_a_3037777339_1878664202_p_0,(void *)work_a_3037777339_1878664202_p_1};
	xsi_register_didat("work_a_3037777339_1878664202", "isim/control_isim_beh.exe.sim/work/a_3037777339_1878664202.didat");
	xsi_register_executes(pe);
}
