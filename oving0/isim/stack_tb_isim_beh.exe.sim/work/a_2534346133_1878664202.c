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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/oving0/oving0/src/tests/stack_tb.vhd";
extern char *IEEE_P_2592010699;
extern char *WORK_P_1555542850;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
void work_p_1555542850_sub_1030774179_606387733(char *, char *, unsigned char , char *, char *);


static void work_a_2534346133_1878664202_p_0(char *t0)
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

LAB0:    xsi_set_current_line(44, ng0);

LAB3:    t1 = (t0 + 1292U);
    t2 = *((char **)t1);
    t3 = *((int64 *)t2);
    t4 = (t3 / 2);
    t1 = (t0 + 1052U);
    t5 = *((char **)t1);
    t6 = *((unsigned char *)t5);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t6);
    t1 = (t0 + 2316);
    t8 = (t1 + 32U);
    t9 = *((char **)t8);
    t10 = (t9 + 32U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t7;
    xsi_driver_first_trans_delta(t1, 0U, 1, t4);
    t12 = (t0 + 2316);
    xsi_driver_intertial_reject(t12, t4, t4);

LAB2:    t13 = (t0 + 2152);
    *((int *)t13) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2534346133_1878664202_p_1(char *t0)
{
    char t14[16];
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
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
    unsigned char t19;

LAB0:    t1 = (t0 + 1972U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 / 4);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 2352);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2352);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 4625);
    t9 = 1;
    if (8U == 8U)
        goto LAB16;

LAB17:    t9 = 0;

LAB18:    t12 = (t0 + 4633);
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
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4669);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 4682);
    t6 = (t0 + 2388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2424);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 4690);
    t9 = 1;
    if (8U == 8U)
        goto LAB22;

LAB23:    t9 = 0;

LAB24:    t12 = (t0 + 4698);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 54;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (54 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4752);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t10 = 0;

LAB19:    if (t10 < 8U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB17;

LAB21:    t10 = (t10 + 1);
    goto LAB19;

LAB22:    t10 = 0;

LAB25:    if (t10 < 8U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB23;

LAB27:    t10 = (t10 + 1);
    goto LAB25;

LAB28:    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2424);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 4765);
    t9 = 1;
    if (8U == 8U)
        goto LAB32;

LAB33:    t9 = 0;

LAB34:    t12 = (t0 + 4773);
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
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4823);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 2460);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 4836);
    t9 = 1;
    if (8U == 8U)
        goto LAB38;

LAB39:    t9 = 0;

LAB40:    t12 = (t0 + 4844);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 53;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (53 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 4897);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB46:    *((char **)t1) = &&LAB47;
    goto LAB1;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB32:    t10 = 0;

LAB35:    if (t10 < 8U)
        goto LAB36;
    else
        goto LAB34;

LAB36:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB33;

LAB37:    t10 = (t10 + 1);
    goto LAB35;

LAB38:    t10 = 0;

LAB41:    if (t10 < 8U)
        goto LAB42;
    else
        goto LAB40;

LAB42:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB39;

LAB43:    t10 = (t10 + 1);
    goto LAB41;

LAB44:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 2460);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 4910);
    t9 = 1;
    if (8U == 8U)
        goto LAB48;

LAB49:    t9 = 0;

LAB50:    t12 = (t0 + 4918);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 48;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (48 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4966);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 4979);
    t6 = (t0 + 2388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2424);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB56:    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB45:    goto LAB44;

LAB47:    goto LAB45;

LAB48:    t10 = 0;

