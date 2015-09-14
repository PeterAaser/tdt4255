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
static const char *ng0 = "/home/shomed/a/anderlim/Desktop/tdt4255/Ex0/src/control.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3222946569_1878664202_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned char t20;
    int t21;
    int t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(43, ng0);
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
LAB3:    t1 = (t0 + 2888);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t1 = (t0 + 2948);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = 0;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2984);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 3056);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(49, ng0);
    t1 = (t0 + 3128);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1788U);
    t5 = *((char **)t2);
    t9 = *((int *)t5);
    t4 = (t9 == 0);
    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t4 = (t9 == 1);
    if (t4 == 1)
        goto LAB13;

LAB14:    t3 = (unsigned char)0;

LAB15:    if (t3 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 2);
    if (t3 != 0)
        goto LAB16;

LAB17:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 3);
    if (t3 != 0)
        goto LAB24;

LAB25:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 4);
    if (t3 != 0)
        goto LAB26;

LAB27:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 5);
    if (t3 != 0)
        goto LAB28;

LAB29:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 6);
    if (t3 != 0)
        goto LAB30;

LAB31:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t3 = (t9 == 7);
    if (t3 != 0)
        goto LAB35;

LAB36:
LAB11:    goto LAB3;

LAB7:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3020);
    t6 = (t2 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(57, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((int *)t7) = 1;
    xsi_driver_first_trans_fast(t1);
    goto LAB8;

LAB10:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2984);
    t6 = (t1 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((int *)t7) = 2;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB13:    t1 = (t0 + 868U);
    t5 = *((char **)t1);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)2);
    t3 = t12;
    goto LAB15;

LAB16:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 2984);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t9 = (9 - 15);
    t13 = (t9 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)2);
    if (t11 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t16 = (t9 + 2);
    t1 = (t0 + 2948);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);

LAB19:    goto LAB11;

LAB18:    xsi_set_current_line(67, ng0);
    t7 = (t0 + 1788U);
    t8 = *((char **)t7);
    t21 = *((int *)t8);
    t22 = (t21 + 1);
    t7 = (t0 + 2948);
    t10 = (t7 + 32U);
    t23 = *((char **)t10);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    *((int *)t25) = t22;
    xsi_driver_first_trans_fast(t7);
    goto LAB19;

LAB21:    t5 = (t0 + 776U);
    t6 = *((char **)t5);
    t16 = (8 - 15);
    t17 = (t16 * -1);
    t18 = (1U * t17);
    t19 = (0 + t18);
    t5 = (t6 + t19);
    t12 = *((unsigned char *)t5);
    t20 = (t12 == (unsigned char)2);
    t3 = t20;
    goto LAB23;

LAB24:    xsi_set_current_line(73, ng0);
    t1 = (t0 + 3164);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(74, ng0);
    t1 = (t0 + 3020);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(75, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB26:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 3128);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(79, ng0);
    t1 = (t0 + 3056);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(80, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t16 = (t9 + 1);
    t1 = (t0 + 2948);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB28:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 3128);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 3092);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(85, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t16 = (t9 + 1);
    t1 = (t0 + 2948);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB30:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 3092);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(89, ng0);
    t1 = (t0 + 3056);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t9 = (8 - 15);
    t13 = (t9 * -1);
    t14 = (1U * t13);
    t15 = (0 + t14);
    t1 = (t2 + t15);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 3200);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);

LAB33:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t9 = *((int *)t2);
    t16 = (t9 + 1);
    t1 = (t0 + 2948);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((int *)t8) = t16;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

LAB32:    xsi_set_current_line(91, ng0);
    t5 = (t0 + 3200);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = (unsigned char)0;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB33;

LAB35:    xsi_set_current_line(98, ng0);
    t1 = (t0 + 3020);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(99, ng0);
    t1 = (t0 + 3164);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(100, ng0);
    t1 = (t0 + 2948);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((int *)t7) = 0;
    xsi_driver_first_trans_fast(t1);
    goto LAB11;

}

static void work_a_3222946569_1878664202_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(104, ng0);

LAB3:    t1 = (t0 + 776U);
    t2 = *((char **)t1);
    t3 = (15 - 7);
    t4 = (t3 * 1U);
    t5 = (0 + t4);
    t1 = (t2 + t5);
    t6 = (t0 + 3236);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);

LAB2:    t11 = (t0 + 2896);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3222946569_1878664202_p_2(char *t0)
{
    char *t1;
    char *t2;
    int t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 1788U);
    t2 = *((char **)t1);
    t3 = *((int *)t2);
    t1 = (t0 + 3272);
    t4 = (t1 + 32U);
    t5 = *((char **)t4);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((int *)t7) = t3;
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t8 = (t0 + 2904);
    *((int *)t8) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3222946569_1878664202_init()
{
	static char *pe[] = {(void *)work_a_3222946569_1878664202_p_0,(void *)work_a_3222946569_1878664202_p_1,(void *)work_a_3222946569_1878664202_p_2};
	xsi_register_didat("work_a_3222946569_1878664202", "isim/control_tb_isim_beh.exe.sim/work/a_3222946569_1878664202.didat");
	xsi_register_executes(pe);
}
