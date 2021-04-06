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
static const char *ng0 = "D:/Github/arquitectura-de-computadoras/CISC8/X.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1547198987_1035706684(char *, char *, char *, char *, char *, char *);
int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );


static void work_a_0367847773_3212880686_p_0(char *t0)
{
    char t8[16];
    char t11[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    int t6;
    int t7;
    char *t9;
    char *t10;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;

LAB0:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB10;

LAB12:
LAB11:    t1 = (t0 + 3720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 6302);
    *((int *)t1) = 0;
    t5 = (t0 + 6306);
    *((int *)t5) = 7;
    t6 = 0;
    t7 = 7;

LAB5:    if (t6 <= t7)
        goto LAB6;

LAB8:    goto LAB3;

LAB6:    xsi_set_current_line(51, ng0);
    t9 = (t0 + 1512U);
    t10 = *((char **)t9);
    t9 = (t0 + 6136U);
    t12 = (t0 + 6302);
    t13 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t11, *((int *)t12), 8);
    t14 = ieee_p_1242562249_sub_1547198987_1035706684(IEEE_P_1242562249, t8, t10, t9, t13, t11);
    t15 = (t0 + 6302);
    t16 = *((int *)t15);
    t17 = (t16 - 0);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0U + t19);
    t21 = (t0 + 3816);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t14, 8U);
    xsi_driver_first_trans_delta(t21, t20, 8U, 0LL);

LAB7:    t1 = (t0 + 6302);
    t6 = *((int *)t1);
    t2 = (t0 + 6306);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB8;

LAB9:    t16 = (t6 + 1);
    t6 = t16;
    t5 = (t0 + 6302);
    *((int *)t5) = t6;
    goto LAB5;

LAB10:    xsi_set_current_line(56, ng0);
    t1 = (t0 + 6310);
    *((int *)t1) = 0;
    t5 = (t0 + 6314);
    *((int *)t5) = 7;
    t6 = 0;
    t7 = 7;

LAB13:    if (t6 <= t7)
        goto LAB14;

LAB16:    goto LAB11;

LAB14:    xsi_set_current_line(57, ng0);
    t9 = xsi_get_transient_memory(8U);
    memset(t9, 0, 8U);
    t10 = t9;
    memset(t10, (unsigned char)2, 8U);
    t12 = (t0 + 6310);
    t16 = *((int *)t12);
    t17 = (t16 - 0);
    t18 = (t17 * 1);
    t19 = (8U * t18);
    t20 = (0U + t19);
    t13 = (t0 + 3816);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t21 = (t15 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t9, 8U);
    xsi_driver_first_trans_delta(t13, t20, 8U, 0LL);

LAB15:    t1 = (t0 + 6310);
    t6 = *((int *)t1);
    t2 = (t0 + 6314);
    t7 = *((int *)t2);
    if (t6 == t7)
        goto LAB16;

LAB17:    t16 = (t6 + 1);
    t6 = t16;
    t5 = (t0 + 6310);
    *((int *)t5) = t6;
    goto LAB13;

}

static void work_a_0367847773_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;

LAB0:    xsi_set_current_line(63, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 6152U);
    t4 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t3, t1);
    t5 = (t4 - 0);
    t6 = (t5 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t4);
    t7 = (8U * t6);
    t8 = (0 + t7);
    t9 = (t2 + t8);
    t10 = (t0 + 3880);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    memcpy(t14, t9, 8U);
    xsi_driver_first_trans_fast_port(t10);

LAB2:    t15 = (t0 + 3736);
    *((int *)t15) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_0367847773_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0367847773_3212880686_p_0,(void *)work_a_0367847773_3212880686_p_1};
	xsi_register_didat("work_a_0367847773_3212880686", "isim/CISC8_TB_isim_beh.exe.sim/work/a_0367847773_3212880686.didat");
	xsi_register_executes(pe);
}