LAB51:    if (t10 < 8U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB49;

LAB53:    t10 = (t10 + 1);
    goto LAB51;

LAB54:    xsi_set_current_line(82, ng0);
    t2 = (t0 + 4987);
    t6 = (t0 + 2388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB60:    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB55:    goto LAB54;

LAB57:    goto LAB55;

LAB58:    xsi_set_current_line(84, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 4995);
    t9 = 1;
    if (8U == 8U)
        goto LAB62;

LAB63:    t9 = 0;

LAB64:    t12 = (t0 + 5003);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 34;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (34 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 5037);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(87, ng0);
    t2 = (t0 + 5050);
    t6 = (t0 + 2388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB70:    *((char **)t1) = &&LAB71;
    goto LAB1;

LAB59:    goto LAB58;

LAB61:    goto LAB59;

LAB62:    t10 = 0;

LAB65:    if (t10 < 8U)
        goto LAB66;
    else
        goto LAB64;

LAB66:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB63;

LAB67:    t10 = (t10 + 1);
    goto LAB65;

LAB68:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5058);
    t9 = 1;
    if (8U == 8U)
        goto LAB72;

LAB73:    t9 = 0;

LAB74:    t12 = (t0 + 5066);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 34;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (34 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(90, ng0);
    t2 = (t0 + 5100);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 5113);
    t6 = (t0 + 2388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB80:    *((char **)t1) = &&LAB81;
    goto LAB1;

LAB69:    goto LAB68;

LAB71:    goto LAB69;

LAB72:    t10 = 0;

LAB75:    if (t10 < 8U)
        goto LAB76;
    else
        goto LAB74;

LAB76:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB73;

LAB77:    t10 = (t10 + 1);
    goto LAB75;

LAB78:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5121);
    t9 = 1;
    if (8U == 8U)
        goto LAB82;

LAB83:    t9 = 0;

LAB84:    t12 = (t0 + 5129);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 34;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (34 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(95, ng0);
    t2 = (t0 + 5163);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 5176);
    t6 = (t0 + 2388);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 32U);
    t12 = *((char **)t11);
    memcpy(t12, t2, 8U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB90:    *((char **)t1) = &&LAB91;
    goto LAB1;

LAB79:    goto LAB78;

LAB81:    goto LAB79;

LAB82:    t10 = 0;

LAB85:    if (t10 < 8U)
        goto LAB86;
    else
        goto LAB84;

LAB86:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB83;

LAB87:    t10 = (t10 + 1);
    goto LAB85;

LAB88:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5184);
    t9 = 1;
    if (8U == 8U)
        goto LAB92;

LAB93:    t9 = 0;

LAB94:    t12 = (t0 + 5192);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 34;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (34 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 5226);
    xsi_report(t2, 13U, (unsigned char)0);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2424);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2460);
    t3 = (t2 + 32U);
    t6 = *((char **)t3);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB100:    *((char **)t1) = &&LAB101;
    goto LAB1;

LAB89:    goto LAB88;

LAB91:    goto LAB89;

LAB92:    t10 = 0;

LAB95:    if (t10 < 8U)
        goto LAB96;
    else
        goto LAB94;

LAB96:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB93;

LAB97:    t10 = (t10 + 1);
    goto LAB95;

LAB98:    xsi_set_current_line(105, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5239);
    t9 = 1;
    if (8U == 8U)
        goto LAB102;

LAB103:    t9 = 0;

LAB104:    t12 = (t0 + 5247);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 33;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (33 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 5280);
    xsi_report(t2, 14U, (unsigned char)0);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB110:    *((char **)t1) = &&LAB111;
    goto LAB1;

LAB99:    goto LAB98;

LAB101:    goto LAB99;

LAB102:    t10 = 0;

LAB105:    if (t10 < 8U)
        goto LAB106;
    else
        goto LAB104;

LAB106:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB103;

LAB107:    t10 = (t10 + 1);
    goto LAB105;

LAB108:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5294);
    t9 = 1;
    if (8U == 8U)
        goto LAB112;

LAB113:    t9 = 0;

LAB114:    t12 = (t0 + 5302);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 33;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (33 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 5335);
    xsi_report(t2, 14U, (unsigned char)0);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB120:    *((char **)t1) = &&LAB121;
    goto LAB1;

LAB109:    goto LAB108;

LAB111:    goto LAB109;

LAB112:    t10 = 0;

LAB115:    if (t10 < 8U)
        goto LAB116;
    else
        goto LAB114;

