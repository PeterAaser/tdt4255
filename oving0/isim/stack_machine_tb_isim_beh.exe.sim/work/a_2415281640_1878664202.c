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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/oving0/oving0/src/tests/stack_machine_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *STD_STANDARD;
extern char *WORK_P_1555542850;

unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *work_p_1555542850_sub_1085539107_606387733(char *, unsigned char );
char *work_p_1555542850_sub_967164683_606387733(char *, unsigned char , char *);


static void work_a_2415281640_1878664202_p_0(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    int64 t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t1 = (t0 + 1292U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t4 = (t3 / 2);
    t1 = (t0 + 1052U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 2228);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t4);
    t12 = (t0 + 2228);
    xsi_driver_intertial_reject(t12, t4, t4);

LAB2:    t13 = (t0 + 2152);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

void work_a_2415281640_1878664202_sub_1030774179_3539505537(char *t0, char *t1, unsigned char t2, char *t3, char *t4)
{
    char t6[16];
    char *t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned int t12;

LAB0:    t7 = (t6 + 4U);
    *((unsigned char *)t7) = t2;
    t8 = (t6 + 5U);
    t9 = (t3 != 0);
    if (t9 == 1)
        goto LAB3;

LAB2:    t10 = (t6 + 9U);
    *((char **)t10) = t4;
    if (t2 == 0)
        goto LAB4;

LAB5:
LAB1:    return;
LAB3:    *((char **)t8) = t3;
    goto LAB2;

LAB4:    t11 = (t4 + 12U);
    t12 = *((unsigned int *)t11);
    t12 = (t12 * 1U);
    xsi_report(t3, t12, (unsigned char)3);
    goto LAB5;

}

void work_a_2415281640_1878664202_sub_1664694819_3539505537(char *t0, char *t1, char *t2)
{
    char t4[16];
    char t5[16];
    char t18[16];
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    int t17;
    char *t19;
    int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    int64 t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 7;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t8 = (0 - 7);
    t9 = (t8 * -1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t7 = (t4 + 4U);
    t10 = (t2 != 0);
    if (t10 == 1)
        goto LAB3;

LAB2:    t11 = (t4 + 8U);
    *((char **)t11) = t5;
    t12 = (t0 + 776U);
    t13 = *((char **)t12);
    t14 = *((unsigned char *)t13);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 0)
        goto LAB4;

LAB5:    t8 = 0;
    t17 = 20;

LAB6:    if (t8 <= t17)
        goto LAB7;

LAB9:
LAB1:    return;
LAB3:    *((char **)t7) = t2;
    goto LAB2;

LAB4:    t12 = (t0 + 4525);
    xsi_report(t12, 47U, (unsigned char)3);
    goto LAB5;

LAB7:    t6 = (t0 + 868U);
    t12 = *((char **)t6);
    t10 = *((unsigned char *)t12);
    t14 = (t10 == (unsigned char)2);
    t6 = (t0 + 4572);
    t16 = (t18 + 0U);
    t19 = (t16 + 0U);
    *((int *)t19) = 1;
    t19 = (t16 + 4U);
    *((int *)t19) = 55;
    t19 = (t16 + 8U);
    *((int *)t19) = 1;
    t20 = (55 - 1);
    t9 = (t20 * 1);
    t9 = (t9 + 1);
    t19 = (t16 + 12U);
    *((unsigned int *)t19) = t9;
    work_a_2415281640_1878664202_sub_1030774179_3539505537(t0, t1, t14, t6, t18);
    t6 = (t0 + 960U);
    t12 = *((char **)t6);
    t10 = 1;
    if (8U == 8U)
        goto LAB10;

LAB11:    t10 = 0;

LAB12:    t16 = (t0 + 4627);
    t21 = (t18 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 1;
    t22 = (t21 + 4U);
    *((int *)t22) = 41;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t20 = (41 - 1);
    t23 = (t20 * 1);
    t23 = (t23 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t23;
    work_a_2415281640_1878664202_sub_1030774179_3539505537(t0, t1, t10, t16, t18);
    t6 = (t0 + 1292U);
    t12 = *((char **)t6);
    t24 = *((int64 *)t12);
    xsi_process_wait(t1, t24);

LAB19:    t6 = (t1 + 48U);
    t13 = *((char **)t6);
    t16 = (t13 + 704U);
    *((unsigned int *)t16) = 1U;
    t19 = (t1 + 48U);
    t21 = *((char **)t19);
    t22 = (t21 + 0U);
    getcontext(t22);
    t25 = (t1 + 48U);
    t26 = *((char **)t25);
    t27 = (t26 + 704U);
    t9 = *((unsigned int *)t27);
    if (t9 == 1)
        goto LAB20;

LAB21:    t28 = (t1 + 48U);
    t29 = *((char **)t28);
    t30 = (t29 + 704U);
    *((unsigned int *)t30) = 3U;

LAB17:
LAB18:
LAB16:
LAB8:    if (t8 == t17)
        goto LAB9;

LAB22:    t20 = (t8 + 1);
    t8 = t20;
    goto LAB6;

LAB10:    t9 = 0;

LAB13:    if (t9 < 8U)
        goto LAB14;
    else
        goto LAB12;

LAB14:    t6 = (t12 + t9);
    t13 = (t2 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t13))
        goto LAB11;

LAB15:    t9 = (t9 + 1);
    goto LAB13;

LAB20:    xsi_saveStackAndSuspend(t1);
    goto LAB21;

}

void work_a_2415281640_1878664202_sub_17004117_3539505537(char *t0, char *t1, char *t2, unsigned char t3)
{
    char t5[16];
    char t6[16];
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    unsigned char t11;
    char *t12;
    char *t13;
    char *t14;
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
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 15;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 15);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t5 + 4U);
    t11 = (t2 != 0);
    if (t11 == 1)
        goto LAB3;

LAB2:    t12 = (t5 + 8U);
    *((char **)t12) = t6;
    t13 = (t5 + 12U);
    *((unsigned char *)t13) = t3;
    t14 = (t0 + 2336);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    memcpy(t18, t2, 16U);
    xsi_driver_first_trans_fast(t14);
    if (t3 != 0)
        goto LAB4;

LAB6:
LAB5:    t7 = (t0 + 844U);
    xsi_add_dynamic_wait(t1, t7, -1, -1);

LAB10:    t14 = (t1 + 124U);
    t14 = *((char **)t14);
    xsi_wp_set_status(t14, 1);
    t15 = (t1 + 48U);
    t16 = *((char **)t15);
    t17 = (t16 + 704U);
    *((unsigned int *)t17) = 1U;
    t18 = (t1 + 48U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    getcontext(t20);
    t21 = (t1 + 48U);
    t22 = *((char **)t21);
    t23 = (t22 + 704U);
    t10 = *((unsigned int *)t23);
    if (t10 == 1)
        goto LAB11;

LAB12:    t24 = (t1 + 48U);
    t25 = *((char **)t24);
    t26 = (t25 + 704U);
    *((unsigned int *)t26) = 3U;

LAB8:
LAB9:    t27 = (t0 + 844U);
    t11 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t27, 0U, 0U);
    if (t11 == 1)
        goto LAB7;
    else
        goto LAB10;

LAB3:    *((char **)t8) = t2;
    goto LAB2;

LAB4:    t7 = (t0 + 2300);
    t14 = (t7 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    *((unsigned char *)t17) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB5;

LAB7:    xsi_remove_dynamic_wait(t1, t7);
    t11 = (!(t3));
    if (t11 != 0)
        goto LAB13;

LAB15:
LAB14:
LAB1:    return;
LAB11:    xsi_saveStackAndSuspend(t1);
    goto LAB12;

LAB13:    t7 = (t0 + 844U);
    xsi_add_dynamic_wait(t1, t7, -1, -1);

LAB19:    t14 = (t1 + 124U);
    t14 = *((char **)t14);
    xsi_wp_set_status(t14, 1);
    t15 = (t1 + 48U);
    t16 = *((char **)t15);
    t17 = (t16 + 704U);
    *((unsigned int *)t17) = 1U;
    t18 = (t1 + 48U);
    t19 = *((char **)t18);
    t20 = (t19 + 0U);
    getcontext(t20);
    t21 = (t1 + 48U);
    t22 = *((char **)t21);
    t23 = (t22 + 704U);
    t10 = *((unsigned int *)t23);
    if (t10 == 1)
        goto LAB20;

LAB21:    t24 = (t1 + 48U);
    t25 = *((char **)t24);
    t26 = (t25 + 704U);
    *((unsigned int *)t26) = 3U;

LAB17:
LAB18:    t27 = (t0 + 844U);
    t28 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t27, 0U, 0U);
    if (t28 == 1)
        goto LAB16;
    else
        goto LAB19;

LAB16:    xsi_remove_dynamic_wait(t1, t7);
    goto LAB14;

LAB20:    xsi_saveStackAndSuspend(t1);
    goto LAB21;

}

