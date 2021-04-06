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
static const char *ng0 = "D:/Downloads/Reg8.vhd";



static void work_a_3088984984_3212880686_p_0(char *t0)
{
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    int t16;
    char *t17;
    char *t18;
    int t19;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    int t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    char *t30;
    int t31;
    char *t32;
    char *t33;
    int t34;
    char *t35;
    char *t36;
    int t37;
    unsigned int t38;
    unsigned int t39;
    unsigned int t40;
    char *t41;
    char *t42;
    char *t43;
    char *t44;
    char *t45;

LAB0:    xsi_set_current_line(24, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 992U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 4928);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(25, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    memset(t5, (unsigned char)2, 16U);
    t6 = (t0 + 5040);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 16U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(26, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(27, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 0U, 16U, 0LL);
    xsi_set_current_line(28, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 16U, 16U, 0LL);
    xsi_set_current_line(29, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 32U, 16U, 0LL);
    xsi_set_current_line(30, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 48U, 16U, 0LL);
    xsi_set_current_line(31, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 64U, 16U, 0LL);
    xsi_set_current_line(32, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 80U, 16U, 0LL);
    xsi_set_current_line(33, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 96U, 16U, 0LL);
    xsi_set_current_line(34, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5168);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_delta(t5, 112U, 16U, 0LL);
    goto LAB3;

LAB5:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1352U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(78, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(79, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);

LAB11:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB51;

LAB53:
LAB52:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1672U);
    t7 = *((char **)t2);
    t2 = (t0 + 7921);
    t15 = xsi_mem_cmp(t2, t7, 3U);
    if (t15 == 1)
        goto LAB14;

LAB23:    t9 = (t0 + 7924);
    t16 = xsi_mem_cmp(t9, t7, 3U);
    if (t16 == 1)
        goto LAB15;

LAB24:    t17 = (t0 + 7927);
    t19 = xsi_mem_cmp(t17, t7, 3U);
    if (t19 == 1)
        goto LAB16;

LAB25:    t20 = (t0 + 7930);
    t22 = xsi_mem_cmp(t20, t7, 3U);
    if (t22 == 1)
        goto LAB17;

LAB26:    t23 = (t0 + 7933);
    t25 = xsi_mem_cmp(t23, t7, 3U);
    if (t25 == 1)
        goto LAB18;

LAB27:    t26 = (t0 + 7936);
    t28 = xsi_mem_cmp(t26, t7, 3U);
    if (t28 == 1)
        goto LAB19;

LAB28:    t29 = (t0 + 7939);
    t31 = xsi_mem_cmp(t29, t7, 3U);
    if (t31 == 1)
        goto LAB20;

LAB29:    t32 = (t0 + 7942);
    t34 = xsi_mem_cmp(t32, t7, 3U);
    if (t34 == 1)
        goto LAB21;

LAB30:
LAB22:
LAB13:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 7945);
    t15 = xsi_mem_cmp(t1, t2, 3U);
    if (t15 == 1)
        goto LAB33;

LAB42:    t6 = (t0 + 7948);
    t16 = xsi_mem_cmp(t6, t2, 3U);
    if (t16 == 1)
        goto LAB34;

LAB43:    t8 = (t0 + 7951);
    t19 = xsi_mem_cmp(t8, t2, 3U);
    if (t19 == 1)
        goto LAB35;

LAB44:    t10 = (t0 + 7954);
    t22 = xsi_mem_cmp(t10, t2, 3U);
    if (t22 == 1)
        goto LAB36;

LAB45:    t18 = (t0 + 7957);
    t25 = xsi_mem_cmp(t18, t2, 3U);
    if (t25 == 1)
        goto LAB37;

LAB46:    t21 = (t0 + 7960);
    t28 = xsi_mem_cmp(t21, t2, 3U);
    if (t28 == 1)
        goto LAB38;

LAB47:    t24 = (t0 + 7963);
    t31 = xsi_mem_cmp(t24, t2, 3U);
    if (t31 == 1)
        goto LAB39;

LAB48:    t27 = (t0 + 7966);
    t34 = xsi_mem_cmp(t27, t2, 3U);
    if (t34 == 1)
        goto LAB40;

LAB49:
LAB41:
LAB32:    goto LAB11;

LAB14:    xsi_set_current_line(41, ng0);
    t35 = (t0 + 2632U);
    t36 = *((char **)t35);
    t37 = (0 - 0);
    t38 = (t37 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t35 = (t36 + t40);
    t41 = (t0 + 5040);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    t44 = (t43 + 56U);
    t45 = *((char **)t44);
    memcpy(t45, t35, 16U);
    xsi_driver_first_trans_fast(t41);
    goto LAB13;

LAB15:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (1 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB16:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (2 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB17:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (3 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB18:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (4 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB19:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (5 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB20:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (6 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB21:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (7 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB13;

LAB31:;
LAB33:    xsi_set_current_line(60, ng0);
    t30 = (t0 + 2632U);
    t32 = *((char **)t30);
    t37 = (0 - 0);
    t38 = (t37 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t30 = (t32 + t40);
    t33 = (t0 + 5104);
    t35 = (t33 + 56U);
    t36 = *((char **)t35);
    t41 = (t36 + 56U);
    t42 = *((char **)t41);
    memcpy(t42, t30, 16U);
    xsi_driver_first_trans_fast(t33);
    goto LAB32;

LAB34:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (1 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB35:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (2 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB36:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (3 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB37:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (4 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB38:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (5 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB39:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (6 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB40:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t15 = (7 - 0);
    t38 = (t15 * 1);
    t39 = (16U * t38);
    t40 = (0 + t39);
    t1 = (t2 + t40);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB32;

LAB50:;
LAB51:    xsi_set_current_line(83, ng0);
    t1 = (t0 + 1992U);
    t5 = *((char **)t1);
    t1 = (t0 + 7969);
    t15 = xsi_mem_cmp(t1, t5, 3U);
    if (t15 == 1)
        goto LAB55;

LAB64:    t7 = (t0 + 7972);
    t16 = xsi_mem_cmp(t7, t5, 3U);
    if (t16 == 1)
        goto LAB56;

LAB65:    t9 = (t0 + 7975);
    t19 = xsi_mem_cmp(t9, t5, 3U);
    if (t19 == 1)
        goto LAB57;

LAB66:    t17 = (t0 + 7978);
    t22 = xsi_mem_cmp(t17, t5, 3U);
    if (t22 == 1)
        goto LAB58;

LAB67:    t20 = (t0 + 7981);
    t25 = xsi_mem_cmp(t20, t5, 3U);
    if (t25 == 1)
        goto LAB59;

LAB68:    t23 = (t0 + 7984);
    t28 = xsi_mem_cmp(t23, t5, 3U);
    if (t28 == 1)
        goto LAB60;

LAB69:    t26 = (t0 + 7987);
    t31 = xsi_mem_cmp(t26, t5, 3U);
    if (t31 == 1)
        goto LAB61;

LAB70:    t29 = (t0 + 7990);
    t34 = xsi_mem_cmp(t29, t5, 3U);
    if (t34 == 1)
        goto LAB62;

LAB71:
LAB63:
LAB54:    goto LAB52;

LAB55:    xsi_set_current_line(85, ng0);
    t32 = xsi_get_transient_memory(16U);
    memset(t32, 0, 16U);
    t33 = t32;
    memset(t33, (unsigned char)2, 16U);
    t35 = (t0 + 5168);
    t36 = (t35 + 56U);
    t41 = *((char **)t36);
    t42 = (t41 + 56U);
    t43 = *((char **)t42);
    memcpy(t43, t32, 16U);
    xsi_driver_first_trans_delta(t35, 0U, 16U, 0LL);
    goto LAB54;

LAB56:    xsi_set_current_line(87, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB54;

LAB57:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 32U, 16U, 0LL);
    goto LAB54;

LAB58:    xsi_set_current_line(91, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 48U, 16U, 0LL);
    goto LAB54;

LAB59:    xsi_set_current_line(93, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 64U, 16U, 0LL);
    goto LAB54;

LAB60:    xsi_set_current_line(95, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 80U, 16U, 0LL);
    goto LAB54;

LAB61:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 96U, 16U, 0LL);
    goto LAB54;

LAB62:    xsi_set_current_line(99, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 112U, 16U, 0LL);
    goto LAB54;

LAB72:;
}

static void work_a_3088984984_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(105, ng0);

LAB3:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t1 = (t0 + 5232);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4944);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3088984984_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(106, ng0);

LAB3:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t1 = (t0 + 5296);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4960);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3088984984_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3088984984_3212880686_p_0,(void *)work_a_3088984984_3212880686_p_1,(void *)work_a_3088984984_3212880686_p_2};
	xsi_register_didat("work_a_3088984984_3212880686", "isim/RISC16TB_isim_beh.exe.sim/work/a_3088984984_3212880686.didat");
	xsi_register_executes(pe);
}
