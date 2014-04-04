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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/MyCoder/ISE_My/CA/MIPS/data_mem.v";
static int ng1[] = {0, 0};
static int ng2[] = {255, 0};
static int ng3[] = {1, 0};
static const char *ng4 = "SW:From DataMem: Data:%h H Write to Addr.: %h H";
static const char *ng5 = "SB(High Byte):From DataMem: Data:%h H Write to Addr.: %h H";
static const char *ng6 = "LW:From DataMem: Data:%h H Read from Memaddr: %h H";
static int ng7[] = {8, 0};
static const char *ng8 = "LB:From DataMem: Data:%h H Read from Memaddr: %h H";



static void Initial_13_0(char *t0)
{
    char t5[8];
    char t19[8];
    char t20[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    unsigned int t31;
    int t32;
    char *t33;
    unsigned int t34;
    int t35;
    int t36;
    unsigned int t37;
    unsigned int t38;
    int t39;
    int t40;

LAB0:    xsi_set_current_line(14, ng0);

LAB2:    xsi_set_current_line(15, ng0);
    xsi_set_current_line(15, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2408);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 9);

LAB3:    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng2)));
    memset(t5, 0, 8);
    t6 = (t3 + 4);
    if (*((unsigned int *)t6) != 0)
        goto LAB5;

LAB4:    t7 = (t4 + 4);
    if (*((unsigned int *)t7) != 0)
        goto LAB5;

LAB8:    if (*((unsigned int *)t3) > *((unsigned int *)t4))
        goto LAB7;

LAB6:    *((unsigned int *)t5) = 1;

LAB7:    t9 = (t5 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 != 0);
    if (t14 > 0)
        goto LAB9;

LAB10:
LAB1:    return;
LAB5:    t8 = (t5 + 4);
    *((unsigned int *)t5) = 1;
    *((unsigned int *)t8) = 1;
    goto LAB7;

LAB9:    xsi_set_current_line(16, ng0);

LAB11:    xsi_set_current_line(17, ng0);
    t15 = (t0 + 2408);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t0 + 2568);
    t21 = (t0 + 2568);
    t22 = (t21 + 72U);
    t23 = *((char **)t22);
    t24 = (t0 + 2568);
    t25 = (t24 + 64U);
    t26 = *((char **)t25);
    t27 = (t0 + 2408);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    xsi_vlog_generic_convert_array_indices(t19, t20, t23, t26, 2, 1, t29, 9, 2);
    t30 = (t19 + 4);
    t31 = *((unsigned int *)t30);
    t32 = (!(t31));
    t33 = (t20 + 4);
    t34 = *((unsigned int *)t33);
    t35 = (!(t34));
    t36 = (t32 && t35);
    if (t36 == 1)
        goto LAB12;

LAB13:    xsi_set_current_line(15, ng0);
    t1 = (t0 + 2408);
    t2 = (t1 + 56U);
    t3 = *((char **)t2);
    t4 = ((char*)((ng3)));
    memset(t5, 0, 8);
    xsi_vlog_unsigned_add(t5, 32, t3, 9, t4, 32);
    t6 = (t0 + 2408);
    xsi_vlogvar_assign_value(t6, t5, 0, 0, 9);
    goto LAB3;

LAB12:    t37 = *((unsigned int *)t19);
    t38 = *((unsigned int *)t20);
    t39 = (t37 - t38);
    t40 = (t39 + 1);
    xsi_vlogvar_assign_value(t18, t17, 0, *((unsigned int *)t20), t40);
    goto LAB13;

}