void work_a_2415281640_1878664202_sub_3411627744_3539505537(char *t0, char *t1, char *t2, char *t3, char *t4)
{
    char t6[24];
    char t7[16];
    char t24[16];
    char t26[16];
    char t33[16];
    char t35[16];
    char t41[16];
    char t43[16];
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    unsigned char t12;
    char *t13;
    char *t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t23;
    char *t25;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    char *t32;
    char *t34;
    char *t36;
    char *t37;
    int t38;
    char *t40;
    char *t42;
    char *t44;
    char *t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 7);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t6 + 4U);
    t12 = (t2 != 0);
    if (t12 == 1)
        goto LAB3;

LAB2:    t13 = (t6 + 8U);
    *((char **)t13) = t3;
    t14 = (t6 + 12U);
    t15 = (t4 != 0);
    if (t15 == 1)
        goto LAB5;

LAB4:    t16 = (t6 + 16U);
    *((char **)t16) = t7;
    t17 = (t0 + 960U);
    t18 = *((char **)t17);
    t19 = 1;
    if (8U == 8U)
        goto LAB6;

LAB7:    t19 = 0;

LAB8:    t21 = (t0 + 4668);
    t25 = ((STD_STANDARD) + 656);
    t27 = (t26 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 1;
    t28 = (t27 + 4U);
    *((int *)t28) = 6;
    t28 = (t27 + 8U);
    *((int *)t28) = 1;
    t29 = (6 - 1);
    t30 = (t29 * 1);
    t30 = (t30 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t30;
    t23 = xsi_base_array_concat(t23, t24, t25, (char)97, t21, t26, (char)97, t2, t3, (char)101);
    t28 = (t0 + 4674);
    t34 = ((STD_STANDARD) + 656);
    t36 = (t35 + 0U);
    t37 = (t36 + 0U);
    *((int *)t37) = 1;
    t37 = (t36 + 4U);
    *((int *)t37) = 15;
    t37 = (t36 + 8U);
    *((int *)t37) = 1;
    t38 = (15 - 1);
    t30 = (t38 * 1);
    t30 = (t30 + 1);
    t37 = (t36 + 12U);
    *((unsigned int *)t37) = t30;
    t32 = xsi_base_array_concat(t32, t33, t34, (char)97, t23, t24, (char)97, t28, t35, (char)101);
    t37 = (t0 + 4689);
    t42 = ((STD_STANDARD) + 656);
    t44 = (t43 + 0U);
    t45 = (t44 + 0U);
    *((int *)t45) = 1;
    t45 = (t44 + 4U);
    *((int *)t45) = 27;
    t45 = (t44 + 8U);
    *((int *)t45) = 1;
    t46 = (27 - 1);
    t30 = (t46 * 1);
    t30 = (t30 + 1);
    t45 = (t44 + 12U);
    *((unsigned int *)t45) = t30;
    t40 = xsi_base_array_concat(t40, t41, t42, (char)97, t32, t33, (char)97, t37, t43, (char)101);
    t45 = (t3 + 12U);
    t30 = *((unsigned int *)t45);
    t30 = (t30 * 1U);
    t47 = (6U + t30);
    t48 = (t47 + 15U);
    t49 = (t48 + 27U);
    t50 = (char *)alloca(t49);
    memcpy(t50, t40, t49);
    work_a_2415281640_1878664202_sub_1030774179_3539505537(t0, t1, t19, t50, t41);

LAB1:    return;
LAB3:    *((char **)t9) = t2;
    goto LAB2;

LAB5:    *((char **)t14) = t4;
    goto LAB4;

LAB6:    t11 = 0;

LAB9:    if (t11 < 8U)
        goto LAB10;
    else
        goto LAB8;

LAB10:    t17 = (t18 + t11);
    t20 = (t4 + t11);
    if (*((unsigned char *)t17) != *((unsigned char *)t20))
        goto LAB7;

LAB11:    t11 = (t11 + 1);
    goto LAB9;

}

void work_a_2415281640_1878664202_sub_1643661795_3539505537(char *t0, char *t1, char *t2, char *t3, unsigned char t4)
{
    char t5[88];
    char t6[24];
    char t7[16];
    char t12[16];
    char t15[16];
    char t64[16];
    char t67[8];
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t13;
    int t14;
    char *t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    unsigned char t35;
    char *t36;
    char *t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    int t42;
    unsigned int t43;
    char *t44;
    int t45;
    char *t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    char *t50;
    char *t51;
    int t53;
    char *t54;
    int t56;
    char *t57;
    int t59;
    char *t60;
    char *t62;
    char *t63;
    int64 t65;
    int64 t66;

LAB0:    t8 = (t7 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 15;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t10 = (0 - 15);
    t11 = (t10 * -1);
    t11 = (t11 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t11;
    t9 = (t12 + 0U);
    t13 = (t9 + 0U);
    *((int *)t13) = 7;
    t13 = (t9 + 4U);
    *((int *)t13) = 0;
    t13 = (t9 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 7);
    t11 = (t14 * -1);
    t11 = (t11 + 1);
    t13 = (t9 + 12U);
    *((unsigned int *)t13) = t11;
    t13 = (t15 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 1;
    t16 = (t13 + 4U);
    *((int *)t16) = 4;
    t16 = (t13 + 8U);
    *((int *)t16) = 1;
    t17 = (4 - 1);
    t11 = (t17 * 1);
    t11 = (t11 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t11;
    t16 = (t5 + 4U);
    t18 = ((STD_STANDARD) + 656);
    t19 = (t16 + 52U);
    *((char **)t19) = t18;
    t20 = xsi_get_memory(4U);
    t21 = (t16 + 36U);
    *((char **)t21) = t20;
    xsi_type_set_default_value(t18, t20, t15);
    t22 = (t16 + 40U);
    *((char **)t22) = t15;
    t23 = (t16 + 48U);
    *((unsigned int *)t23) = 4U;
    t24 = (t16 + 80U);
    *((char **)t24) = t20;
    t25 = (t16 + 72U);
    *((int *)t25) = 0;
    t26 = (t16 + 76U);
    t27 = (t15 + 12U);
    t11 = *((unsigned int *)t27);
    t28 = (t11 - 1);
    *((int *)t26) = t28;
    t29 = (t16 + 68U);
    t31 = (4U > 2147483644);
    if (t31 == 1)
        goto LAB2;

LAB3:    t32 = (4U + 3);
    t33 = (t32 / 16);
    t30 = t33;

LAB4:    *((unsigned int *)t29) = t30;
    t34 = (t6 + 4U);
    t35 = (t2 != 0);
    if (t35 == 1)
        goto LAB6;

LAB5:    t36 = (t6 + 8U);
    *((char **)t36) = t7;
    t37 = (t6 + 12U);
    t38 = (t3 != 0);
    if (t38 == 1)
        goto LAB8;

LAB7:    t39 = (t6 + 16U);
    *((char **)t39) = t12;
    t40 = (t6 + 20U);
    *((unsigned char *)t40) = t4;
    t41 = (t7 + 0U);
    t42 = *((int *)t41);
    t43 = (t42 - 9);
    t44 = (t7 + 4U);
    t45 = *((int *)t44);
    t46 = (t7 + 8U);
    t47 = *((int *)t46);
    xsi_vhdl_check_range_of_slice(t42, t45, t47, 9, 8, -1);
    t48 = (t43 * 1U);
    t49 = (0 + t48);
    t50 = (t2 + t49);
    t51 = (t0 + 4716);
    t53 = xsi_mem_cmp(t51, t50, 2U);
    if (t53 == 1)
        goto LAB10;

LAB14:    t54 = (t0 + 4718);
    t56 = xsi_mem_cmp(t54, t50, 2U);
    if (t56 == 1)
        goto LAB11;

LAB15:    t57 = (t0 + 4720);
    t59 = xsi_mem_cmp(t57, t50, 2U);
    if (t59 == 1)
        goto LAB12;

LAB16:
LAB13:    if ((unsigned char)0 == 0)
        goto LAB18;

LAB19:
LAB9:    memcpy(t64, t2, 16U);
    work_a_2415281640_1878664202_sub_17004117_3539505537(t0, t1, t64, t4);
    if (t4 != 0)
        goto LAB20;

LAB22:
LAB21:    t8 = (t16 + 36U);
    t9 = *((char **)t8);
    t8 = (t15 + 12U);
    t11 = *((unsigned int *)t8);
    t11 = (t11 * 1U);
    t13 = (char *)alloca(t11);
    memcpy(t13, t9, t11);
    memcpy(t67, t3, 8U);
    work_a_2415281640_1878664202_sub_3411627744_3539505537(t0, t1, t13, t15, t67);

LAB1:    t8 = (t16 + 48);
    t10 = *((int *)t8);
    t9 = (t16 + 80U);
    t18 = *((char **)t9);
    xsi_put_memory(t10, t18);
    return;
LAB2:    t30 = 2147483647;
    goto LAB4;

LAB6:    *((char **)t34) = t2;
    goto LAB5;

LAB8:    *((char **)t37) = t3;
    goto LAB7;

LAB10:    t60 = (t0 + 4722);
    t62 = (t16 + 36U);
    t63 = *((char **)t62);
    t62 = (t63 + 0);
    memcpy(t62, t60, 4U);
    goto LAB9;

LAB11:    t8 = (t0 + 4726);
    t13 = (t16 + 36U);
    t18 = *((char **)t13);
    t13 = (t18 + 0);
    memcpy(t13, t8, 4U);
    goto LAB9;

LAB12:    t8 = (t0 + 4730);
    t13 = (t16 + 36U);
    t18 = *((char **)t13);
    t13 = (t18 + 0);
    memcpy(t13, t8, 4U);
    goto LAB9;

LAB17:;
LAB18:    t8 = (t0 + 4734);
    xsi_report(t8, 36U, (unsigned char)3);
    goto LAB19;

LAB20:    t8 = (t0 + 1292U);
    t9 = *((char **)t8);
    t65 = *((int64 *)t9);
    t66 = (t65 * 20);
    xsi_process_wait(t1, t66);

LAB26:    t8 = (t1 + 48U);
    t13 = *((char **)t8);
    t18 = (t13 + 704U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 48U);
    t20 = *((char **)t19);
    t21 = (t20 + 0U);
    getcontext(t21);
    t22 = (t1 + 48U);
    t23 = *((char **)t22);
    t24 = (t23 + 704U);
    t11 = *((unsigned int *)t24);
    if (t11 == 1)
        goto LAB27;

LAB28:    t25 = (t1 + 48U);
    t26 = *((char **)t25);
    t27 = (t26 + 704U);
    *((unsigned int *)t27) = 3U;

LAB24:
LAB25:
LAB23:    goto LAB21;

LAB27:    xsi_saveStackAndSuspend(t1);
    goto LAB28;

}

void work_a_2415281640_1878664202_sub_1183126449_3539505537(char *t0, char *t1, char *t2, char *t3)
{
    char t5[24];
    char t6[16];
    char t11[16];
    char t19[16];
    char t20[8];
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t12;
    int t13;
    unsigned char t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 15;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 15);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t11 + 0U);
    t12 = (t8 + 0U);
    *((int *)t12) = 7;
    t12 = (t8 + 4U);
    *((int *)t12) = 0;
    t12 = (t8 + 8U);
    *((int *)t12) = -1;
    t13 = (0 - 7);
    t10 = (t13 * -1);
    t10 = (t10 + 1);
    t12 = (t8 + 12U);
    *((unsigned int *)t12) = t10;
    t12 = (t5 + 4U);
    t14 = (t2 != 0);
    if (t14 == 1)
        goto LAB3;

LAB2:    t15 = (t5 + 8U);
    *((char **)t15) = t6;
    t16 = (t5 + 12U);
    t17 = (t3 != 0);
    if (t17 == 1)
        goto LAB5;

LAB4:    t18 = (t5 + 16U);
    *((char **)t18) = t11;
    memcpy(t19, t2, 16U);
    memcpy(t20, t3, 8U);
    work_a_2415281640_1878664202_sub_1643661795_3539505537(t0, t1, t19, t20, (unsigned char)0);

LAB1:    return;
LAB3:    *((char **)t12) = t2;
    goto LAB2;

LAB5:    *((char **)t16) = t3;
    goto LAB4;

}

static void work_a_2415281640_1878664202_p_1(char *t0)
{
    char t10[16];
    char t19[16];
    char t20[16];
    char t21[16];
    char t22[16];
    char t23[16];
    char t24[16];
    char t25[16];
    char t26[16];
    char t27[16];
    char t28[16];
    char t29[16];
    char t30[16];
    char t31[16];
    char t32[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    unsigned char t8;
    unsigned char t9;
    char *t11;
    int t12;
    unsigned int t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned int t18;
    int64 t33;

LAB0:    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2264);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(133, ng0);
    t2 = (t0 + 2264);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 868U);
    t4 = *((char **)t3);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)2);
    t3 = (t0 + 4770);
    t6 = (t10 + 0U);
    t11 = (t6 + 0U);
    *((int *)t11) = 1;
    t11 = (t6 + 4U);
    *((int *)t11) = 55;
    t11 = (t6 + 8U);
    *((int *)t11) = 1;
    t12 = (55 - 1);
    t13 = (t12 * 1);
    t13 = (t13 + 1);
    t11 = (t6 + 12U);
    *((unsigned int *)t11) = t13;
    work_a_2415281640_1878664202_sub_1030774179_3539505537(t0, t2, t9, t3, t10);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t4 = *((char **)t3);
    t3 = (t0 + 4825);
    t8 = 1;
    if (8U == 8U)
        goto LAB8;

LAB9:    t8 = 0;

LAB10:    t14 = (t0 + 4833);
    t16 = (t10 + 0U);
    t17 = (t16 + 0U);
    *((int *)t17) = 1;
    t17 = (t16 + 4U);
    *((int *)t17) = 61;
    t17 = (t16 + 8U);
    *((int *)t17) = 1;
    t12 = (61 - 1);
    t18 = (t12 * 1);
    t18 = (t18 + 1);
    t17 = (t16 + 12U);
    *((unsigned int *)t17) = t18;
    work_a_2415281640_1878664202_sub_1030774179_3539505537(t0, t2, t8, t14, t10);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t7);

