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
extern char *IEEE_P_2592010699;
static const char *ng1 = "Function make_instruction ended without a return statement";
extern char *WORK_P_2408649327;



void work_p_1555542850_sub_1030774179_606387733(char *t0, char *t1, unsigned char t2, char *t3, char *t4)
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

char *work_p_1555542850_sub_967164683_606387733(char *t1, unsigned char t2, char *t3)
{
    char t5[16];
    char t6[16];
    char t18[16];
    char t20[16];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    unsigned char t12;
    char *t13;
    unsigned char t14;
    char *t15;
    char *t17;
    char *t19;
    char *t21;
    char *t22;
    int t23;
    int t24;
    char *t25;
    int t26;
    char *t27;
    int t28;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 7);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t5 + 4U);
    *((unsigned char *)t8) = t2;
    t11 = (t5 + 5U);
    t12 = (t3 != 0);
    if (t12 == 1)
        goto LAB3;

LAB2:    t13 = (t5 + 9U);
    *((char **)t13) = t6;
    t14 = (t2 == (unsigned char)0);
    if (t14 != 0)
        goto LAB4;

LAB6:    t12 = (t2 == (unsigned char)1);
    if (t12 != 0)
        goto LAB8;

LAB9:    t7 = (t1 + 2240);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t7, 16U);

LAB1:    return t0;
LAB3:    *((char **)t11) = t3;
    goto LAB2;

LAB4:    t15 = (t1 + 2216);
    t19 = ((IEEE_P_2592010699) + 2312);
    t21 = (t20 + 0U);
    t22 = (t21 + 0U);
    *((int *)t22) = 0;
    t22 = (t21 + 4U);
    *((int *)t22) = 7;
    t22 = (t21 + 8U);
    *((int *)t22) = 1;
    t23 = (7 - 0);
    t10 = (t23 * 1);
    t10 = (t10 + 1);
    t22 = (t21 + 12U);
    *((unsigned int *)t22) = t10;
    t17 = xsi_base_array_concat(t17, t18, t19, (char)97, t15, t20, (char)97, t3, t6, (char)101);
    t10 = (8U + 8U);
    t22 = (t18 + 0U);
    t24 = *((int *)t22);
    t25 = (t18 + 4U);
    t26 = *((int *)t25);
    t27 = (t18 + 8U);
    t28 = *((int *)t27);
    xsi_vhdl_check_range_of_slice(15, 0, -1, t24, t26, t28);
    t0 = xsi_get_transient_memory(t10);
    memcpy(t0, t17, t10);
    goto LAB1;

LAB5:    xsi_error(ng1);
    t0 = 0;
    goto LAB1;

LAB7:    goto LAB5;

LAB8:    t7 = (t1 + 2224);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t7, 16U);
    goto LAB1;

LAB10:    goto LAB5;

LAB11:    goto LAB5;

}

char *work_p_1555542850_sub_1085539107_606387733(char *t1, unsigned char t2)
{
    char t3[72];
    char t4[8];
    char t7[16];
    char t14[8];
    char *t0;
    char *t5;
    char *t6;
    char *t8;
    char *t9;
    int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned char t21;
    char *t22;

LAB0:    t5 = xsi_get_transient_memory(8U);
    memset(t5, 0, 8U);
    t6 = t5;
    memset(t6, (unsigned char)2, 8U);
    t8 = (t7 + 0U);
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
    t9 = (t3 + 4U);
    t12 = ((WORK_P_2408649327) + 1468);
    t13 = (t9 + 52U);
    *((char **)t13) = t12;
    t15 = (t9 + 36U);
    *((char **)t15) = t14;
    memcpy(t14, t5, 8U);
    t16 = (t9 + 40U);
    t17 = (t12 + 44U);
    t18 = *((char **)t17);
    *((char **)t16) = t18;
    t19 = (t9 + 48U);
    *((unsigned int *)t19) = 8U;
    t20 = (t4 + 4U);
    *((unsigned char *)t20) = t2;
    t21 = (t2 != (unsigned char)0);
    if (t21 == 0)
        goto LAB2;

LAB3:    t5 = (t9 + 36U);
    t6 = *((char **)t5);
    t5 = work_p_1555542850_sub_967164683_606387733(t1, t2, t6);
    xsi_vhdl_check_range_of_slice(15, 0, -1, 15, 0, -1);
    t0 = xsi_get_transient_memory(16U);
    memcpy(t0, t5, 16U);

LAB1:    return t0;
LAB2:    t22 = (t1 + 2256);
    xsi_report(t22, 48U, (unsigned char)3);
    goto LAB3;

LAB4:;
}


extern void work_p_1555542850_init()
{
	static char *se[] = {(void *)work_p_1555542850_sub_1030774179_606387733,(void *)work_p_1555542850_sub_967164683_606387733,(void *)work_p_1555542850_sub_1085539107_606387733};
	xsi_register_didat("work_p_1555542850", "isim/control_tb_isim_beh.exe.sim/work/p_1555542850.didat");
	xsi_register_subprogram_executes(se);
}