static void Always_20_1(char *t0)
{
    char t6[8];
    char t19[8];
    char t26[8];
    char t64[8];
    char t75[8];
    char t76[8];
    char t96[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t65;
    char *t66;
    char *t67;
    unsigned int t68;
    unsigned int t69;
    unsigned int t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    char *t74;
    char *t77;
    char *t78;
    char *t79;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    unsigned int t85;
    int t86;
    char *t87;
    unsigned int t88;
    int t89;
    int t90;
    unsigned int t91;
    unsigned int t92;
    int t93;
    int t94;
    unsigned int t95;
    unsigned int t97;
    unsigned int t98;
    unsigned int t99;
    unsigned int t100;

LAB0:    t1 = (t0 + 3896U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(20, ng0);
    t2 = (t0 + 4464);
    *((int *)t2) = 1;
    t3 = (t0 + 3928);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(21, ng0);

LAB5:    xsi_set_current_line(22, ng0);
    t4 = (t0 + 1048U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t26, t6, 8);

LAB12:    t58 = (t26 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(28, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB31;

LAB29:    if (*((unsigned int *)t2) == 0)
        goto LAB28;

LAB30:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;

LAB31:    memset(t19, 0, 8);
    t5 = (t6 + 4);
    t14 = *((unsigned int *)t5);
    t15 = (~(t14));
    t16 = *((unsigned int *)t6);
    t20 = (t16 & t15);
    t21 = (t20 & 1U);
    if (t21 != 0)
        goto LAB32;

LAB33:    if (*((unsigned int *)t5) != 0)
        goto LAB34;

LAB35:    t13 = (t19 + 4);
    t22 = *((unsigned int *)t19);
    t23 = *((unsigned int *)t13);
    t24 = (t22 || t23);
    if (t24 > 0)
        goto LAB36;

LAB37:    memcpy(t64, t19, 8);

LAB38:    t58 = (t64 + 4);
    t68 = *((unsigned int *)t58);
    t69 = (~(t68));
    t70 = *((unsigned int *)t64);
    t71 = (t70 & t69);
    t72 = (t71 != 0);
    if (t72 > 0)
        goto LAB46;

LAB47:
LAB48:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 1368U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t17 = (t18 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t17) != 0)
        goto LAB15;

LAB16:    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t19);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t6 + 4);
    t31 = (t19 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB15:    t25 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB16;

LAB17:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t6 + 4);
    t41 = (t19 + 4);
    t42 = *((unsigned int *)t6);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t19);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB19;

LAB20:    xsi_set_current_line(23, ng0);

LAB23:    xsi_set_current_line(24, ng0);
    t65 = (t0 + 1848U);
    t66 = *((char **)t65);
    memset(t64, 0, 8);
    t65 = (t64 + 4);
    t67 = (t66 + 4);
    t68 = *((unsigned int *)t66);
    t69 = (t68 >> 0);
    *((unsigned int *)t64) = t69;
    t70 = *((unsigned int *)t67);
    t71 = (t70 >> 0);
    *((unsigned int *)t65) = t71;
    t72 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t72 & 255U);
    t73 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t73 & 255U);
    t74 = (t0 + 2568);
    t77 = (t0 + 2568);
    t78 = (t77 + 72U);
    t79 = *((char **)t78);
    t80 = (t0 + 2568);
    t81 = (t80 + 64U);
    t82 = *((char **)t81);
    t83 = (t0 + 1688U);
    t84 = *((char **)t83);
    xsi_vlog_generic_convert_array_indices(t75, t76, t79, t82, 2, 1, t84, 16, 2);
    t83 = (t75 + 4);
    t85 = *((unsigned int *)t83);
    t86 = (!(t85));
    t87 = (t76 + 4);
    t88 = *((unsigned int *)t87);
    t89 = (!(t88));
    t90 = (t86 && t89);
    if (t90 == 1)
        goto LAB24;

LAB25:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 8);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 8);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 2568);
    t12 = (t0 + 2568);
    t13 = (t12 + 72U);
    t17 = *((char **)t13);
    t18 = (t0 + 2568);
    t25 = (t18 + 64U);
    t30 = *((char **)t25);
    t31 = (t0 + 1688U);
    t32 = *((char **)t31);
    t31 = ((char*)((ng3)));
    memset(t64, 0, 8);
    xsi_vlog_unsigned_add(t64, 32, t32, 16, t31, 32);
    xsi_vlog_generic_convert_array_indices(t19, t26, t17, t30, 2, 1, t64, 32, 2);
    t40 = (t19 + 4);
    t15 = *((unsigned int *)t40);
    t50 = (!(t15));
    t41 = (t26 + 4);
    t16 = *((unsigned int *)t41);
    t51 = (!(t16));
    t86 = (t50 && t51);
    if (t86 == 1)
        goto LAB26;