LAB16:    *((char **)t1) = &&LAB17;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    t13 = 0;

LAB11:    if (t13 < 8U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t6 = (t4 + t13);
    t11 = (t3 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t11))
        goto LAB9;

LAB13:    t13 = (t13 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 4894);
    work_a_2415281640_1878664202_sub_1664694819_3539505537(t0, t2, t3);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2300);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(144, ng0);

LAB20:    t2 = (t0 + 2176);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB21;
    goto LAB1;

LAB15:    goto LAB14;

LAB17:    goto LAB15;

LAB18:    t4 = (t0 + 2176);
    *((int *)t4) = 0;
    xsi_set_current_line(146, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 4902);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t10, t5, 16U);
    t6 = (t0 + 4910);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t10, t6);
    xsi_set_current_line(147, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 4918);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t19, t5, 16U);
    t6 = (t0 + 4926);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t19, t6);
    xsi_set_current_line(148, ng0);
    t2 = (t0 + 1872);
    t3 = work_p_1555542850_sub_1085539107_606387733(WORK_P_1555542850, (unsigned char)1);
    memcpy(t20, t3, 16U);
    t4 = (t0 + 4934);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t20, t4);
    xsi_set_current_line(151, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 4942);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t21, t5, 16U);
    t6 = (t0 + 4950);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t21, t6);
    xsi_set_current_line(152, ng0);
    t2 = (t0 + 1872);
    t3 = work_p_1555542850_sub_1085539107_606387733(WORK_P_1555542850, (unsigned char)2);
    memcpy(t22, t3, 16U);
    t4 = (t0 + 4958);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t22, t4);
    xsi_set_current_line(155, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 4966);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t23, t5, 16U);
    t6 = (t0 + 4974);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t23, t6);
    xsi_set_current_line(156, ng0);
    t2 = (t0 + 1872);
    t3 = work_p_1555542850_sub_1085539107_606387733(WORK_P_1555542850, (unsigned char)1);
    memcpy(t24, t3, 16U);
    t4 = (t0 + 4982);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t24, t4);
    xsi_set_current_line(159, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 4990);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t25, t5, 16U);
    t6 = (t0 + 4998);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t25, t6);
    xsi_set_current_line(160, ng0);
    t2 = (t0 + 1872);
    t3 = work_p_1555542850_sub_1085539107_606387733(WORK_P_1555542850, (unsigned char)2);
    memcpy(t26, t3, 16U);
    t4 = (t0 + 5006);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t26, t4);
    xsi_set_current_line(163, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 5014);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t27, t5, 16U);
    t6 = (t0 + 5022);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t27, t6);
    xsi_set_current_line(164, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 5030);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t28, t5, 16U);
    t6 = (t0 + 5038);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t28, t6);
    xsi_set_current_line(165, ng0);
    t2 = (t0 + 1872);
    t3 = work_p_1555542850_sub_1085539107_606387733(WORK_P_1555542850, (unsigned char)1);
    memcpy(t29, t3, 16U);
    t4 = (t0 + 5046);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t29, t4);
    xsi_set_current_line(168, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 5054);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t30, t5, 16U);
    t6 = (t0 + 5062);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t30, t6);
    xsi_set_current_line(169, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 5070);
    t5 = work_p_1555542850_sub_967164683_606387733(WORK_P_1555542850, (unsigned char)0, t3);
    memcpy(t31, t5, 16U);
    t6 = (t0 + 5078);
    work_a_2415281640_1878664202_sub_1183126449_3539505537(t0, t2, t31, t6);
    xsi_set_current_line(170, ng0);
    t2 = (t0 + 1872);
    t3 = work_p_1555542850_sub_1085539107_606387733(WORK_P_1555542850, (unsigned char)2);
    memcpy(t32, t3, 16U);
    t4 = (t0 + 5086);
    work_a_2415281640_1878664202_sub_1643661795_3539505537(t0, t2, t32, t4, (unsigned char)1);
    xsi_set_current_line(172, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t33 = (t7 / 2);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t33);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB19:    t3 = (t0 + 844U);
    t8 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t3, 0U, 0U);
    if (t8 == 1)
        goto LAB18;
    else
        goto LAB20;

