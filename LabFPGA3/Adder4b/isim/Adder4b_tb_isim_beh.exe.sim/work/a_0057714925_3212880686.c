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

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/David/Documents/LabsFPGADigital/LabFPGA3/Adder4b/Adder4b.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0057714925_3212880686_p_0(char *t0)
{
    char t1[16];
    char t2[16];
    char t5[16];
    char t10[16];
    char t19[16];
    char t21[16];
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t16;
    char *t17;
    unsigned char t18;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    unsigned int t29;
    unsigned int t30;

LAB0:    xsi_set_current_line(49, ng0);
    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t6 = ((IEEE_P_2592010699) + 4024);
    t7 = (t0 + 5360U);
    t3 = xsi_base_array_concat(t3, t5, t6, (char)99, (unsigned char)2, (char)97, t4, t7, (char)101);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t11 = ((IEEE_P_2592010699) + 4024);
    t12 = (t0 + 5376U);
    t8 = xsi_base_array_concat(t8, t10, t11, (char)99, (unsigned char)2, (char)97, t9, t12, (char)101);
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t2, t3, t5, t8, t10);
    t14 = (t0 + 5446);
    t16 = (t0 + 1352U);
    t17 = *((char **)t16);
    t18 = *((unsigned char *)t17);
    t20 = ((IEEE_P_2592010699) + 4024);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (3 - 0);
    t25 = (t24 * 1);
    t25 = (t25 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t25;
    t16 = xsi_base_array_concat(t16, t19, t20, (char)97, t14, t21, (char)99, t18, (char)101);
    t23 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t1, t13, t2, t16, t19);
    t26 = (t0 + 1968U);
    t27 = *((char **)t26);
    t26 = (t27 + 0);
    t28 = (t1 + 12U);
    t25 = *((unsigned int *)t28);
    t29 = (1U * t25);
    memcpy(t26, t23, t29);
    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1968U);
    t4 = *((char **)t3);
    t25 = (4 - 3);
    t29 = (t25 * 1U);
    t30 = (0 + t29);
    t3 = (t4 + t30);
    t6 = (t0 + 3352);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    memcpy(t11, t3, 4U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(50, ng0);
    t3 = (t0 + 1968U);
    t4 = *((char **)t3);
    t24 = (4 - 4);
    t25 = (t24 * -1);
    t29 = (1U * t25);
    t30 = (0 + t29);
    t3 = (t4 + t30);
    t18 = *((unsigned char *)t3);
    t6 = (t0 + 3416);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t11 = *((char **)t9);
    *((unsigned char *)t11) = t18;
    xsi_driver_first_trans_fast_port(t6);
    t3 = (t0 + 3272);
    *((int *)t3) = 1;

LAB1:    return;
}


extern void work_a_0057714925_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0057714925_3212880686_p_0};
	xsi_register_didat("work_a_0057714925_3212880686", "isim/Adder4b_tb_isim_beh.exe.sim/work/a_0057714925_3212880686.didat");
	xsi_register_executes(pe);
}
