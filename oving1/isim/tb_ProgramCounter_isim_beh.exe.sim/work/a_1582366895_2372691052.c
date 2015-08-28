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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/DM kons/oving1/src/testbench/tb_ProgramCounter.vhd";
extern char *WORK_P_1555542850;

void work_p_1555542850_sub_1030774179_606387733(char *, char *, unsigned char , char *, char *);


static void work_a_1582366895_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 1584U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1968);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1484);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(47, ng0);
    t2 = (t0 + 1968);
    t3 = (t2 + 32U);
    t4 = *((char **)t3);
    t5 = (t4 + 32U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1040U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 1484);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1582366895_2372691052_p_1(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned int t10;
    char *t11;
    char *t12;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(56, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t5 = (t3 * 10);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2004);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2004);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1620);
    t4 = (t0 + 868U);
    t6 = *((char **)t4);
    t4 = (t0 + 4068);
    t9 = 1;
    if (32U == 32U)
        goto LAB20;

LAB21:    t9 = 0;

LAB22:    t12 = (t0 + 4100);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 36;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (36 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4136);
    xsi_report(t2, 38U, (unsigned char)0);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 4174);
    t6 = (t0 + 2040);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 32U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 1620);
    t4 = (t0 + 868U);
    t6 = *((char **)t4);
    t4 = (t0 + 4206);
    t9 = 1;
    if (32U == 32U)
        goto LAB26;

LAB27:    t9 = 0;

LAB28:    t12 = (t0 + 4238);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 50;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (50 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4288);
    xsi_report(t2, 54U, (unsigned char)0);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB34:    *((char **)t1) = &&LAB35;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t10 = 0;

LAB23:    if (t10 < 32U)
        goto LAB24;
    else
        goto LAB22;

LAB24:    t8 = (t6 + t10);
    t11 = (t4 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB21;

LAB25:    t10 = (t10 + 1);
    goto LAB23;

LAB26:    t10 = 0;

LAB29:    if (t10 < 32U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t8 = (t6 + t10);
    t11 = (t4 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB27;

LAB31:    t10 = (t10 + 1);
    goto LAB29;

LAB32:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1620);
    t4 = (t0 + 868U);
    t6 = *((char **)t4);
    t4 = (t0 + 4342);
    t9 = 1;
    if (32U == 32U)
        goto LAB36;

LAB37:    t9 = 0;

LAB38:    t12 = (t0 + 4374);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 43;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (43 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4417);
    xsi_report(t2, 47U, (unsigned char)0);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB44:    *((char **)t1) = &&LAB45;
    goto LAB1;

LAB33:    goto LAB32;

LAB35:    goto LAB33;

LAB36:    t10 = 0;

LAB39:    if (t10 < 32U)
        goto LAB40;
    else
        goto LAB38;

LAB40:    t8 = (t6 + t10);
    t11 = (t4 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB37;

LAB41:    t10 = (t10 + 1);
    goto LAB39;

LAB42:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2004);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB48:    *((char **)t1) = &&LAB49;
    goto LAB1;

LAB43:    goto LAB42;

LAB45:    goto LAB43;

LAB46:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2004);
    t4 = (t2 + 32U);
    t6 = *((char **)t4);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1620);
    t4 = (t0 + 868U);
    t6 = *((char **)t4);
    t4 = (t0 + 4464);
    t9 = 1;
    if (32U == 32U)
        goto LAB50;

LAB51:    t9 = 0;

LAB52:    t12 = (t0 + 4496);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 36;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (36 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 4532);
    xsi_report(t2, 57U, (unsigned char)0);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1040U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t2 = (t0 + 1620);
    xsi_process_wait(t2, t3);

LAB58:    *((char **)t1) = &&LAB59;
    goto LAB1;

LAB47:    goto LAB46;

LAB49:    goto LAB47;

LAB50:    t10 = 0;

LAB53:    if (t10 < 32U)
        goto LAB54;
    else
        goto LAB52;

LAB54:    t8 = (t6 + t10);
    t11 = (t4 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB51;

LAB55:    t10 = (t10 + 1);
    goto LAB53;

LAB56:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4589);
    xsi_report(t2, 22U, (unsigned char)3);
    goto LAB2;

LAB57:    goto LAB56;

LAB59:    goto LAB57;

}


extern void work_a_1582366895_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1582366895_2372691052_p_0,(void *)work_a_1582366895_2372691052_p_1};
	xsi_register_didat("work_a_1582366895_2372691052", "isim/tb_ProgramCounter_isim_beh.exe.sim/work/a_1582366895_2372691052.didat");
	xsi_register_executes(pe);
}
