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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_3499444699;
char *IEEE_P_1242562249;
char *IEEE_P_3620187407;
char *IEEE_P_3564397177;
char *IEEE_P_2592010699;
char *STD_TEXTIO;
char *STD_STANDARD;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    std_textio_init();
    ieee_p_3564397177_init();
    work_a_2628436406_3212880686_init();
    work_a_0832606739_3212880686_init();
    work_a_0361700727_3212880686_init();
    work_a_1710397419_3212880686_init();
    work_a_2263464102_3212880686_init();
    work_a_1561973598_3212880686_init();
    work_a_3705113512_3212880686_init();
    work_a_1262407629_3212880686_init();
    work_a_0380725995_3212880686_init();
    work_a_3392787015_3212880686_init();
    work_a_1643706638_3212880686_init();
    work_a_1763732061_3212880686_init();
    work_a_1492497583_3212880686_init();
    work_a_1991350011_3212880686_init();
    work_a_0147542860_3212880686_init();
    work_a_0367847773_3212880686_init();
    work_a_1614376087_3212880686_init();


    xsi_register_tops("work_a_1614376087_3212880686");

    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");
    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    STD_STANDARD = xsi_get_engine_memory("std_standard");

    return xsi_run_simulation(argc, argv);

}
