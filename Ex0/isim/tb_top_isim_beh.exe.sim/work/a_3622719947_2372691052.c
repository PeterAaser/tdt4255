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
extern char *IEEE_P_3499444699;
static const char *ng1 = "/home/shomed/a/anderlim/Desktop/tdt4255/Ex0/src/framework/rpnsystem_tb.vhd";

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


void work_a_3622719947_2372691052_sub_603117149_4163069965(char *t0, char *t1, char *t2, char *t3, unsigned int t4, unsigned int t5, char *t6)
{
    char t8[16];
    char t9[16];
    char *t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    int64 t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t29;
    int t30;
    int t31;
    int t32;
    int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;

LAB0:    t10 = (t9 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 7;
    t11 = (t10 + 4U);
    *((int *)t11) = 0;
    t11 = (t10 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t13 = (t12 * -1);
    t13 = (t13 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t13;
    t11 = (t8 + 4U);
    t14 = (t2 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t8 + 8U);
    *((char **)t15) = t9;
    t13 = (0 + t4);
    t16 = (t6 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 1132U);
    t16 = *((char **)t10);
    t20 = *((int64 *)t16);
    xsi_process_wait(t1, t20);

LAB7:    t10 = (t1 + 48U);
    t17 = *((char **)t10);
    t18 = (t17 + 704U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 48U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 48U);
    t24 = *((char **)t23);
    t25 = (t24 + 704U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB8;

LAB9:    t26 = (t1 + 48U);
    t27 = *((char **)t26);
    t28 = (t27 + 704U);
    *((unsigned int *)t28) = 3U;

LAB5:
LAB6:
LAB4:    t12 = 0;
    t29 = 7;

LAB10:    if (t12 <= t29)
        goto LAB11;

LAB13:    t13 = (0 + t4);
    t10 = (t6 + 32U);
    t16 = *((char **)t10);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_delta(t6, t13, 1, 0LL);
    t10 = (t0 + 1132U);
    t16 = *((char **)t10);
    t20 = *((int64 *)t16);
    xsi_process_wait(t1, t20);

LAB24:    t10 = (t1 + 48U);
    t17 = *((char **)t10);
    t18 = (t17 + 704U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 48U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 48U);
    t24 = *((char **)t23);
    t25 = (t24 + 704U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB25;

LAB26:    t26 = (t1 + 48U);
    t27 = *((char **)t26);
    t28 = (t27 + 704U);
    *((unsigned int *)t28) = 3U;

LAB22:
LAB23:
LAB21:
LAB1:    return;
LAB3:    *((char **)t11) = t2;
    goto LAB2;

LAB8:    xsi_saveStackAndSuspend(t1);
    goto LAB9;

LAB11:    t10 = (t9 + 0U);
    t30 = *((int *)t10);
    t16 = (t9 + 8U);
    t31 = *((int *)t16);
    t32 = (t12 - t30);
    t13 = (t32 * t31);
    t17 = (t9 + 4U);
    t33 = *((int *)t17);
    xsi_vhdl_check_range_of_index(t30, t33, t31, t12);
    t34 = (1U * t13);
    t35 = (0 + t34);
    t18 = (t2 + t35);
    t14 = *((unsigned char *)t18);
    t36 = (0 + t4);
    t19 = (t6 + 32U);
    t21 = *((char **)t19);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = t14;
    xsi_driver_first_trans_delta(t6, t36, 1, 0LL);
    t10 = (t0 + 1132U);
    t16 = *((char **)t10);
    t20 = *((int64 *)t16);
    xsi_process_wait(t1, t20);

LAB17:    t10 = (t1 + 48U);
    t17 = *((char **)t10);
    t18 = (t17 + 704U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 48U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t23 = (t1 + 48U);
    t24 = *((char **)t23);
    t25 = (t24 + 704U);
    t13 = *((unsigned int *)t25);
    if (t13 == 1)
        goto LAB18;

LAB19:    t26 = (t1 + 48U);
    t27 = *((char **)t26);
    t28 = (t27 + 704U);
    *((unsigned int *)t28) = 3U;

LAB15:
LAB16:
LAB14:
LAB12:    if (t12 == t29)
        goto LAB13;

LAB20:    t30 = (t12 + 1);
    t12 = t30;
    goto LAB10;

LAB18:    xsi_saveStackAndSuspend(t1);
    goto LAB19;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

}

void work_a_3622719947_2372691052_sub_3703762024_4163069965(char *t0, char *t1, char *t2, char *t3, char *t4, unsigned int t5, unsigned int t6, char *t7)
{
    char t9[16];
    char t22[16];
    char *t10;
    unsigned char t11;
    char *t12;
    int t13;
    char *t14;
    int t15;
    char *t16;
    int t17;
    char *t18;
    int t19;
    int t20;
    int t21;
    char *t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    unsigned int t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    char *t33;
    unsigned char t34;
    char *t35;
    char *t36;
    unsigned int t37;
    char *t38;
    unsigned int t39;
    unsigned int t40;

LAB0:    t10 = (t9 + 4U);
    t11 = (t2 != 0);
    if (t11 == 1)
        goto LAB3;

LAB2:    t12 = (t9 + 8U);
    *((char **)t12) = t3;
    t14 = (t3 + 0U);
    t15 = *((int *)t14);
    t16 = (t3 + 4U);
    t17 = *((int *)t16);
    t18 = (t3 + 8U);
    t19 = *((int *)t18);
    if (t15 > t17)
        goto LAB8;

LAB9:    if (t19 == -1)
        goto LAB13;

LAB14:    t13 = t17;

LAB10:    t20 = 1;
    t21 = t13;

LAB4:    if (t20 <= t21)
        goto LAB5;

LAB7:
LAB1:    return;
LAB3:    *((char **)t10) = t2;
    goto LAB2;

LAB5:    t23 = (t3 + 0U);
    t24 = *((int *)t23);
    t25 = (t3 + 8U);
    t26 = *((int *)t25);
    t27 = (t20 - t24);
    t28 = (t27 * t26);
    t29 = (t3 + 4U);
    t30 = *((int *)t29);
    xsi_vhdl_check_range_of_index(t24, t30, t26, t20);
    t31 = (1U * t28);
    t32 = (0 + t31);
    t33 = (t2 + t32);
    t34 = *((unsigned char *)t33);
    t35 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t22, ((int)(t34)), 8);
    t36 = (t22 + 12U);
    t37 = *((unsigned int *)t36);
    t37 = (t37 * 1U);
    t38 = (char *)alloca(t37);
    memcpy(t38, t35, t37);
    t39 = (0U + t5);
    t40 = (0U + t6);
    work_a_3622719947_2372691052_sub_603117149_4163069965(t0, t1, t38, t4, t39, t40, t7);

LAB6:    if (t20 == t21)
        goto LAB7;

LAB15:    t13 = (t20 + 1);
    t20 = t13;
    goto LAB4;

LAB8:    if (t19 == 1)
        goto LAB11;

LAB12:    t13 = t15;
    goto LAB10;

LAB11:    t13 = t17;
    goto LAB10;

LAB13:    t13 = t15;
    goto LAB10;

}

void work_a_3622719947_2372691052_sub_1811116005_4163069965(char *t0, char *t1, char *t2, char *t3, char *t4, unsigned int t5, unsigned int t6, char *t7)
{
    char t9[16];
    char *t10;
    unsigned char t11;
    char *t12;
    char *t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;

LAB0:    t10 = (t9 + 4U);
    t11 = (t2 != 0);
    if (t11 == 1)
        goto LAB3;

LAB2:    t12 = (t9 + 8U);
    *((char **)t12) = t3;
    t13 = (t3 + 12U);
    t14 = *((unsigned int *)t13);
    t14 = (t14 * 1U);
    t15 = (char *)alloca(t14);
    memcpy(t15, t2, t14);
    t16 = (0U + t5);
    t17 = (0U + t6);
    work_a_3622719947_2372691052_sub_3703762024_4163069965(t0, t1, t15, t3, t4, t16, t17, t7);
    t13 = (t0 + 4164);
    t14 = (0U + t5);
    t16 = (0U + t6);
    work_a_3622719947_2372691052_sub_603117149_4163069965(t0, t1, t13, t4, t14, t16, t7);

LAB1:    return;
LAB3:    *((char **)t10) = t2;
    goto LAB2;

}

static void work_a_3622719947_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1744U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(76, ng1);
    t2 = (t0 + 2096);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng1);
    t2 = (t0 + 1200U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1644);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(78, ng1);
    t2 = (t0 + 2096);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(79, ng1);
    t2 = (t0 + 1200U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1644);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_3622719947_2372691052_p_1(char *t0)
{
    char t9[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;
    int t10;
    unsigned int t11;
    char *t12;

LAB0:    t1 = (t0 + 1880U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(87, ng1);
    t2 = (t0 + 2132);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(88, ng1);
    t7 = (100 * 1000LL);
    t2 = (t0 + 1780);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(89, ng1);
    t2 = (t0 + 2132);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng1);
    t2 = (t0 + 1200U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 * 10);
    t2 = (t0 + 1780);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(94, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4172);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(95, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4181);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(96, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4190);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(98, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4199);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(99, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4208);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(100, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4217);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(101, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4226);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(102, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4235);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(103, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4244);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(105, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4253);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(106, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4262);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(107, ng1);
    t2 = (t0 + 1780);
    t3 = (t0 + 4271);
    t5 = (t9 + 0U);
    t6 = (t5 + 0U);
    *((int *)t6) = 1;
    t6 = (t5 + 4U);
    *((int *)t6) = 9;
    t6 = (t5 + 8U);
    *((int *)t6) = 1;
    t10 = (9 - 1);
    t11 = (t10 * 1);
    t11 = (t11 + 1);
    t6 = (t5 + 12U);
    *((unsigned int *)t6) = t11;
    t6 = (t0 + 752U);
    t12 = (t0 + 2168);
    work_a_3622719947_2372691052_sub_1811116005_4163069965(t0, t2, t3, t9, t6, 0U, 0U, t12);
    xsi_set_current_line(109, ng1);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB2;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

}


extern void work_a_3622719947_2372691052_init()
{
	static char *pe[] = {(void *)work_a_3622719947_2372691052_p_0,(void *)work_a_3622719947_2372691052_p_1};
	static char *se[] = {(void *)work_a_3622719947_2372691052_sub_603117149_4163069965,(void *)work_a_3622719947_2372691052_sub_3703762024_4163069965,(void *)work_a_3622719947_2372691052_sub_1811116005_4163069965};
	xsi_register_didat("work_a_3622719947_2372691052", "isim/tb_top_isim_beh.exe.sim/work/a_3622719947_2372691052.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