LAB27:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t0 + 1688U);
    t4 = *((char **)t2);
    xsi_vlogfile_write(1, 0, 0, ng4, 3, t0, (char)118, t3, 16, (char)118, t4, 16);
    goto LAB22;

LAB24:    t91 = *((unsigned int *)t75);
    t92 = *((unsigned int *)t76);
    t93 = (t91 - t92);
    t94 = (t93 + 1);
    xsi_vlogvar_wait_assign_value(t74, t64, 0, *((unsigned int *)t76), t94, 0LL);
    goto LAB25;

LAB26:    t20 = *((unsigned int *)t19);
    t21 = *((unsigned int *)t26);
    t89 = (t20 - t21);
    t90 = (t89 + 1);
    xsi_vlogvar_wait_assign_value(t5, t6, 0, *((unsigned int *)t26), t90, 0LL);
    goto LAB27;

LAB28:    *((unsigned int *)t6) = 1;
    goto LAB31;

LAB32:    *((unsigned int *)t19) = 1;
    goto LAB35;

LAB34:    t12 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB35;

LAB36:    t17 = (t0 + 1048U);
    t18 = *((char **)t17);
    memset(t26, 0, 8);
    t17 = (t18 + 4);
    t27 = *((unsigned int *)t17);
    t28 = (~(t27));
    t29 = *((unsigned int *)t18);
    t33 = (t29 & t28);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB39;

LAB40:    if (*((unsigned int *)t17) != 0)
        goto LAB41;

LAB42:    t35 = *((unsigned int *)t19);
    t36 = *((unsigned int *)t26);
    t37 = (t35 & t36);
    *((unsigned int *)t64) = t37;
    t30 = (t19 + 4);
    t31 = (t26 + 4);
    t32 = (t64 + 4);
    t38 = *((unsigned int *)t30);
    t39 = *((unsigned int *)t31);
    t42 = (t38 | t39);
    *((unsigned int *)t32) = t42;
    t43 = *((unsigned int *)t32);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB43;

LAB44:
LAB45:    goto LAB38;

LAB39:    *((unsigned int *)t26) = 1;
    goto LAB42;

LAB41:    t25 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB42;

LAB43:    t45 = *((unsigned int *)t64);
    t46 = *((unsigned int *)t32);
    *((unsigned int *)t64) = (t45 | t46);
    t40 = (t19 + 4);
    t41 = (t26 + 4);
    t47 = *((unsigned int *)t19);
    t48 = (~(t47));
    t49 = *((unsigned int *)t40);
    t52 = (~(t49));
    t53 = *((unsigned int *)t26);
    t54 = (~(t53));
    t55 = *((unsigned int *)t41);
    t56 = (~(t55));
    t50 = (t48 & t52);
    t51 = (t54 & t56);
    t57 = (~(t50));
    t59 = (~(t51));
    t60 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t60 & t57);
    t61 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t61 & t59);
    t62 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t62 & t57);
    t63 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t63 & t59);
    goto LAB45;

LAB46:    xsi_set_current_line(29, ng0);

