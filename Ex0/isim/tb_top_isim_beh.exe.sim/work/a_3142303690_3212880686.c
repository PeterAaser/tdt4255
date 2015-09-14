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
static const char *ng0 = "/home/shomed/a/anderlim/Desktop/tdt4255/Ex0/src/framework/uart/uartRx.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_3142303690_3212880686_p_0(char *t0)
{
    char t16[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(32, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3476);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(33, ng0);
    t1 = xsi_get_transient_memory(2U);
    memset(t1, 0, 2U);
    t5 = t1;
    memset(t5, (unsigned char)3, 2U);
    t6 = (t0 + 3576);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 2U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1328U);
    t5 = *((char **)t2);
    t11 = (0 - 1);
    t12 = (t11 * -1);
    t13 = (1U * t12);
    t14 = (0 + t13);
    t2 = (t5 + t14);
    t4 = *((unsigned char *)t2);
    t6 = (t0 + 868U);
    t7 = *((char **)t6);
    t15 = *((unsigned char *)t7);
    t8 = ((IEEE_P_2592010699) + 2312);
    t6 = xsi_base_array_concat(t6, t16, t8, (char)99, t4, (char)99, t15, (char)101);
    t9 = (t0 + 3576);
    t10 = (t9 + 32U);
    t17 = *((char **)t10);
    t18 = (t17 + 32U);
    t19 = *((char **)t18);
    memcpy(t19, t6, 2U);
    xsi_driver_first_trans_fast(t9);
    goto LAB3;

}

static void work_a_3142303690_3212880686_p_1(char *t0)
{
    char t21[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3484);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(44, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 3612);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 776U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)3);
    if (t11 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1512U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 == 1)
        goto LAB13;

LAB14:    t2 = (t0 + 1328U);
    t7 = *((char **)t2);
    t15 = (1 - 1);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t7 + t18);
    t19 = *((unsigned char *)t2);
    t20 = (t19 == (unsigned char)2);
    t12 = t20;

LAB15:    if (t12 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t5 = (t0 + 3612);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 4U);
    xsi_driver_first_trans_fast(t5);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 1420U);
    t9 = *((char **)t8);
    t8 = (t0 + 6656U);
    t10 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t21, t9, t8, 1);
    t22 = (t0 + 3612);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 32U);
    t26 = *((char **)t25);
    memcpy(t26, t10, 4U);
    xsi_driver_first_trans_fast(t22);
    goto LAB11;

LAB13:    t12 = (unsigned char)1;
    goto LAB15;

}

static void work_a_3142303690_3212880686_p_2(char *t0)
{
    char t15[16];
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
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;

LAB0:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3492);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 3648);
    t5 = (t1 + 32U);
    t6 = *((char **)t5);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t9 = *((unsigned char *)t5);
    t10 = (t9 == (unsigned char)2);
    if (t10 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t9 = *((unsigned char *)t2);
    t10 = (t9 == (unsigned char)3);
    if (t10 == 1)
        goto LAB18;

LAB19:    t4 = (unsigned char)0;

LAB20:    if (t4 == 1)
        goto LAB15;

LAB16:    t3 = (unsigned char)0;

LAB17:    if (t3 != 0)
        goto LAB13;

LAB14:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 3648);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t13 = (t8 + 32U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB8;

LAB10:    t2 = (t0 + 1236U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    t4 = t12;
    goto LAB12;

LAB13:    xsi_set_current_line(64, ng0);
    t13 = (t0 + 3648);
    t19 = (t13 + 32U);
    t20 = *((char **)t19);
    t21 = (t20 + 32U);
    t22 = *((char **)t21);
    *((unsigned char *)t22) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);
    goto LAB8;

LAB15:    t13 = (t0 + 1236U);
    t14 = *((char **)t13);
    t12 = *((unsigned char *)t14);
    t18 = (t12 == (unsigned char)3);
    t3 = t18;
    goto LAB17;

LAB18:    t1 = (t0 + 1604U);
    t5 = *((char **)t1);
    t1 = (t0 + 6672U);
    t6 = (t0 + 6737);
    t8 = (t15 + 0U);
    t13 = (t8 + 0U);
    *((int *)t13) = 0;
    t13 = (t8 + 4U);
    *((int *)t13) = 3;
    t13 = (t8 + 8U);
    *((int *)t13) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t13 = (t8 + 12U);
    *((unsigned int *)t13) = t17;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t5, t1, t6, t15);
    t4 = t11;
    goto LAB20;

}

