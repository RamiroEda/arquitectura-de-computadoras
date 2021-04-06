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
    unsigned char t15;
    unsigned char t16;
    unsigned char t17;
    int t18;
    int t20;
    char *t21;
    int t23;
    char *t24;
    int t26;
    char *t27;
    int t29;
    char *t30;
    int t32;
    char *t33;
    char *t34;
    int t35;
    char *t36;
    char *t37;
    int t38;
    char *t39;
    char *t40;
    int t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

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
    t14 = *((unsigned char *)t6);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB13;

LAB14:    t13 = (unsigned char)0;

LAB15:    if (t13 != 0)
        goto LAB10;

LAB12:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t4 = *((unsigned char *)t2);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB56;

LAB57:    t3 = (unsigned char)0;

LAB58:    if (t3 != 0)
        goto LAB54;

LAB55:    xsi_set_current_line(136, ng0);
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
    xsi_set_current_line(137, ng0);
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

LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(39, ng0);
    t2 = (t0 + 1672U);
    t8 = *((char **)t2);
    t2 = (t0 + 7989);
    t18 = xsi_mem_cmp(t2, t8, 3U);
    if (t18 == 1)
        goto LAB17;

LAB26:    t10 = (t0 + 7992);
    t20 = xsi_mem_cmp(t10, t8, 3U);
    if (t20 == 1)
        goto LAB18;

LAB27:    t21 = (t0 + 7995);
    t23 = xsi_mem_cmp(t21, t8, 3U);
    if (t23 == 1)
        goto LAB19;

LAB28:    t24 = (t0 + 7998);
    t26 = xsi_mem_cmp(t24, t8, 3U);
    if (t26 == 1)
        goto LAB20;

LAB29:    t27 = (t0 + 8001);
    t29 = xsi_mem_cmp(t27, t8, 3U);
    if (t29 == 1)
        goto LAB21;

LAB30:    t30 = (t0 + 8004);
    t32 = xsi_mem_cmp(t30, t8, 3U);
    if (t32 == 1)
        goto LAB22;

LAB31:    t33 = (t0 + 8007);
    t35 = xsi_mem_cmp(t33, t8, 3U);
    if (t35 == 1)
        goto LAB23;

LAB32:    t36 = (t0 + 8010);
    t38 = xsi_mem_cmp(t36, t8, 3U);
    if (t38 == 1)
        goto LAB24;

LAB33:
LAB25:
LAB16:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 8013);
    t18 = xsi_mem_cmp(t1, t2, 3U);
    if (t18 == 1)
        goto LAB36;

LAB45:    t6 = (t0 + 8016);
    t20 = xsi_mem_cmp(t6, t2, 3U);
    if (t20 == 1)
        goto LAB37;

LAB46:    t8 = (t0 + 8019);
    t23 = xsi_mem_cmp(t8, t2, 3U);
    if (t23 == 1)
        goto LAB38;

LAB47:    t10 = (t0 + 8022);
    t26 = xsi_mem_cmp(t10, t2, 3U);
    if (t26 == 1)
        goto LAB39;

LAB48:    t21 = (t0 + 8025);
    t29 = xsi_mem_cmp(t21, t2, 3U);
    if (t29 == 1)
        goto LAB40;

LAB49:    t24 = (t0 + 8028);
    t32 = xsi_mem_cmp(t24, t2, 3U);
    if (t32 == 1)
        goto LAB41;

LAB50:    t27 = (t0 + 8031);
    t35 = xsi_mem_cmp(t27, t2, 3U);
    if (t35 == 1)
        goto LAB42;

LAB51:    t30 = (t0 + 8034);
    t38 = xsi_mem_cmp(t30, t2, 3U);
    if (t38 == 1)
        goto LAB43;

LAB52:
LAB44:
LAB35:    goto LAB11;

LAB13:    t2 = (t0 + 1512U);
    t7 = *((char **)t2);
    t16 = *((unsigned char *)t7);
    t17 = (t16 == (unsigned char)2);
    t13 = t17;
    goto LAB15;

