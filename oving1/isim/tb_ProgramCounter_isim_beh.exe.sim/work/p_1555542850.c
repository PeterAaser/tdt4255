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

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif



void work_p_1555542850_sub_3890302887757110691_606387733(char *t0, char *t1, unsigned char t2, char *t3, char *t4)
{
    char t6[24];
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

LAB2:    t10 = (t6 + 13U);
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


extern void work_p_1555542850_init()
{
	static char *se[] = {(void *)work_p_1555542850_sub_3890302887757110691_606387733};
	xsi_register_didat("work_p_1555542850", "isim/tb_ProgramCounter_isim_beh.exe.sim/work/p_1555542850.didat");
	xsi_register_subprogram_executes(se);
}