LAB49:    xsi_set_current_line(34, ng0);
    t65 = (t0 + 1848U);
    t66 = *((char **)t65);
    memset(t75, 0, 8);
    t65 = (t75 + 4);
    t67 = (t66 + 4);
    t73 = *((unsigned int *)t66);
    t85 = (t73 >> 8);
    *((unsigned int *)t75) = t85;
    t88 = *((unsigned int *)t67);
    t91 = (t88 >> 8);
    *((unsigned int *)t65) = t91;
    t92 = *((unsigned int *)t75);
    *((unsigned int *)t75) = (t92 & 255U);
    t95 = *((unsigned int *)t65);
    *((unsigned int *)t65) = (t95 & 255U);
    t74 = (t0 + 2568);
    t77 = (t0 + 2568);
    t78 = (t77 + 72U);
    t79 = *((char **)t78);
    t80 = (t0 + 2568);
    t81 = (t80 + 64U);
    t82 = *((char **)t81);
    t83 = (t0 + 1688U);
    t84 = *((char **)t83);
    xsi_vlog_generic_convert_array_indices(t76, t96, t79, t82, 2, 1, t84, 16, 2);
    t83 = (t76 + 4);
    t97 = *((unsigned int *)t83);
    t86 = (!(t97));
    t87 = (t96 + 4);
    t98 = *((unsigned int *)t87);
    t89 = (!(t98));
    t90 = (t86 && t89);
    if (t90 == 1)
        goto LAB50;

LAB51:    xsi_set_current_line(35, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t6 + 4);
    t4 = (t3 + 4);
    t7 = *((unsigned int *)t3);
    t8 = (t7 >> 8);
    *((unsigned int *)t6) = t8;
    t9 = *((unsigned int *)t4);
    t10 = (t9 >> 8);
    *((unsigned int *)t2) = t10;
    t11 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t11 & 255U);
    t14 = *((unsigned int *)t2);
    *((unsigned int *)t2) = (t14 & 255U);
    t5 = (t0 + 1688U);
    t12 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng5, 3, t0, (char)118, t6, 8, (char)118, t12, 16);
    goto LAB48;

LAB50:    t99 = *((unsigned int *)t76);
    t100 = *((unsigned int *)t96);
    t93 = (t99 - t100);
    t94 = (t93 + 1);
    xsi_vlogvar_wait_assign_value(t74, t75, 0, *((unsigned int *)t96), t94, 0LL);
    goto LAB51;

}

static void Always_38_2(char *t0)
{
    char t6[8];
    char t19[8];
    char t26[8];
    char t64[8];
    char t68[8];
    char t79[8];
    char t88[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    char *t17;
    char *t18;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    char *t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t65;
    char *t66;
    char *t67;
    char *t69;
    char *t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;
    char *t77;
    char *t78;
    char *t80;
    char *t81;
    char *t82;
    char *t83;
    char *t84;
    char *t85;
    char *t86;
    char *t87;
    char *t89;
    unsigned int t90;
    unsigned int t91;
    unsigned int t92;
    unsigned int t93;
    unsigned int t94;

LAB0:    t1 = (t0 + 4144U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 4480);
    *((int *)t2) = 1;
    t3 = (t0 + 4176);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(39, ng0);

LAB5:    xsi_set_current_line(40, ng0);
    t4 = (t0 + 1208U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t4 = (t5 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB6;

LAB7:    if (*((unsigned int *)t4) != 0)
        goto LAB8;

LAB9:    t13 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t13);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB10;

LAB11:    memcpy(t26, t6, 8);

LAB12:    t58 = (t26 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB20;

LAB21:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 1208U);
    t3 = *((char **)t2);
    memset(t6, 0, 8);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB24;

LAB25:    if (*((unsigned int *)t2) != 0)
        goto LAB26;

LAB27:    t5 = (t6 + 4);
    t14 = *((unsigned int *)t6);
    t15 = *((unsigned int *)t5);
    t16 = (t14 || t15);
    if (t16 > 0)
        goto LAB28;

LAB29:    memcpy(t64, t6, 8);

LAB30:    t58 = (t64 + 4);
    t90 = *((unsigned int *)t58);
    t91 = (~(t90));
    t92 = *((unsigned int *)t64);
    t93 = (t92 & t91);
    t94 = (t93 != 0);
    if (t94 > 0)
        goto LAB42;

LAB43:
LAB44:
LAB22:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB8:    t12 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t12) = 1;
    goto LAB9;

LAB10:    t17 = (t0 + 1528U);
    t18 = *((char **)t17);
    memset(t19, 0, 8);
    t17 = (t18 + 4);
    t20 = *((unsigned int *)t17);
    t21 = (~(t20));
    t22 = *((unsigned int *)t18);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB13;

LAB14:    if (*((unsigned int *)t17) != 0)
        goto LAB15;

LAB16:    t27 = *((unsigned int *)t6);
    t28 = *((unsigned int *)t19);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t6 + 4);
    t31 = (t19 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB17;

LAB18:
LAB19:    goto LAB12;

LAB13:    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB15:    t25 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB16;

LAB17:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t6 + 4);
    t41 = (t19 + 4);
    t42 = *((unsigned int *)t6);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t19);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB19;