LAB17:    xsi_set_current_line(41, ng0);
    t39 = (t0 + 2632U);
    t40 = *((char **)t39);
    t41 = (0 - 0);
    t42 = (t41 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t39 = (t40 + t44);
    t45 = (t0 + 5040);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    t48 = (t47 + 56U);
    t49 = *((char **)t48);
    memcpy(t49, t39, 16U);
    xsi_driver_first_trans_fast(t45);
    goto LAB16;

LAB18:    xsi_set_current_line(43, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (1 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB19:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (2 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB20:    xsi_set_current_line(47, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (3 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB21:    xsi_set_current_line(49, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (4 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB22:    xsi_set_current_line(51, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (5 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB23:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (6 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB24:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (7 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB16;

LAB34:;
LAB36:    xsi_set_current_line(60, ng0);
    t33 = (t0 + 2632U);
    t34 = *((char **)t33);
    t41 = (0 - 0);
    t42 = (t41 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t33 = (t34 + t44);
    t36 = (t0 + 5104);
    t37 = (t36 + 56U);
    t39 = *((char **)t37);
    t40 = (t39 + 56U);
    t45 = *((char **)t40);
    memcpy(t45, t33, 16U);
    xsi_driver_first_trans_fast(t36);
    goto LAB35;

LAB37:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (1 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB38:    xsi_set_current_line(64, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (2 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB39:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (3 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB40:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (4 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB41:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (5 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB42:    xsi_set_current_line(72, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (6 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB43:    xsi_set_current_line(74, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (7 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB35;

LAB53:;
LAB54:    xsi_set_current_line(78, ng0);
    t1 = (t0 + 1672U);
    t6 = *((char **)t1);
    t1 = (t0 + 8037);
    t18 = xsi_mem_cmp(t1, t6, 3U);
    if (t18 == 1)
        goto LAB60;

LAB69:    t8 = (t0 + 8040);
    t20 = xsi_mem_cmp(t8, t6, 3U);
    if (t20 == 1)
        goto LAB61;

LAB70:    t10 = (t0 + 8043);
    t23 = xsi_mem_cmp(t10, t6, 3U);
    if (t23 == 1)
        goto LAB62;

LAB71:    t21 = (t0 + 8046);
    t26 = xsi_mem_cmp(t21, t6, 3U);
    if (t26 == 1)
        goto LAB63;

LAB72:    t24 = (t0 + 8049);
    t29 = xsi_mem_cmp(t24, t6, 3U);
    if (t29 == 1)
        goto LAB64;

LAB73:    t27 = (t0 + 8052);
    t32 = xsi_mem_cmp(t27, t6, 3U);
    if (t32 == 1)
        goto LAB65;

LAB74:    t30 = (t0 + 8055);
    t35 = xsi_mem_cmp(t30, t6, 3U);
    if (t35 == 1)
        goto LAB66;

LAB75:    t33 = (t0 + 8058);
    t38 = xsi_mem_cmp(t33, t6, 3U);
    if (t38 == 1)
        goto LAB67;

LAB76:
LAB68:
LAB59:    xsi_set_current_line(97, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t1 = (t0 + 8061);
    t18 = xsi_mem_cmp(t1, t2, 3U);
    if (t18 == 1)
        goto LAB79;

LAB88:    t6 = (t0 + 8064);
    t20 = xsi_mem_cmp(t6, t2, 3U);
    if (t20 == 1)
        goto LAB80;

LAB89:    t8 = (t0 + 8067);
    t23 = xsi_mem_cmp(t8, t2, 3U);
    if (t23 == 1)
        goto LAB81;

LAB90:    t10 = (t0 + 8070);
    t26 = xsi_mem_cmp(t10, t2, 3U);
    if (t26 == 1)
        goto LAB82;

LAB91:    t21 = (t0 + 8073);
    t29 = xsi_mem_cmp(t21, t2, 3U);
    if (t29 == 1)
        goto LAB83;

LAB92:    t24 = (t0 + 8076);
    t32 = xsi_mem_cmp(t24, t2, 3U);
    if (t32 == 1)
        goto LAB84;

LAB93:    t27 = (t0 + 8079);
    t35 = xsi_mem_cmp(t27, t2, 3U);
    if (t35 == 1)
        goto LAB85;

LAB94:    t30 = (t0 + 8082);
    t38 = xsi_mem_cmp(t30, t2, 3U);
    if (t38 == 1)
        goto LAB86;

LAB95:
LAB87:
LAB78:    xsi_set_current_line(116, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 8085);
    t18 = xsi_mem_cmp(t1, t2, 3U);
    if (t18 == 1)
        goto LAB98;

LAB107:    t6 = (t0 + 8088);
    t20 = xsi_mem_cmp(t6, t2, 3U);
    if (t20 == 1)
        goto LAB99;

LAB108:    t8 = (t0 + 8091);
    t23 = xsi_mem_cmp(t8, t2, 3U);
    if (t23 == 1)
        goto LAB100;

LAB109:    t10 = (t0 + 8094);
    t26 = xsi_mem_cmp(t10, t2, 3U);
    if (t26 == 1)
        goto LAB101;

LAB110:    t21 = (t0 + 8097);
    t29 = xsi_mem_cmp(t21, t2, 3U);
    if (t29 == 1)
        goto LAB102;

LAB111:    t24 = (t0 + 8100);
    t32 = xsi_mem_cmp(t24, t2, 3U);
    if (t32 == 1)
        goto LAB103;

LAB112:    t27 = (t0 + 8103);
    t35 = xsi_mem_cmp(t27, t2, 3U);
    if (t35 == 1)
        goto LAB104;

LAB113:    t30 = (t0 + 8106);
    t38 = xsi_mem_cmp(t30, t2, 3U);
    if (t38 == 1)
        goto LAB105;

LAB114:
LAB106:
LAB97:    goto LAB11;

LAB56:    t1 = (t0 + 1352U);
    t5 = *((char **)t1);
    t12 = *((unsigned char *)t5);
    t13 = (t12 == (unsigned char)3);
    t3 = t13;
    goto LAB58;

LAB60:    xsi_set_current_line(80, ng0);
    t36 = (t0 + 2632U);
    t37 = *((char **)t36);
    t41 = (0 - 0);
    t42 = (t41 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t36 = (t37 + t44);
    t39 = (t0 + 5040);
    t40 = (t39 + 56U);
    t45 = *((char **)t40);
    t46 = (t45 + 56U);
    t47 = *((char **)t46);
    memcpy(t47, t36, 16U);
    xsi_driver_first_trans_fast(t39);
    goto LAB59;

LAB61:    xsi_set_current_line(82, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (1 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB62:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (2 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB63:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (3 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB64:    xsi_set_current_line(88, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (4 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB65:    xsi_set_current_line(90, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (5 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB66:    xsi_set_current_line(92, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (6 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB67:    xsi_set_current_line(94, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (7 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5040);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB59;

LAB77:;
LAB79:    xsi_set_current_line(99, ng0);
    t33 = (t0 + 2632U);
    t34 = *((char **)t33);
    t41 = (0 - 0);
    t42 = (t41 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t33 = (t34 + t44);
    t36 = (t0 + 5104);
    t37 = (t36 + 56U);
    t39 = *((char **)t37);
    t40 = (t39 + 56U);
    t45 = *((char **)t40);
    memcpy(t45, t33, 16U);
    xsi_driver_first_trans_fast(t36);
    goto LAB78;

LAB80:    xsi_set_current_line(101, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (1 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB81:    xsi_set_current_line(103, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (2 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB82:    xsi_set_current_line(105, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (3 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB83:    xsi_set_current_line(107, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (4 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB84:    xsi_set_current_line(109, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (5 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB85:    xsi_set_current_line(111, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (6 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB86:    xsi_set_current_line(113, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t18 = (7 - 0);
    t42 = (t18 * 1);
    t43 = (16U * t42);
    t44 = (0 + t43);
    t1 = (t2 + t44);
    t5 = (t0 + 5104);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 16U);
    xsi_driver_first_trans_fast(t5);
    goto LAB78;

LAB96:;
LAB98:    xsi_set_current_line(118, ng0);
    t33 = xsi_get_transient_memory(16U);
    memset(t33, 0, 16U);
    t34 = t33;
    memset(t34, (unsigned char)2, 16U);
    t36 = (t0 + 5168);
    t37 = (t36 + 56U);
    t39 = *((char **)t37);
    t40 = (t39 + 56U);
    t45 = *((char **)t40);
    memcpy(t45, t33, 16U);
    xsi_driver_first_trans_delta(t36, 0U, 16U, 0LL);
    goto LAB97;

LAB99:    xsi_set_current_line(120, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 16U, 16U, 0LL);
    goto LAB97;

LAB100:    xsi_set_current_line(122, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 32U, 16U, 0LL);
    goto LAB97;

LAB101:    xsi_set_current_line(124, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 48U, 16U, 0LL);
    goto LAB97;

LAB102:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 64U, 16U, 0LL);
    goto LAB97;

LAB103:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 80U, 16U, 0LL);
    goto LAB97;

LAB104:    xsi_set_current_line(130, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 96U, 16U, 0LL);
    goto LAB97;

LAB105:    xsi_set_current_line(132, ng0);
    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 5168);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_delta(t1, 112U, 16U, 0LL);
    goto LAB97;

LAB115:;
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

LAB0:    xsi_set_current_line(141, ng0);

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

LAB0:    xsi_set_current_line(142, ng0);

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
	xsi_register_didat("work_a_3088984984_3212880686", "isim/RISC16_isim_beh.exe.sim/work/a_3088984984_3212880686.didat");
	xsi_register_executes(pe);
}