static void work_a_3142303690_3212880686_p_3(char *t0)
{
    char t15[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t16;

LAB0:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3500);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(72, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t5 = t1;
    memset(t5, (unsigned char)2, 4U);
    t6 = (t0 + 3684);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 4U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t11 = (t4 == (unsigned char)2);
    if (t11 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB10;

LAB11:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(75, ng0);
    t2 = xsi_get_transient_memory(4U);
    memset(t2, 0, 4U);
    t6 = t2;
    memset(t6, (unsigned char)2, 4U);
    t7 = (t0 + 3684);
    t8 = (t7 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t12 = *((char **)t10);
    memcpy(t12, t2, 4U);
    xsi_driver_first_trans_fast(t7);
    goto LAB8;

LAB10:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 1604U);
    t6 = *((char **)t1);
    t1 = (t0 + 6672U);
    t7 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t15, t6, t1, 1);
    t8 = (t0 + 3684);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 32U);
    t16 = *((char **)t12);
    memcpy(t16, t7, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB8;

LAB12:    t1 = (t0 + 1236U);
    t5 = *((char **)t1);
    t13 = *((unsigned char *)t5);
    t14 = (t13 == (unsigned char)3);
    t3 = t14;
    goto LAB14;

}

static void work_a_3142303690_3212880686_p_4(char *t0)
{
    char t23[16];
    char t25[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t24;
    char *t26;
    char *t27;
    int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;

LAB0:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3508);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(85, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 3720);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast(t6);
    goto LAB3;

LAB5:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1328U);
    t7 = *((char **)t2);
    t15 = (1 - 1);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t2 = (t7 + t18);
    t19 = *((unsigned char *)t2);
    t8 = (t0 + 1696U);
    t9 = *((char **)t8);
    t20 = (7 - 7);
    t21 = (t20 * 1U);
    t22 = (0 + t21);
    t8 = (t9 + t22);
    t24 = ((IEEE_P_2592010699) + 2312);
    t26 = (t25 + 0U);
    t27 = (t26 + 0U);
    *((int *)t27) = 7;
    t27 = (t26 + 4U);
    *((int *)t27) = 1;
    t27 = (t26 + 8U);
    *((int *)t27) = -1;
    t28 = (1 - 7);
    t29 = (t28 * -1);
    t29 = (t29 + 1);
    t27 = (t26 + 12U);
    *((unsigned int *)t27) = t29;
    t10 = xsi_base_array_concat(t10, t23, t24, (char)99, t19, (char)97, t8, t25, (char)101);
    t27 = (t0 + 3720);
    t30 = (t27 + 32U);
    t31 = *((char **)t30);
    t32 = (t31 + 32U);
    t33 = *((char **)t32);
    memcpy(t33, t10, 8U);
    xsi_driver_first_trans_fast(t27);
    goto LAB8;

LAB10:    t2 = (t0 + 1236U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    t4 = t14;
    goto LAB12;

}

static void work_a_3142303690_3212880686_p_5(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    int t15;
    unsigned int t16;
    unsigned char t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 660U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3516);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(96, ng0);
    t1 = xsi_get_transient_memory(8U);
    memset(t1, 0, 8U);
    t5 = t1;
    memset(t5, (unsigned char)2, 8U);
    t6 = (t0 + 3756);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 8U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(97, ng0);
    t1 = (t0 + 3792);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    if (t13 == 1)
        goto LAB13;

LAB14:    t11 = (unsigned char)0;

LAB15:    if (t11 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 3792);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(100, ng0);
    t10 = (t0 + 1696U);
    t21 = *((char **)t10);
    t10 = (t0 + 3756);
    t22 = (t10 + 32U);
    t23 = *((char **)t22);
    t24 = (t23 + 32U);
    t25 = *((char **)t24);
    memcpy(t25, t21, 8U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(101, ng0);
    t1 = (t0 + 3792);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

LAB10:    t10 = (t0 + 1144U);
    t18 = *((char **)t10);
    t19 = *((unsigned char *)t18);
    t20 = (t19 == (unsigned char)3);
    t4 = t20;
    goto LAB12;

LAB13:    t2 = (t0 + 1604U);
    t6 = *((char **)t2);
    t2 = (t0 + 6672U);
    t7 = (t0 + 6741);
    t9 = (t14 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 0;
    t10 = (t9 + 4U);
    *((int *)t10) = 3;
    t10 = (t9 + 8U);
    *((int *)t10) = 1;
    t15 = (3 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t16;
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t6, t2, t7, t14);
    t11 = t17;
    goto LAB15;

}

static void work_a_3142303690_3212880686_p_6(char *t0)
{
    char t6[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1420U);
    t3 = *((char **)t2);
    t2 = (t0 + 6656U);
    t4 = (t0 + 6745);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (3 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t19 = (t0 + 3828);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 3524);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 3828);
    t15 = (t8 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t8 = (t0 + 776U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t1 = t14;
    goto LAB7;

LAB9:    goto LAB2;

}

static void work_a_3142303690_3212880686_p_7(char *t0)
{
    char t6[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 1420U);
    t3 = *((char **)t2);
    t2 = (t0 + 6656U);
    t4 = (t0 + 6749);
    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 0;
    t8 = (t7 + 4U);
    *((int *)t8) = 3;
    t8 = (t7 + 8U);
    *((int *)t8) = 1;
    t9 = (3 - 0);
    t10 = (t9 * 1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t4, t6);
    if (t11 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:
LAB8:    t19 = (t0 + 3864);
    t20 = (t19 + 32U);
    t21 = *((char **)t20);
    t22 = (t21 + 32U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)2;
    xsi_driver_first_trans_fast(t19);

LAB2:    t24 = (t0 + 3532);
    *((int *)t24) = 1;

LAB1:    return;
LAB3:    t8 = (t0 + 3864);
    t15 = (t8 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    *((unsigned char *)t18) = (unsigned char)3;
    xsi_driver_first_trans_fast(t8);
    goto LAB2;

LAB5:    t8 = (t0 + 776U);
    t12 = *((char **)t8);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)3);
    t1 = t14;
    goto LAB7;

LAB9:    goto LAB2;

}


extern void work_a_3142303690_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3142303690_3212880686_p_0,(void *)work_a_3142303690_3212880686_p_1,(void *)work_a_3142303690_3212880686_p_2,(void *)work_a_3142303690_3212880686_p_3,(void *)work_a_3142303690_3212880686_p_4,(void *)work_a_3142303690_3212880686_p_5,(void *)work_a_3142303690_3212880686_p_6,(void *)work_a_3142303690_3212880686_p_7};
	xsi_register_didat("work_a_3142303690_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_3142303690_3212880686.didat");
	xsi_register_executes(pe);
}