LAB116:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB113;

LAB117:    t10 = (t10 + 1);
    goto LAB115;

LAB118:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5349);
    t9 = 1;
    if (8U == 8U)
        goto LAB122;

LAB123:    t9 = 0;

LAB124:    t12 = (t0 + 5357);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 33;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (33 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5390);
    xsi_report(t2, 14U, (unsigned char)0);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB130:    *((char **)t1) = &&LAB131;
    goto LAB1;

LAB119:    goto LAB118;

LAB121:    goto LAB119;

LAB122:    t10 = 0;

LAB125:    if (t10 < 8U)
        goto LAB126;
    else
        goto LAB124;

LAB126:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB123;

LAB127:    t10 = (t10 + 1);
    goto LAB125;

LAB128:    xsi_set_current_line(117, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5404);
    t9 = 1;
    if (8U == 8U)
        goto LAB132;

LAB133:    t9 = 0;

LAB134:    t12 = (t0 + 5412);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 33;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (33 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 5445);
    xsi_report(t2, 14U, (unsigned char)0);
    xsi_set_current_line(120, ng0);
    t2 = (t0 + 1292U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 1872);
    xsi_process_wait(t2, t4);

LAB140:    *((char **)t1) = &&LAB141;
    goto LAB1;

LAB129:    goto LAB128;

LAB131:    goto LAB129;

LAB132:    t10 = 0;

LAB135:    if (t10 < 8U)
        goto LAB136;
    else
        goto LAB134;

LAB136:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB133;

LAB137:    t10 = (t10 + 1);
    goto LAB135;

LAB138:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1872);
    t3 = (t0 + 960U);
    t6 = *((char **)t3);
    t3 = (t0 + 5459);
    t9 = 1;
    if (8U == 8U)
        goto LAB142;

LAB143:    t9 = 0;

LAB144:    t12 = (t0 + 5467);
    t15 = (t14 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 1;
    t16 = (t15 + 4U);
    *((int *)t16) = 33;
    t16 = (t15 + 8U);
    *((int *)t16) = 1;
    t17 = (33 - 1);
    t18 = (t17 * 1);
    t18 = (t18 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t18;
    work_p_1555542850_sub_1030774179_606387733(WORK_P_1555542850, t2, t9, t12, t14);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 5500);
    xsi_report(t2, 14U, (unsigned char)0);
    xsi_set_current_line(124, ng0);

LAB150:    t2 = (t0 + 2272);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB151;
    goto LAB1;

LAB139:    goto LAB138;

LAB141:    goto LAB139;

LAB142:    t10 = 0;

LAB145:    if (t10 < 8U)
        goto LAB146;
    else
        goto LAB144;

LAB146:    t8 = (t6 + t10);
    t11 = (t3 + t10);
    if (*((unsigned char *)t8) != *((unsigned char *)t11))
        goto LAB143;

LAB147:    t10 = (t10 + 1);
    goto LAB145;

LAB148:    t3 = (t0 + 2272);
    *((int *)t3) = 0;
    xsi_set_current_line(125, ng0);
    if ((unsigned char)0 == 0)
        goto LAB152;

LAB153:    goto LAB2;

LAB149:    t3 = (t0 + 1052U);
    t6 = *((char **)t3);
    t9 = *((unsigned char *)t6);
    t19 = (t9 == (unsigned char)3);
    if (t19 == 1)
        goto LAB148;
    else
        goto LAB150;

LAB151:    goto LAB149;

LAB152:    t2 = (t0 + 5514);
    xsi_report(t2, 12U, (unsigned char)3);
    goto LAB153;

}


extern void work_a_2534346133_1878664202_init()
{
	static char *pe[] = {(void *)work_a_2534346133_1878664202_p_0,(void *)work_a_2534346133_1878664202_p_1};
	xsi_register_didat("work_a_2534346133_1878664202", "isim/stack_tb_isim_beh.exe.sim/work/a_2534346133_1878664202.didat");
	xsi_register_executes(pe);
}