LAB20:    xsi_set_current_line(41, ng0);

LAB23:    xsi_set_current_line(42, ng0);
    t65 = (t0 + 2568);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    t69 = (t0 + 2568);
    t70 = (t69 + 72U);
    t71 = *((char **)t70);
    t72 = (t0 + 2568);
    t73 = (t72 + 64U);
    t74 = *((char **)t73);
    t75 = (t0 + 1688U);
    t76 = *((char **)t75);
    xsi_vlog_generic_get_array_select_value(t68, 8, t67, t71, t74, 2, 1, t76, 16, 2);
    t75 = (t0 + 2568);
    t77 = (t75 + 56U);
    t78 = *((char **)t77);
    t80 = (t0 + 2568);
    t81 = (t80 + 72U);
    t82 = *((char **)t81);
    t83 = (t0 + 2568);
    t84 = (t83 + 64U);
    t85 = *((char **)t84);
    t86 = (t0 + 1688U);
    t87 = *((char **)t86);
    t86 = ((char*)((ng3)));
    memset(t88, 0, 8);
    xsi_vlog_unsigned_add(t88, 32, t87, 16, t86, 32);
    xsi_vlog_generic_get_array_select_value(t79, 8, t78, t82, t85, 2, 1, t88, 32, 2);
    xsi_vlogtype_concat(t64, 16, 16, 2U, t79, 8, t68, 8);
    t89 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t89, t64, 0, 0, 16, 0LL);
    xsi_set_current_line(43, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1688U);
    t12 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng6, 3, t0, (char)118, t4, 16, (char)118, t12, 16);
    goto LAB22;

LAB24:    *((unsigned int *)t6) = 1;
    goto LAB27;

LAB26:    t4 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t4) = 1;
    goto LAB27;

LAB28:    t12 = (t0 + 1528U);
    t13 = *((char **)t12);
    memset(t19, 0, 8);
    t12 = (t13 + 4);
    t20 = *((unsigned int *)t12);
    t21 = (~(t20));
    t22 = *((unsigned int *)t13);
    t23 = (t22 & t21);
    t24 = (t23 & 1U);
    if (t24 != 0)
        goto LAB34;

LAB32:    if (*((unsigned int *)t12) == 0)
        goto LAB31;

LAB33:    t17 = (t19 + 4);
    *((unsigned int *)t19) = 1;
    *((unsigned int *)t17) = 1;

LAB34:    memset(t26, 0, 8);
    t18 = (t19 + 4);
    t27 = *((unsigned int *)t18);
    t28 = (~(t27));
    t29 = *((unsigned int *)t19);
    t33 = (t29 & t28);
    t34 = (t33 & 1U);
    if (t34 != 0)
        goto LAB35;

LAB36:    if (*((unsigned int *)t18) != 0)
        goto LAB37;

LAB38:    t35 = *((unsigned int *)t6);
    t36 = *((unsigned int *)t26);
    t37 = (t35 & t36);
    *((unsigned int *)t64) = t37;
    t30 = (t6 + 4);
    t31 = (t26 + 4);
    t32 = (t64 + 4);
    t38 = *((unsigned int *)t30);
    t39 = *((unsigned int *)t31);
    t42 = (t38 | t39);
    *((unsigned int *)t32) = t42;
    t43 = *((unsigned int *)t32);
    t44 = (t43 != 0);
    if (t44 == 1)
        goto LAB39;

