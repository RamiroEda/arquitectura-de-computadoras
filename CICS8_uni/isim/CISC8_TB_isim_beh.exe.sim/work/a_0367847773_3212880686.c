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
static const char *ng0 = "D:/Github/arquitectura-de-computadoras/CICS8_uni/X.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_180853171_1035706684(char *, char *, int , int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_0367847773_3212880686_p_0(char *t0)
{
    char t7[16];
    char t9[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t8;
    char *t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB24;

LAB26:
LAB25:    t1 = (t0 + 3720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(27, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB5;

LAB7:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(29, ng0);
    t3 = (t0 + 1512U);
    t8 = *((char **)t3);
    t3 = (t0 + 6268U);
    t10 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 0, 8);
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t8, t3, t10, t9);
    t12 = (t7 + 12U);
    t13 = *((unsigned int *)t12);
    t14 = (1U * t13);
    t15 = (8U != t14);
    if (t15 == 1)
        goto LAB8;

LAB9:    t16 = (t0 + 3816);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 8U);
    xsi_driver_first_trans_delta(t16, 0U, 8U, 0LL);
    xsi_set_current_line(30, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 1, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB10;

LAB11:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 8U, 8U, 0LL);
    xsi_set_current_line(31, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 2, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB12;

LAB13:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 16U, 8U, 0LL);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 3, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB14;

LAB15:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 24U, 8U, 0LL);
    xsi_set_current_line(33, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 4, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB16;

LAB17:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 32U, 8U, 0LL);
    xsi_set_current_line(34, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 5, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB18;

LAB19:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 40U, 8U, 0LL);
    xsi_set_current_line(35, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 6, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB20;

LAB21:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 48U, 8U, 0LL);
    xsi_set_current_line(36, ng0);
    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t1 = (t0 + 6268U);
    t4 = ieee_p_1242562249_sub_180853171_1035706684(IEEE_P_1242562249, t9, 7, 8);
    t8 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t7, t3, t1, t4, t9);
    t10 = (t7 + 12U);
    t13 = *((unsigned int *)t10);
    t14 = (1U * t13);
    t2 = (8U != t14);
    if (t2 == 1)
        goto LAB22;

LAB23:    t11 = (t0 + 3816);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t8, 8U);
    xsi_driver_first_trans_delta(t11, 56U, 8U, 0LL);
    goto LAB6;

LAB8:    xsi_size_not_matching(8U, t14, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(8U, t14, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(8U, t14, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(8U, t14, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(8U, t14, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(8U, t14, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(8U, t14, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(8U, t14, 0);
    goto LAB23;

LAB24:    xsi_set_current_line(41, ng0);
    t1 = (t0 + 6434);
    t6 = (8U != 8U);
    if (t6 == 1)
        goto LAB27;

LAB28:    t8 = (t0 + 3816);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t16 = *((char **)t12);
    memcpy(t16, t1, 8U);
    xsi_driver_first_trans_delta(t8, 56U, 8U, 0LL);
    xsi_set_current_line(42, ng0);
    t1 = (t0 + 6442);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB29;

LAB30:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 48U, 8U, 0LL);
    xsi_set_current_line(43, ng0);
    t1 = (t0 + 6450);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB31;

LAB32:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 40U, 8U, 0LL);
    xsi_set_current_line(44, ng0);
    t1 = (t0 + 6458);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB33;

LAB34:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 32U, 8U, 0LL);
    xsi_set_current_line(45, ng0);
    t1 = (t0 + 6466);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB35;

LAB36:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 24U, 8U, 0LL);
    xsi_set_current_line(46, ng0);
    t1 = (t0 + 6474);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB37;

LAB38:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 16U, 8U, 0LL);
    xsi_set_current_line(47, ng0);
    t1 = (t0 + 6482);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB39;

LAB40:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 8U, 8U, 0LL);
    xsi_set_current_line(48, ng0);
    t1 = (t0 + 6490);
    t2 = (8U != 8U);
    if (t2 == 1)
        goto LAB41;

LAB42:    t4 = (t0 + 3816);
    t8 = (t4 + 56U);
    t10 = *((char **)t8);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t1, 8U);
    xsi_driver_first_trans_delta(t4, 0U, 8U, 0LL);
    goto LAB25;

LAB27:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB28;

LAB29:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB30;

LAB31:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB32;

LAB33:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB34;

LAB35:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB36;

LAB37:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB38;

LAB39:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB40;

LAB41:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB42;

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

LAB0:    xsi_set_current_line(53, ng0);

LAB3:    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 1672U);
    t3 = *((char **)t1);
    t1 = (t0 + 6284U);
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