LAB21:    goto LAB19;

LAB22:    xsi_set_current_line(173, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 5094);
    work_a_2415281640_1878664202_sub_1664694819_3539505537(t0, t2, t3);
    xsi_set_current_line(175, ng0);
    if ((unsigned char)0 == 0)
        goto LAB26;

LAB27:    xsi_set_current_line(176, ng0);

LAB30:    t2 = (t0 + 2184);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

LAB26:    t2 = (t0 + 5102);
    xsi_report(t2, 12U, (unsigned char)3);
    goto LAB27;

LAB28:    t3 = (t0 + 2184);
    *((int *)t3) = 0;
    goto LAB2;

LAB29:    t3 = (t0 + 1052U);
    t4 = *((char **)t3);
    t8 = *((unsigned char *)t4);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB28;
    else
        goto LAB30;

LAB31:    goto LAB29;

}


extern void work_a_2415281640_1878664202_init()
{
	static char *pe[] = {(void *)work_a_2415281640_1878664202_p_0,(void *)work_a_2415281640_1878664202_p_1};
	static char *se[] = {(void *)work_a_2415281640_1878664202_sub_1030774179_3539505537,(void *)work_a_2415281640_1878664202_sub_1664694819_3539505537,(void *)work_a_2415281640_1878664202_sub_17004117_3539505537,(void *)work_a_2415281640_1878664202_sub_3411627744_3539505537,(void *)work_a_2415281640_1878664202_sub_1643661795_3539505537,(void *)work_a_2415281640_1878664202_sub_1183126449_3539505537};
	xsi_register_didat("work_a_2415281640_1878664202", "isim/stack_machine_tb_isim_beh.exe.sim/work/a_2415281640_1878664202.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
