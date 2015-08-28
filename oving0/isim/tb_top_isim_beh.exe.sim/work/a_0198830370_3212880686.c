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
static const char *ng0 = "/home/shomec/p/peteraa/Documents/oving0/oving0/src/framework/uart/baudGen.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_3620187407_sub_4060537613_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_767740470_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0198830370_3212880686_p_0(char *t0)
{
    char t11[16];
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
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;

LAB0:    xsi_set_current_line(35, ng0);
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
LAB3:    t1 = (t0 + 1880);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(36, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 1924);
    t7 = (t6 + 32U);
    t8 = *((char **)t7);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1960);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1052U);
    t5 = *((char **)t2);
    t2 = (t0 + 3580U);
    t6 = (t0 + 868U);
    t7 = *((char **)t6);
    t6 = (t0 + 3564U);
    t4 = ieee_p_3620187407_sub_4060537613_3965413181(IEEE_P_3620187407, t5, t2, t7, t6);
    if (t4 != 0)
        goto LAB7;

LAB9:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 1052U);
    t2 = *((char **)t1);
    t1 = (t0 + 3580U);
    t5 = (t0 + 776U);
    t6 = *((char **)t5);
    t5 = (t0 + 3548U);
    t7 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t11, t2, t1, t6, t5);
    t8 = (t0 + 1924);
    t9 = (t8 + 32U);
    t10 = *((char **)t9);
    t12 = (t10 + 32U);
    t13 = *((char **)t12);
    memcpy(t13, t7, 16U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 1960);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(40, ng0);
    t8 = (t0 + 1052U);
    t9 = *((char **)t8);
    t8 = (t0 + 3580U);
    t10 = (t0 + 868U);
    t12 = *((char **)t10);
    t10 = (t0 + 3564U);
    t13 = ieee_p_3620187407_sub_767740470_3965413181(IEEE_P_3620187407, t11, t9, t8, t12, t10);
    t14 = (t0 + 1924);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t17 = (t16 + 32U);
    t18 = *((char **)t17);
    memcpy(t18, t13, 16U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1960);
    t2 = (t1 + 32U);
    t5 = *((char **)t2);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB8;

}


extern void work_a_0198830370_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0198830370_3212880686_p_0};
	xsi_register_didat("work_a_0198830370_3212880686", "isim/tb_top_isim_beh.exe.sim/work/a_0198830370_3212880686.didat");
	xsi_register_executes(pe);
}
