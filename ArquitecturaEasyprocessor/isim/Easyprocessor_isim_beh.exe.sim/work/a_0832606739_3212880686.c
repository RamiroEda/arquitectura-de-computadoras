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
static const char *ng0 = "D:/Github/arquitectura-de-computadoras/ArquitecturaEasyprocessor/ALU.vhd";
extern char *IEEE_P_1242562249;
extern char *IEEE_P_2592010699;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_1242562249_sub_1547270861_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_1735675855_503743352(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_795620321_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_0832606739_3212880686_p_0(char *t0)
{
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned int t8;
    char *t9;
    char *t10;
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
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(46, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 3232);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 8U);
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3152);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 5231);
    t7 = 1;
    if (2U == 2U)
        goto LAB8;

LAB9:    t7 = 0;

LAB10:    if (t7 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5233);
    t3 = 1;
    if (2U == 2U)
        goto LAB16;

LAB17:    t3 = 0;

LAB18:    if (t3 != 0)
        goto LAB14;

LAB15:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5235);
    t3 = 1;
    if (2U == 2U)
        goto LAB24;

LAB25:    t3 = 0;

LAB26:    if (t3 != 0)
        goto LAB22;

LAB23:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t1 = (t0 + 5237);
    t3 = 1;
    if (2U == 2U)
        goto LAB34;

LAB35:    t3 = 0;

LAB36:    if (t3 != 0)
        goto LAB32;

LAB33:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(57, ng0);
    t12 = (t0 + 1032U);
    t13 = *((char **)t12);
    t12 = (t0 + 5140U);
    t14 = (t0 + 1192U);
    t15 = *((char **)t14);
    t14 = (t0 + 5156U);
    t16 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t11, t13, t12, t15, t14);
    t17 = (t0 + 3232);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t16, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB6;

LAB8:    t8 = 0;

LAB11:    if (t8 < 2U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t9 = (t5 + t8);
    t10 = (t1 + t8);
    if (*((unsigned char *)t9) != *((unsigned char *)t10))
        goto LAB9;

LAB13:    t8 = (t8 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(59, ng0);
    t10 = (t0 + 1032U);
    t12 = *((char **)t10);
    t10 = (t0 + 5140U);
    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t13 = (t0 + 5156U);
    t15 = ieee_p_1242562249_sub_1547270861_1035706684(IEEE_P_1242562249, t11, t12, t10, t14, t13);
    t16 = (t0 + 3232);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t15, 8U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB6;

LAB16:    t8 = 0;

LAB19:    if (t8 < 2U)
        goto LAB20;
    else
        goto LAB18;

LAB20:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB17;

LAB21:    t8 = (t8 + 1);
    goto LAB19;

LAB22:    xsi_set_current_line(61, ng0);
    t10 = (t0 + 1032U);
    t12 = *((char **)t10);
    t10 = (t0 + 5140U);
    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t13 = (t0 + 5156U);
    t15 = ieee_p_2592010699_sub_795620321_503743352(IEEE_P_2592010699, t11, t12, t10, t14, t13);
    t16 = (t11 + 12U);
    t22 = *((unsigned int *)t16);
    t23 = (1U * t22);
    t4 = (8U != t23);
    if (t4 == 1)
        goto LAB30;

LAB31:    t17 = (t0 + 3232);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB6;

LAB24:    t8 = 0;

LAB27:    if (t8 < 2U)
        goto LAB28;
    else
        goto LAB26;

LAB28:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB25;

LAB29:    t8 = (t8 + 1);
    goto LAB27;

LAB30:    xsi_size_not_matching(8U, t23, 0);
    goto LAB31;

LAB32:    xsi_set_current_line(63, ng0);
    t10 = (t0 + 1032U);
    t12 = *((char **)t10);
    t10 = (t0 + 5140U);
    t13 = (t0 + 1192U);
    t14 = *((char **)t13);
    t13 = (t0 + 5156U);
    t15 = ieee_p_2592010699_sub_1735675855_503743352(IEEE_P_2592010699, t11, t12, t10, t14, t13);
    t16 = (t11 + 12U);
    t22 = *((unsigned int *)t16);
    t23 = (1U * t22);
    t4 = (8U != t23);
    if (t4 == 1)
        goto LAB40;

LAB41:    t17 = (t0 + 3232);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    t20 = (t19 + 56U);
    t21 = *((char **)t20);
    memcpy(t21, t15, 8U);
    xsi_driver_first_trans_fast_port(t17);
    goto LAB6;

LAB34:    t8 = 0;

LAB37:    if (t8 < 2U)
        goto LAB38;
    else
        goto LAB36;

LAB38:    t6 = (t2 + t8);
    t9 = (t1 + t8);
    if (*((unsigned char *)t6) != *((unsigned char *)t9))
        goto LAB35;

LAB39:    t8 = (t8 + 1);
    goto LAB37;

LAB40:    xsi_size_not_matching(8U, t23, 0);
    goto LAB41;

}


extern void work_a_0832606739_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0832606739_3212880686_p_0};
	xsi_register_didat("work_a_0832606739_3212880686", "isim/Easyprocessor_isim_beh.exe.sim/work/a_0832606739_3212880686.didat");
	xsi_register_executes(pe);
}
