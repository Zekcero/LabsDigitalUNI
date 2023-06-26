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
static const char *ng0 = "C:/Users/David/Documents/LabsFPGADigital/LabFPGA3/Div4bLogic/Div4bLogic.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
unsigned char ieee_p_1242562249_sub_3472088553_1035706684(char *, char *, char *, char *, char *);


static void work_a_3926497698_3212880686_p_0(char *t0)
{
    char t20[16];
    char t21[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned int t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    int t22;
    unsigned int t23;
    int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 3472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5881);
    t6 = 1;
    if (4U == 4U)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    if (t6 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(54, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 1968U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 4U);
    xsi_set_current_line(55, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (t0 + 2088U);
    t4 = *((char **)t3);
    t3 = (t4 + 0);
    memcpy(t3, t1, 4U);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 5915);
    *((int *)t1) = 3;
    t2 = (t0 + 5919);
    *((int *)t2) = 0;
    t17 = 3;
    t18 = 0;

LAB19:    if (t17 >= t18)
        goto LAB20;

LAB22:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 3536);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 3600);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t8 = *((char **)t5);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3392);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t8 = (t0 + 1192U);
    t9 = *((char **)t8);
    t8 = (t0 + 5885);
    t11 = 1;
    if (4U == 4U)
        goto LAB13;

LAB14:    t11 = 0;

LAB15:    if ((!(t11)) == 0)
        goto LAB11;

LAB12:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 3472);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    *((unsigned char *)t5) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    t7 = 0;

LAB8:    if (t7 < 4U)
        goto LAB9;
    else
        goto LAB7;

LAB9:    t4 = (t2 + t7);
    t5 = (t1 + t7);
    if (*((unsigned char *)t4) != *((unsigned char *)t5))
        goto LAB6;

LAB10:    t7 = (t7 + 1);
    goto LAB8;

LAB11:    t15 = (t0 + 5889);
    xsi_report(t15, 26U, (unsigned char)2);
    goto LAB12;

LAB13:    t12 = 0;

LAB16:    if (t12 < 4U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t13 = (t9 + t12);
    t14 = (t8 + t12);
    if (*((unsigned char *)t13) != *((unsigned char *)t14))
        goto LAB14;

LAB18:    t12 = (t12 + 1);
    goto LAB16;

LAB20:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 2088U);
    t4 = *((char **)t3);
    t7 = (3 - 2);
    t12 = (t7 * 1U);
    t19 = (0 + t12);
    t3 = (t4 + t19);
    t8 = ((IEEE_P_1242562249) + 3000);
    t9 = (t21 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 2;
    t10 = (t9 + 4U);
    *((int *)t10) = 0;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t22 = (0 - 2);
    t23 = (t22 * -1);
    t23 = (t23 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t23;
    t5 = xsi_base_array_concat(t5, t20, t8, (char)97, t3, t21, (char)99, (unsigned char)2, (char)101);
    t10 = (t0 + 2088U);
    t13 = *((char **)t10);
    t10 = (t13 + 0);
    t23 = (3U + 1U);
    memcpy(t10, t5, t23);
    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5915);
    t22 = *((int *)t1);
    t24 = (t22 - 3);
    t7 = (t24 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t1));
    t12 = (1U * t7);
    t19 = (0 + t12);
    t3 = (t2 + t19);
    t6 = *((unsigned char *)t3);
    t4 = (t0 + 2088U);
    t5 = *((char **)t4);
    t25 = (0 - 3);
    t23 = (t25 * -1);
    t26 = (1U * t23);
    t27 = (0 + t26);
    t4 = (t5 + t27);
    *((unsigned char *)t4) = t6;
    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2088U);
    t2 = *((char **)t1);
    t1 = (t0 + 5840U);
    t3 = (t0 + 1192U);
    t4 = *((char **)t3);
    t3 = (t0 + 5776U);
    t6 = ieee_p_1242562249_sub_3472088553_1035706684(IEEE_P_1242562249, t2, t1, t4, t3);
    if (t6 != 0)
        goto LAB23;

LAB25:
LAB24:
LAB21:    t1 = (t0 + 5915);
    t17 = *((int *)t1);
    t2 = (t0 + 5919);
    t18 = *((int *)t2);
    if (t17 == t18)
        goto LAB22;

LAB26:    t22 = (t17 + -1);
    t17 = t22;
    t3 = (t0 + 5915);
    *((int *)t3) = t17;
    goto LAB19;

LAB23:    xsi_set_current_line(60, ng0);
    t5 = (t0 + 2088U);
    t8 = *((char **)t5);
    t5 = (t0 + 5840U);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5776U);
    t13 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t20, t8, t5, t10, t9);
    t14 = (t0 + 2088U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    t16 = (t20 + 12U);
    t7 = *((unsigned int *)t16);
    t12 = (1U * t7);
    memcpy(t14, t13, t12);
    xsi_set_current_line(61, ng0);
    t1 = (t0 + 1968U);
    t2 = *((char **)t1);
    t1 = (t0 + 5915);
    t22 = *((int *)t1);
    t24 = (t22 - 3);
    t7 = (t24 * -1);
    xsi_vhdl_check_range_of_index(3, 0, -1, *((int *)t1));
    t12 = (1U * t7);
    t19 = (0 + t12);
    t3 = (t2 + t19);
    *((unsigned char *)t3) = (unsigned char)3;
    goto LAB24;

}


extern void work_a_3926497698_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3926497698_3212880686_p_0};
	xsi_register_didat("work_a_3926497698_3212880686", "isim/Div4BitLogic_tb_isim_beh.exe.sim/work/a_3926497698_3212880686.didat");
	xsi_register_executes(pe);
}