LAB40:
LAB41:    goto LAB30;

LAB31:    *((unsigned int *)t19) = 1;
    goto LAB34;

LAB35:    *((unsigned int *)t26) = 1;
    goto LAB38;

LAB37:    t25 = (t26 + 4);
    *((unsigned int *)t26) = 1;
    *((unsigned int *)t25) = 1;
    goto LAB38;

LAB39:    t45 = *((unsigned int *)t64);
    t46 = *((unsigned int *)t32);
    *((unsigned int *)t64) = (t45 | t46);
    t40 = (t6 + 4);
    t41 = (t26 + 4);
    t47 = *((unsigned int *)t6);
    t48 = (~(t47));
    t49 = *((unsigned int *)t40);
    t52 = (~(t49));
    t53 = *((unsigned int *)t26);
    t54 = (~(t53));
    t55 = *((unsigned int *)t41);
    t56 = (~(t55));
    t50 = (t48 & t52);
    t51 = (t54 & t56);
    t57 = (~(t50));
    t59 = (~(t51));
    t60 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t60 & t57);
    t61 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t61 & t59);
    t62 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t62 & t57);
    t63 = *((unsigned int *)t64);
    *((unsigned int *)t64) = (t63 & t59);
    goto LAB41;

LAB42:    xsi_set_current_line(46, ng0);

LAB45:    xsi_set_current_line(47, ng0);
    t65 = (t0 + 2568);
    t66 = (t65 + 56U);
    t67 = *((char **)t66);
    t69 = (t0 + 2568);
    t70 = (t69 + 72U);
    t71 = *((char **)t70);
    t72 = (t0 + 2568);
    t73 = (t72 + 64U);
    t74 = *((char **)t73);
    t75 = (t0 + 1688U);
    t76 = *((char **)t75);
    xsi_vlog_generic_get_array_select_value(t68, 8, t67, t71, t74, 2, 1, t76, 16, 2);
    t75 = (t0 + 2728);
    xsi_vlogvar_wait_assign_value(t75, t68, 0, 0, 8, 0LL);
    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2728);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    memset(t19, 0, 8);
    t5 = (t19 + 4);
    t12 = (t4 + 4);
    t7 = *((unsigned int *)t4);
    t8 = (t7 >> 0);
    *((unsigned int *)t19) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 0);
    *((unsigned int *)t5) = t10;
    t11 = *((unsigned int *)t19);
    *((unsigned int *)t19) = (t11 & 255U);
    t14 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t14 & 255U);
    t13 = ((char*)((ng7)));
    t17 = (t0 + 2728);
    t18 = (t17 + 56U);
    t25 = *((char **)t18);
    memset(t64, 0, 8);
    t30 = (t64 + 4);
    t31 = (t25 + 4);
    t15 = *((unsigned int *)t25);
    t16 = (t15 >> 7);
    t20 = (t16 & 1);
    *((unsigned int *)t64) = t20;
    t21 = *((unsigned int *)t31);
    t22 = (t21 >> 7);
    t23 = (t22 & 1);
    *((unsigned int *)t30) = t23;
    xsi_vlog_mul_concat(t26, 8, 1, t13, 1U, t64, 1);
    xsi_vlogtype_concat(t6, 16, 16, 2U, t26, 8, t19, 8);
    t32 = (t0 + 2248);
    xsi_vlogvar_wait_assign_value(t32, t6, 0, 0, 16, 0LL);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2248);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 1688U);
    t12 = *((char **)t5);
    xsi_vlogfile_write(1, 0, 0, ng8, 3, t0, (char)118, t4, 16, (char)118, t12, 16);
    goto LAB44;

}


extern void work_m_00000000003991960879_1720460815_init()
{
	static char *pe[] = {(void *)Initial_13_0,(void *)Always_20_1,(void *)Always_38_2};
	xsi_register_didat("work_m_00000000003991960879_1720460815", "isim/tb_mips_isim_beh.exe.sim/work/m_00000000003991960879_1720460815.didat");
	xsi_register_executes(pe);
}
