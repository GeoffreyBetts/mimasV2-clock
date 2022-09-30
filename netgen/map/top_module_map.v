////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_module_map.v
// /___/   /\     Timestamp: Fri Sep 30 11:17:04 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -filter E:/Xilinx/projects/mimasV2-clock/iseconfig/filter.filter -intstyle ise -s 2 -pcf top_module.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim top_module_map.ncd top_module_map.v 
// Device	: 6slx9csg324-2 (PRODUCTION 1.23 2013-10-13)
// Input file	: top_module_map.ncd
// Output file	: E:\Xilinx\projects\mimasV2-clock\netgen\map\top_module_map.v
// # of Modules	: 1
// Design Name	: top_module
// Xilinx        : E:\Xilinx\14.7\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module top_module (
  i_clk, i_reset_btn, i_wr_btn, i_val_inc_btn, i_val_dec_btn, i_sel_inc_btn, i_sel_dec_btn, o_rs, o_e, w_wr, o_hz, o_d
);
  input i_clk;
  input i_reset_btn;
  input i_wr_btn;
  input i_val_inc_btn;
  input i_val_dec_btn;
  input i_sel_inc_btn;
  input i_sel_dec_btn;
  output o_rs;
  output o_e;
  output w_wr;
  output o_hz;
  output [7 : 0] o_d;
  wire NlwRenamedSig_IO_i_reset_btn;
  wire NlwRenamedSig_IO_i_wr_btn;
  wire NlwRenamedSig_IO_i_val_inc_btn;
  wire NlwRenamedSig_IO_i_val_dec_btn;
  wire NlwRenamedSig_IO_i_sel_inc_btn;
  wire NlwRenamedSig_IO_i_sel_dec_btn;
  wire \time_keeper/w_ena_hh_i_reset_OR_63_o ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire i_clk_BUFGP;
  wire N26;
  wire \time_keeper/time_hh/i_reset_o_roll_OR_60_o ;
  wire \time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ;
  wire \time_keeper/w_inc ;
  wire w_reset_n;
  wire \lcd_driver/rs_e_output/o_e_glue_set_2173 ;
  wire \lcd_driver/rs_e_output/o_e_2174 ;
  wire \time_keeper/time_mm/w_ena2_i_reset_OR_47_o ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ;
  wire N24;
  wire \time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ;
  wire \time_keeper/w_ena_ss_i_reset_OR_56_o ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_ss/w_roll_lth ;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \lcd_driver/rs_e_output/o_rs_rstpot_2192 ;
  wire \lcd_driver/rs_e_output/o_rs_2193 ;
  wire \time_keeper/time_ss/first_digit/o_q_0_1_2196 ;
  wire N10;
  wire \wr_sel_control/wr_control/p2t/o_q_rstpot_2198 ;
  wire \wr_sel_control/wr_control/p2t/o_q_2199 ;
  wire \pulse_gen/r_cnt_f_val1 ;
  wire \pulse_gen/r_cnt_f_val ;
  wire \pulse_gen/o_pulse_vf_2215 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> ;
  wire \lcd_driver/lcd_pulse_gen/o_update_pulse_2218 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_2219 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1_2220 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_2221 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_2222 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_3_2223 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_3_2224 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_2225 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> ;
  wire \btn_debouncer/val_dec_btn/o_pulse1_FRB_2228 ;
  wire \pulse_gen/o_pulse_f_2_2229 ;
  wire \btn_debouncer/val_inc_btn/o_pulse1_FRB_1_0 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> ;
  wire \time_keeper/time_ss/first_digit/o_roll_high_2235 ;
  wire \btn_debouncer/val_inc_btn/dff_pq1/o_q_2236 ;
  wire \btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ;
  wire \wr_sel_control/wr_control/p2t/o_q_1_2238 ;
  wire \pulse_gen/o_pulse_n_2239 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4>_0 ;
  wire \pulse_gen/r_cnt_n_val ;
  wire N2;
  wire \pulse_gen/o_pulse_f_2251 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_2255 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In3 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6>_0 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In3 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7>_0 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_2262 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In1 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_2264 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In1 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In ;
  wire w_val_dec_btn;
  wire \btn_debouncer/val_dec_btn/dff_ms0/o_q_2268 ;
  wire w_val_inc_btn;
  wire \btn_debouncer/val_inc_btn/dff_ms0/o_q_2270 ;
  wire \i_clk_BUFGP/IBUFG_0 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB5_2272 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB0_2273 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB0_2274 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB2_0 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB1_2276 ;
  wire \lcd_driver/control_fsm/_n0483_inv ;
  wire \lcd_driver/control_fsm/o_val_3_BRB2_2278 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB2_2279 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB6_2280 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB6_2281 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt11_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt4_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt3_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt7_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt8_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt9_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt10_0 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB_2290 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_2296 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB_2297 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_2298 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In317_0 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_2300 ;
  wire \time_keeper/time_hh/first_digit/o_roll_high_2301 ;
  wire \time_keeper/time_hh/o_roll_2302 ;
  wire \time_keeper/time_mm/o_roll_2303 ;
  wire \wr_sel_control/wr_control/p2t/o_q_2_2304 ;
  wire \time_keeper/time_hh/first_digit/o_roll_low_2305 ;
  wire \time_keeper/w_ena_hh_i_reset_OR_63_o1 ;
  wire \time_keeper/time_ss/o_roll_2307 ;
  wire N178;
  wire N179;
  wire \time_keeper/time_hh/w_ena2_i_reset_OR_61_o_0 ;
  wire N176;
  wire N177;
  wire \time_keeper/time_pm/o_q_BRB0_2313 ;
  wire \time_keeper/time_pm/o_q_BRB1_2314 ;
  wire \time_keeper/time_pm/o_q_BRB2_2315 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB1_2316 ;
  wire \time_keeper/time_hh/second_digit/o_q_2317 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In37_2320 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In39_0 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB_2323 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB_2325 ;
  wire \btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ;
  wire N8;
  wire N12_0;
  wire \time_keeper/w_ena_mm_i_reset_OR_57_o2 ;
  wire \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable_0 ;
  wire w_wr_btn;
  wire \btn_debouncer/wr_btn/dff_pq0/o_q_2338 ;
  wire w_sel_dec_btn;
  wire \btn_debouncer/sel_dec_btn/dff_pq0/o_q_2340 ;
  wire w_sel_inc_btn;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/o_q_2342 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/w_ena_mm_i_reset_OR_57_o ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ;
  wire N6_0;
  wire N186_0;
  wire \lcd_driver/control_fsm/o_sel_2_2351 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_hh/first_digit/_n0037 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ;
  wire \lcd_driver/control_fsm/o_val_0 ;
  wire N78;
  wire \lcd_driver/control_fsm/o_data_2360 ;
  wire \lcd_driver/control_fsm/o_sel_0_0 ;
  wire \lcd_driver/control_fsm/o_sel_1_2362 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In21 ;
  wire N69;
  wire \lcd_driver/control_fsm/o_val_2_BRB9_2365 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB0_2366 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB2_2367 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB1_2368 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB3_2369 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt1_0 ;
  wire \lcd_driver/control_fsm/o_e_trigger_2372 ;
  wire \lcd_driver/rs_e_output/_n0030_inv_0 ;
  wire \lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ;
  wire \btn_debouncer/sel_inc_btn/dff_pq1/o_q_0 ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>_0 ;
  wire \time_keeper/time_mm/first_digit/o_roll_low_2380 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt2_0 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_2382 ;
  wire N56;
  wire \lcd_driver/control_fsm/Mcount_r_cnt5_0 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt6_0 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_2386 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB_2387 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_2388 ;
  wire \btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB_2391 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB10_2392 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire N30;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ;
  wire \lcd_driver/control_fsm/_n0366_inv ;
  wire \lcd_driver/control_fsm/o_val_2_BRB5_0 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB3_2406 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB9_2407 ;
  wire \btn_debouncer/sel_dec_btn/dff_pq1/o_q_2408 ;
  wire N31;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_3_2410 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_3_2413 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_2414 ;
  wire N164;
  wire N38;
  wire N55;
  wire \lcd_driver/control_fsm/o_val_0_BRB7_2418 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB9_2419 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \btn_debouncer/wr_btn/dff_pq1/o_q_2422 ;
  wire N96;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1_2427 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB5_2428 ;
  wire \pulse_gen/o_pulse_f_1_2429 ;
  wire \btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ;
  wire \lcd_driver/rs_e_output/o_e_1_2431 ;
  wire N36;
  wire N87_0;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_1_2434 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_1_2435 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In18_0 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_1_2437 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_1_2438 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_3_2439 ;
  wire \time_keeper/time_mm/first_digit/o_roll_high_2440 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_2441 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In31_2442 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In121 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In311_2444 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In34_2445 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In16_0 ;
  wire N46;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In31_2448 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In33_2449 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy[3] ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In11_2451 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy[7] ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In12_2453 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy[11] ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In17_2455 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o ;
  wire \lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt_cy[3] ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt_cy[7] ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In12_2460 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In17_2461 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ;
  wire N93;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In1_2464 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In8_2465 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In7_2466 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In6_2467 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In5_2468 ;
  wire N162;
  wire \pulse_gen/Mcount_r_cnt_vf_val ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In32_2471 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_2472 ;
  wire N158;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In4_2474 ;
  wire N156;
  wire \lcd_driver/rs_e_output/o_rs_1_2476 ;
  wire N45;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In16_2478 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In15_2479 ;
  wire N154;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB_2481 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB_2482 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In15_2483 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_1_2484 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In31_2485 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In2_2486 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In3_2487 ;
  wire N89;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In310_2489 ;
  wire N43;
  wire N42;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB_2492 ;
  wire N168;
  wire N166;
  wire N160;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In11_2496 ;
  wire N70;
  wire \lcd_driver/control_fsm/o_val_2_BRB7_2498 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB1_2499 ;
  wire \lcd_driver/control_fsm/o_val_2 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In32_2501 ;
  wire \time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \lcd_driver/control_fsm/o_val_3 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB1_2505 ;
  wire N65;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ;
  wire \lcd_driver/control_fsm/o_val_1 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB8_2509 ;
  wire \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ;
  wire N175;
  wire N173;
  wire N98;
  wire \lcd_driver/control_fsm/o_val_0_BRB4_2514 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB3_2515 ;
  wire \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_bdd0 ;
  wire N14;
  wire \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_bdd0 ;
  wire N4;
  wire N16;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire N94;
  wire \lcd_driver/lcd_pulse_gen/_n00111 ;
  wire N184;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o11_2526 ;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o1 ;
  wire \time_keeper/time_ss/first_digit/o_roll_low_2528 ;
  wire \wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ;
  wire \pulse_gen/r_cnt_f_val11_2530 ;
  wire \pulse_gen/r_cnt_f_val12_2531 ;
  wire \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ;
  wire N20;
  wire \time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o ;
  wire \time_keeper/time_mm/w_roll_lth ;
  wire \ProtoComp17.D2OBYPSEL_GND.0 ;
  wire \ProtoComp17.D2OFFBYP_SRC.OUT ;
  wire \btn_debouncer/val_dec_btn/dff_ms0/o_q/ProtoComp17.D2OBYPSEL_GND.0 ;
  wire \btn_debouncer/val_dec_btn/dff_ms0/o_q/ProtoComp17.D2OFFBYP_SRC.OUT ;
  wire \pulse_gen/r_cnt_f<1>_rt_82 ;
  wire \pulse_gen/Result<2>1 ;
  wire \pulse_gen/Result<3>1 ;
  wire \ProtoComp139.CYINITGND.0 ;
  wire \pulse_gen/Result<1>1 ;
  wire \pulse_gen/Result<0>1 ;
  wire \pulse_gen/r_cnt_f<2>_rt_63 ;
  wire \pulse_gen/r_cnt_f<3>_rt_62 ;
  wire \pulse_gen/r_cnt_f<10>_rt_140 ;
  wire \pulse_gen/r_cnt_f<8>_rt_134 ;
  wire \pulse_gen/r_cnt_f<11>_rt_133 ;
  wire \pulse_gen/r_cnt_f<9>_rt_131 ;
  wire \pulse_gen/r_cnt_f<6>_rt_112 ;
  wire \pulse_gen/r_cnt_f<4>_rt_106 ;
  wire \pulse_gen/r_cnt_f<7>_rt_105 ;
  wire \pulse_gen/r_cnt_f<5>_rt_103 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt_lut<0>_rt_189 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt2 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt1 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt3 ;
  wire \pulse_gen/r_cnt_f<12>_rt_148 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt5 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt6 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt4 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt7 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt9 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt8 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt10 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt11 ;
  wire N147;
  wire N108;
  wire N146;
  wire N182;
  wire N87;
  wire N180;
  wire N145;
  wire \ProtoComp153.IINV.OUT ;
  wire w_val_dec_btn_non_inverted;
  wire N59;
  wire \i_val_inc_btn/ProtoComp153.IINV.OUT ;
  wire w_val_inc_btn_non_inverted;
  wire \pulse_gen/r_cnt_vf<1>_pack_6 ;
  wire \pulse_gen/r_cnt_vf<3>_pack_8 ;
  wire \pulse_gen/Mcount_r_cnt_vf_val1 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In3 ;
  wire N149;
  wire N104;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_pack_6 ;
  wire N101;
  wire N100;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In317_684 ;
  wire N192;
  wire N193;
  wire N103;
  wire N143;
  wire N60;
  wire N105;
  wire \lcd_driver/rs_e_output/_n0030_inv ;
  wire \lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> ;
  wire \lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> ;
  wire \lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In18_782 ;
  wire \lcd_driver/control_fsm/_n0289 ;
  wire \lcd_driver/control_fsm/o_sel_0_770 ;
  wire \lcd_driver/control_fsm/_n0293 ;
  wire \lcd_driver/control_fsm/_n0291 ;
  wire N144;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In16_972 ;
  wire N89_pack_11;
  wire N57;
  wire N106;
  wire N58;
  wire N102;
  wire N107;
  wire N148;
  wire N150;
  wire \i_wr_btn/ProtoComp153.IINV.OUT ;
  wire w_wr_btn_non_inverted;
  wire \i_clk_BUFGP/IBUFG_294 ;
  wire \i_reset_btn/ProtoComp153.IINV.OUT ;
  wire w_reset_n_non_inverted;
  wire \i_sel_dec_btn/ProtoComp153.IINV.OUT ;
  wire w_sel_dec_btn_non_inverted;
  wire \i_sel_inc_btn/ProtoComp153.IINV.OUT ;
  wire w_sel_inc_btn_non_inverted;
  wire \pulse_gen/Result<4>1 ;
  wire \pulse_gen/Result<5>1_1646 ;
  wire \pulse_gen/Result<3>2 ;
  wire \pulse_gen/Result<6>1_1637 ;
  wire N4_pack_17;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ;
  wire \time_keeper/time_mm/second_digit/o_q_1_rstpot_1753 ;
  wire \time_keeper/time_mm/second_digit/o_q<1>_pack_2 ;
  wire \time_keeper/time_mm/second_digit/_n0037 ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>_pack_5 ;
  wire \time_keeper/time_hh/first_digit/o_roll_high_rstpot_1621 ;
  wire \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o ;
  wire \time_keeper/time_mm/first_digit/o_q_1_rstpot_1715 ;
  wire \time_keeper/time_mm/first_digit/o_q_2_rstpot_1713 ;
  wire \time_keeper/time_ss/first_digit/o_roll_high_rstpot_1663 ;
  wire \lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_1793 ;
  wire N184_pack_2;
  wire \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \wr_sel_control/sel_control/sel/o_q_0_rstpot1_1878 ;
  wire \wr_sel_control/sel_control/sel/o_q_1_rstpot1_1872 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_ss/second_digit/o_q<2>_pack_9 ;
  wire \time_keeper/time_ss/second_digit/o_q_2_rstpot_1924 ;
  wire \time_keeper/time_ss/second_digit/o_q_1_rstpot_1923 ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB3_pack_3 ;
  wire \time_keeper/time_ss/second_digit/o_q_0_rstpot_1973 ;
  wire \time_keeper/time_hh/second_digit/o_q_rstpot_1970 ;
  wire \time_keeper/time_ss/second_digit/o_q<0>_pack_10 ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_mm/second_digit/o_q_2_rstpot_2008 ;
  wire N55_rt_2030;
  wire \btn_debouncer/val_inc_btn/o_pulse1_FRB_1_2028 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq1/o_q_2092 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/o_q_rt_2089 ;
  wire N54;
  wire \time_keeper/time_mm/first_digit/o_roll_high_rstpot_2067 ;
  wire \time_keeper/time_hh/first_digit/o_roll_low_rstpot_2056 ;
  wire \time_keeper/time_hh/first_digit/o_q_3_rstpot_2041 ;
  wire \time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o ;
  wire \btn_debouncer/val_dec_btn/dff_pq0/o_q_2099 ;
  wire \btn_debouncer/val_dec_btn/dff_ms0/o_q_rt_2098 ;
  wire \btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_2126 ;
  wire \btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_2114 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_2109 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_1209 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24_1077 ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> ;
  wire N201;
  wire N12;
  wire w_reset_n_rt_1165;
  wire \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB5_1302 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_1295 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22_1293 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_1287 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB5_pack_3 ;
  wire \lcd_driver/control_fsm/state<5>4 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB2_1224 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_1217 ;
  wire \time_keeper/time_ss/first_digit/o_q_1_rstpot_1145 ;
  wire \time_keeper/time_ss/first_digit/o_q_2_rstpot_1143 ;
  wire N188;
  wire \lcd_driver/control_fsm/o_val_1_pack_4 ;
  wire N189;
  wire N198;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In39_1122 ;
  wire N199;
  wire N194;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28 ;
  wire N195;
  wire N197;
  wire N196;
  wire \time_keeper/time_hh/w_ena2_i_reset_OR_61_o ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_1513 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 ;
  wire N186;
  wire \pulse_gen/r_cnt_n_val1_1471 ;
  wire N6;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_1341 ;
  wire \pulse_gen/r_cnt_n_1_rstpot_1497 ;
  wire \pulse_gen/r_cnt_n_0_rstpot_1496 ;
  wire \pulse_gen/r_cnt_n_2_rstpot_1485 ;
  wire \pulse_gen/r_cnt_n<1>_pack_7 ;
  wire \time_keeper/time_hh/first_digit/o_q_0_rstpot_1401 ;
  wire \time_keeper/time_hh/first_digit/o_q_2_rstpot_1391 ;
  wire \time_keeper/time_hh/first_digit/o_q_1_rstpot_1379 ;
  wire \time_keeper/i_reset_o_pm_AND_39_o ;
  wire \time_keeper/time_pm/o_q ;
  wire \time_keeper/time_pm/o_q_BRB2_pack_3 ;
  wire N190;
  wire N191;
  wire \time_keeper/w_ena_pm_i_reset_OR_64_o ;
  wire \lcd_driver/control_fsm/o_sel_2_rstpot_1540 ;
  wire \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o ;
  wire N14_pack_7;
  wire VCC;
  wire GND;
  wire \NLW_ProtoComp17.D2OFFBYP_SRC.1_IB_UNCONNECTED ;
  wire \NLW_ProtoComp17.D2OFFBYP_SRC_IB_UNCONNECTED ;
  wire \NLW_w_mm<7>_9.D5LUT_O_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_w_mm<7>_10.C5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_11.B5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>.D5LUT_O_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<11>_CO[0]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<11>_CO[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<11>_CO[2]_UNCONNECTED ;
  wire \NLW_w_mm<7>_2.C5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_3.B5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_4.A5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_5.D5LUT_O_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_w_mm<7>_6.C5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_7.B5LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_8.A5LUT_O_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<3>_CO[0]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<3>_CO[1]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<3>_CO[2]_UNCONNECTED ;
  wire \NLW_w_mm<7>_24.A5LUT_O_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[0]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[2]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[3]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[0]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[2]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[3]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_O[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_O[2]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_O[3]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_S[1]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_S[2]_UNCONNECTED ;
  wire \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_S[3]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<7>_CO[0]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<7>_CO[1]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<7>_CO[2]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[0]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[1]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[2]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[3]_UNCONNECTED ;
  wire \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_DI[3]_UNCONNECTED ;
  wire \NLW_w_mm<7>_26.C6LUT_O_UNCONNECTED ;
  wire \NLW_w_mm<7>_25.C6LUT_O_UNCONNECTED ;
  wire \NLW_btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire [3 : 0] \time_keeper/time_hh/first_digit/o_q ;
  wire [2 : 0] \time_keeper/time_mm/second_digit/o_q ;
  wire [3 : 0] \time_keeper/time_ss/first_digit/o_q ;
  wire [2 : 0] \time_keeper/time_ss/second_digit/o_q ;
  wire [12 : 0] \pulse_gen/r_cnt_f ;
  wire [7 : 0] \lcd_driver/d_output/o_q ;
  wire [1 : 0] \wr_sel_control/sel_control/sel/o_q ;
  wire [6 : 0] \pulse_gen/r_cnt_n ;
  wire [11 : 0] \lcd_driver/control_fsm/r_cnt ;
  wire [3 : 0] \time_keeper/time_mm/first_digit/o_q ;
  wire [1 : 0] \lcd_driver/rs_e_output/r_cnt ;
  wire [3 : 0] \pulse_gen/r_cnt_vf ;
  wire [11 : 0] \lcd_driver/control_fsm/Mcount_r_cnt_lut ;
  wire [0 : 0] \pulse_gen/Maccum_r_cnt_f_lut ;
  wire [12 : 0] \pulse_gen/Result ;
  assign
    NlwRenamedSig_IO_i_reset_btn = i_reset_btn,
    NlwRenamedSig_IO_i_wr_btn = i_wr_btn,
    NlwRenamedSig_IO_i_val_inc_btn = i_val_inc_btn,
    NlwRenamedSig_IO_i_val_dec_btn = i_val_dec_btn,
    NlwRenamedSig_IO_i_sel_inc_btn = i_sel_inc_btn,
    NlwRenamedSig_IO_i_sel_dec_btn = i_sel_dec_btn;
  initial $sdf_annotate("netgen/map/top_module_map.sdf");
  X_SFF #(
    .LOC ( "OLOGIC_X4Y0" ),
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_e  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_e_glue_set_2173 ),
    .O(\lcd_driver/rs_e_output/o_e_2174 ),
    .SSET(GND),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X12Y5" ),
    .INIT ( 1'b0 ))
  \wr_sel_control/wr_control/p2t/o_q  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/wr_control/p2t/o_q_rstpot_2198 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_2199 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X6Y2" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_0  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> ),
    .O(\lcd_driver/d_output/o_q [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X6Y1" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_5  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> ),
    .O(\lcd_driver/d_output/o_q [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X5Y2" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_6  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6>_0 ),
    .O(\lcd_driver/d_output/o_q [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X4Y1" ),
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_rs  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_rs_rstpot_2192 ),
    .O(\lcd_driver/rs_e_output/o_rs_2193 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X6Y0" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_4  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4>_0 ),
    .O(\lcd_driver/d_output/o_q [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X5Y3" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_7  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7>_0 ),
    .O(\lcd_driver/d_output/o_q [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X3Y0" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_2  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> ),
    .O(\lcd_driver/d_output/o_q [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "ILOGIC_X12Y24" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/dff_ms0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\ProtoComp17.D2OFFBYP_SRC.OUT ),
    .O(\btn_debouncer/val_inc_btn/dff_ms0/o_q_2270 ),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X12Y24" ))
  \ProtoComp17.D2OFFBYP_SRC.1  (
    .IA(w_val_inc_btn),
    .IB(\NLW_ProtoComp17.D2OFFBYP_SRC.1_IB_UNCONNECTED ),
    .O(\ProtoComp17.D2OFFBYP_SRC.OUT ),
    .SEL(\ProtoComp17.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X12Y24" ))
  \ProtoComp17.D2OBYPSEL_GND.1  (
    .O(\ProtoComp17.D2OBYPSEL_GND.0 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y1" ))
  \i_clk_BUFGP/BUFG  (
    .I(\i_clk_BUFGP/IBUFG_0 ),
    .O(i_clk_BUFGP)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X6Y3" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_1  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> ),
    .O(\lcd_driver/d_output/o_q [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "ILOGIC_X12Y22" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/dff_ms0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/val_dec_btn/dff_ms0/o_q/ProtoComp17.D2OFFBYP_SRC.OUT ),
    .O(\btn_debouncer/val_dec_btn/dff_ms0/o_q_2268 ),
    .SSET(GND),
    .SRST(GND),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2 #(
    .LOC ( "ILOGIC_X12Y22" ))
  \ProtoComp17.D2OFFBYP_SRC  (
    .IA(w_val_dec_btn),
    .IB(\NLW_ProtoComp17.D2OFFBYP_SRC_IB_UNCONNECTED ),
    .O(\btn_debouncer/val_dec_btn/dff_ms0/o_q/ProtoComp17.D2OFFBYP_SRC.OUT ),
    .SEL(\btn_debouncer/val_dec_btn/dff_ms0/o_q/ProtoComp17.D2OBYPSEL_GND.0 )
  );
  X_ZERO #(
    .LOC ( "ILOGIC_X12Y22" ))
  \ProtoComp17.D2OBYPSEL_GND  (
    .O(\btn_debouncer/val_dec_btn/dff_ms0/o_q/ProtoComp17.D2OBYPSEL_GND.0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<3>1 ),
    .O(\pulse_gen/r_cnt_f [3]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<3>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [3]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<3>_rt_62 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_9.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_9.D5LUT_O_UNCONNECTED )
  );
  X_ZERO #(
    .LOC ( "SLICE_X16Y18" ))
  \ProtoComp139.CYINITGND  (
    .O(\ProtoComp139.CYINITGND.0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<2>1 ),
    .O(\pulse_gen/r_cnt_f [2]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y18" ))
  \pulse_gen/Maccum_r_cnt_f_cy<3>  (
    .CI(1'b0),
    .CYINIT(\ProtoComp139.CYINITGND.0 ),
    .CO({\pulse_gen/Maccum_r_cnt_f_cy[3] , \NLW_pulse_gen/Maccum_r_cnt_f_cy<3>_CO[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_cy<3>_CO[1]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, \pulse_gen/r_cnt_f [0]}),
    .O({\pulse_gen/Result<3>1 , \pulse_gen/Result<2>1 , \pulse_gen/Result<1>1 , \pulse_gen/Result<0>1 }),
    .S({\pulse_gen/r_cnt_f<3>_rt_62 , \pulse_gen/r_cnt_f<2>_rt_63 , \pulse_gen/r_cnt_f<1>_rt_82 , \pulse_gen/Maccum_r_cnt_f_lut [0]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<2>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [2]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<2>_rt_63 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_10.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_10.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<1>1 ),
    .O(\pulse_gen/r_cnt_f [1]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<1>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [1]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<1>_rt_82 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_11.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_11.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<0>1 ),
    .O(\pulse_gen/r_cnt_f [0]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y18" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \pulse_gen/Maccum_r_cnt_f_lut<0>  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [0]),
    .ADR4(1'b1),
    .ADR5(\pulse_gen/o_pulse_vf_2215 ),
    .O(\pulse_gen/Maccum_r_cnt_f_lut [0])
  );
  X_SFF #(
    .LOC ( "OLOGIC_X12Y4" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_0  (
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .O(\time_keeper/time_ss/first_digit/o_q [0]),
    .SSET(GND),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .LOC ( "OLOGIC_X3Y1" ),
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_3  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> ),
    .O(\lcd_driver/d_output/o_q [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND),
    .SRST(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_11  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [11]),
    .O(\pulse_gen/r_cnt_f [11]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<11>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [11]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<11>_rt_133 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_10  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [10]),
    .O(\pulse_gen/r_cnt_f [10]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y20" ))
  \pulse_gen/Maccum_r_cnt_f_cy<11>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy[7] ),
    .CYINIT(1'b0),
    .CO({\pulse_gen/Maccum_r_cnt_f_cy[11] , \NLW_pulse_gen/Maccum_r_cnt_f_cy<11>_CO[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_cy<11>_CO[1]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_cy<11>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\pulse_gen/Result [11], \pulse_gen/Result [10], \pulse_gen/Result [9], \pulse_gen/Result [8]}),
    .S({\pulse_gen/r_cnt_f<11>_rt_133 , \pulse_gen/r_cnt_f<10>_rt_140 , \pulse_gen/r_cnt_f<9>_rt_131 , \pulse_gen/r_cnt_f<8>_rt_134 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<10>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [10]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<10>_rt_140 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_2.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_2.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_9  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [9]),
    .O(\pulse_gen/r_cnt_f [9]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<9>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [9]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<9>_rt_131 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_3.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_3.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_8  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [8]),
    .O(\pulse_gen/r_cnt_f [8]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<8>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [8]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<8>_rt_134 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y20" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_4.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_4.A5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_7  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [7]),
    .O(\pulse_gen/r_cnt_f [7]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<7>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [7]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<7>_rt_105 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_5.D5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_5.D5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_6  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [6]),
    .O(\pulse_gen/r_cnt_f [6]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y19" ))
  \pulse_gen/Maccum_r_cnt_f_cy<7>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy[3] ),
    .CYINIT(1'b0),
    .CO({\pulse_gen/Maccum_r_cnt_f_cy[7] , \NLW_pulse_gen/Maccum_r_cnt_f_cy<7>_CO[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_cy<7>_CO[1]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\pulse_gen/Result [7], \pulse_gen/Result [6], \pulse_gen/Result [5], \pulse_gen/Result [4]}),
    .S({\pulse_gen/r_cnt_f<7>_rt_105 , \pulse_gen/r_cnt_f<6>_rt_112 , \pulse_gen/r_cnt_f<5>_rt_103 , \pulse_gen/r_cnt_f<4>_rt_106 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<6>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [6]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<6>_rt_112 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_6.C5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_6.C5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_5  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [5]),
    .O(\pulse_gen/r_cnt_f [5]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<5>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [5]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<5>_rt_103 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_7.B5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_7.B5LUT_O_UNCONNECTED )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_4  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [4]),
    .O(\pulse_gen/r_cnt_f [4]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<4>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [4]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<4>_rt_106 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y19" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_8.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_8.A5LUT_O_UNCONNECTED )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<3>/lcd_driver/control_fsm/r_cnt<3>_DMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt3_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<3>/lcd_driver/control_fsm/r_cnt<3>_CMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt2_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<3>/lcd_driver/control_fsm/r_cnt<3>_BMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt1_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<3>/lcd_driver/control_fsm/r_cnt<3>_AMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_3  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .O(\lcd_driver/control_fsm/r_cnt [3]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hFF00FF00FD00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<3>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_2  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .O(\lcd_driver/control_fsm/r_cnt [2]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y11" ))
  \lcd_driver/control_fsm/Mcount_r_cnt_cy<3>  (
    .CI(1'b0),
    .CYINIT(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ),
    .CO({\lcd_driver/control_fsm/Mcount_r_cnt_cy[3] , \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<3>_CO[2]_UNCONNECTED , 
\NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<3>_CO[1]_UNCONNECTED , \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<3>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\lcd_driver/control_fsm/Mcount_r_cnt3 , \lcd_driver/control_fsm/Mcount_r_cnt2 , \lcd_driver/control_fsm/Mcount_r_cnt1 , 
\lcd_driver/control_fsm/Mcount_r_cnt }),
    .S({\lcd_driver/control_fsm/Mcount_r_cnt_lut [3], \lcd_driver/control_fsm/Mcount_r_cnt_lut [2], \lcd_driver/control_fsm/Mcount_r_cnt_lut [1], 
\lcd_driver/control_fsm/Mcount_r_cnt_lut<0>_rt_189 })
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hFF00FF00FD00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<2>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_1  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .O(\lcd_driver/control_fsm/r_cnt [1]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hFF00FF00FD00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<1>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [1]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_0  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .O(\lcd_driver/control_fsm/r_cnt [0]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 64'hFFFF0000FFFF0000 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<0>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0]),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut<0>_rt_189 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X10Y11" ),
    .INIT ( 32'h00000000 ))
  \w_mm<7>_24.A5LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\NLW_w_mm<7>_24.A5LUT_O_UNCONNECTED )
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X16Y21" ))
  \pulse_gen/Maccum_r_cnt_f_xor<12>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy[11] ),
    .CYINIT(1'b0),
    .CO({\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[3]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[1]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_CO[0]_UNCONNECTED }),
    .DI({\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[3]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[1]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_DI[0]_UNCONNECTED }),
    .O({\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_O[3]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_O[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_O[1]_UNCONNECTED , \pulse_gen/Result [12]}),
    .S({\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_S[3]_UNCONNECTED , \NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_S[2]_UNCONNECTED , 
\NLW_pulse_gen/Maccum_r_cnt_f_xor<12>_S[1]_UNCONNECTED , \pulse_gen/r_cnt_f<12>_rt_148 })
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_12  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [12]),
    .O(\pulse_gen/r_cnt_f [12]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y21" ),
    .INIT ( 64'hFF00FF00FF00FF00 ))
  \pulse_gen/r_cnt_f<12>_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f [12]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_f<12>_rt_148 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<7>/lcd_driver/control_fsm/r_cnt<7>_DMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt7_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<7>/lcd_driver/control_fsm/r_cnt<7>_CMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt6_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<7>/lcd_driver/control_fsm/r_cnt<7>_BMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt5_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<7>/lcd_driver/control_fsm/r_cnt<7>_AMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt4_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_7  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(\lcd_driver/control_fsm/r_cnt [7]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<7>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_3_2223 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_6  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .O(\lcd_driver/control_fsm/r_cnt [6]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y12" ))
  \lcd_driver/control_fsm/Mcount_r_cnt_cy<7>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy[3] ),
    .CYINIT(1'b0),
    .CO({\lcd_driver/control_fsm/Mcount_r_cnt_cy[7] , \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<7>_CO[2]_UNCONNECTED , 
\NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<7>_CO[1]_UNCONNECTED , \NLW_lcd_driver/control_fsm/Mcount_r_cnt_cy<7>_CO[0]_UNCONNECTED }),
    .DI({1'b0, 1'b0, 1'b0, 1'b0}),
    .O({\lcd_driver/control_fsm/Mcount_r_cnt7 , \lcd_driver/control_fsm/Mcount_r_cnt6 , \lcd_driver/control_fsm/Mcount_r_cnt5 , 
\lcd_driver/control_fsm/Mcount_r_cnt4 }),
    .S({\lcd_driver/control_fsm/Mcount_r_cnt_lut [7], \lcd_driver/control_fsm/Mcount_r_cnt_lut [6], \lcd_driver/control_fsm/Mcount_r_cnt_lut [5], 
\lcd_driver/control_fsm/Mcount_r_cnt_lut [4]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<6>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_3_2439 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_3_2413 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_3_2410 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_3_2224 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_5  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .O(\lcd_driver/control_fsm/r_cnt [5]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 64'hFF00FF00FD00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<5>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [5]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_4  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .O(\lcd_driver/control_fsm/r_cnt [4]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y12" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<4>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4])
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<11>/lcd_driver/control_fsm/r_cnt<11>_DMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt11_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<11>/lcd_driver/control_fsm/r_cnt<11>_CMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt10_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<11>/lcd_driver/control_fsm/r_cnt<11>_BMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt9_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt<11>/lcd_driver/control_fsm/r_cnt<11>_AMUX_Delay  (
    .I(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt8_0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_11  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .O(\lcd_driver/control_fsm/r_cnt [11]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<11>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [11]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [11])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_10  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(\lcd_driver/control_fsm/r_cnt [10]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_CARRY4 #(
    .LOC ( "SLICE_X10Y13" ))
  \lcd_driver/control_fsm/Mcount_r_cnt_xor<11>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy[7] ),
    .CYINIT(1'b0),
    .CO({\NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[3]_UNCONNECTED , \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[2]_UNCONNECTED , 
\NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[1]_UNCONNECTED , \NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_CO[0]_UNCONNECTED }),
    .DI({\NLW_lcd_driver/control_fsm/Mcount_r_cnt_xor<11>_DI[3]_UNCONNECTED , 1'b0, 1'b0, 1'b0}),
    .O({\lcd_driver/control_fsm/Mcount_r_cnt11 , \lcd_driver/control_fsm/Mcount_r_cnt10 , \lcd_driver/control_fsm/Mcount_r_cnt9 , 
\lcd_driver/control_fsm/Mcount_r_cnt8 }),
    .S({\lcd_driver/control_fsm/Mcount_r_cnt_lut [11], \lcd_driver/control_fsm/Mcount_r_cnt_lut [10], \lcd_driver/control_fsm/Mcount_r_cnt_lut [9], 
\lcd_driver/control_fsm/Mcount_r_cnt_lut [8]})
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<10>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_9  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .O(\lcd_driver/control_fsm/r_cnt [9]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<9>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [9]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9])
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_8  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .O(\lcd_driver/control_fsm/r_cnt [8]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y13" ),
    .INIT ( 64'hFF00FF00FB00FF00 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<8>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y13" ),
    .INIT ( 64'h000F0F0F00000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In11_2451 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y13" ),
    .INIT ( 64'h00000000FFFF0000 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In12  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In12_2453 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y10" ),
    .INIT ( 64'hFFFFFF00FFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .O(N162)
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N147),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_2414 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y10" ),
    .INIT ( 64'h0000000000100000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .ADR5(N162),
    .O(N147)
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB/lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_BMUX_Delay  (
    .I(N87),
    .O(N87_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y12" ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11  (
    .IA(N182),
    .IB(1'b0),
    .O(N146),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt11_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 64'h0000000000000040 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_F  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N182)
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N146),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_2296 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 64'h0000000000000000 ))
  \w_mm<7>_26.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_w_mm<7>_26.C6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o<11>1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR5(1'b1),
    .O(N36)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 32'hFFFFCFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o<11>1_SW1  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [5]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [4]),
    .O(N87)
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N108),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB_2290 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFF3F ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N108)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X6Y11" ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11  (
    .IA(N180),
    .IB(1'b0),
    .O(N145),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt11_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 64'h0000000000000001 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_F  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N180)
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N145),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_2472 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 64'h0000000000000000 ))
  \w_mm<7>_25.C6LUT  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\NLW_w_mm<7>_25.C6LUT_O_UNCONNECTED )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 64'h00000088F0F00000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In6  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_2472 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_2441 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_2300 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In6_2467 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y11" ),
    .INIT ( 64'h000055FF3F3F7FFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In37  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_2472 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_2414 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_2441 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In37_2320 )
  );
  X_PU #(
    .LOC ( "PAD82" ))
  i_val_dec_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_val_dec_btn)
  );
  X_IPAD #(
    .LOC ( "PAD82" ))
  i_val_dec_btn_180 (
    .PAD(NlwRenamedSig_IO_i_val_dec_btn)
  );
  X_BUF #(
    .LOC ( "PAD82" ))
  i_val_dec_btn_IBUF (
    .O(w_val_dec_btn_non_inverted),
    .I(NlwRenamedSig_IO_i_val_dec_btn)
  );
  X_BUF #(
    .LOC ( "PAD82" ))
  \ProtoComp153.IMUX.4  (
    .I(\ProtoComp153.IINV.OUT ),
    .O(w_val_dec_btn)
  );
  X_INV #(
    .LOC ( "PAD82" ))
  \ProtoComp153.IINV.4  (
    .I(w_val_dec_btn_non_inverted),
    .O(\ProtoComp153.IINV.OUT )
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N59),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_2388 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y12" ),
    .INIT ( 64'h00000000000000FF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .O(N59)
  );
  X_PU #(
    .LOC ( "PAD80" ))
  i_val_inc_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_val_inc_btn)
  );
  X_IPAD #(
    .LOC ( "PAD80" ))
  i_val_inc_btn_186 (
    .PAD(NlwRenamedSig_IO_i_val_inc_btn)
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  i_val_inc_btn_IBUF (
    .O(w_val_inc_btn_non_inverted),
    .I(NlwRenamedSig_IO_i_val_inc_btn)
  );
  X_BUF #(
    .LOC ( "PAD80" ))
  \ProtoComp153.IMUX.5  (
    .I(\i_val_inc_btn/ProtoComp153.IINV.OUT ),
    .O(w_val_inc_btn)
  );
  X_INV #(
    .LOC ( "PAD80" ))
  \ProtoComp153.IINV.5  (
    .I(w_val_inc_btn_non_inverted),
    .O(\i_val_inc_btn/ProtoComp153.IINV.OUT )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y10" ),
    .INIT ( 64'h0040400000004000 ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In31  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\pulse_gen/o_pulse_vf_2215 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In31_2442 )
  );
  X_BUF   \pulse_gen/r_cnt_vf<2>/pulse_gen/r_cnt_vf<2>_CMUX_Delay  (
    .I(\pulse_gen/r_cnt_vf<3>_pack_8 ),
    .O(\pulse_gen/r_cnt_vf [3])
  );
  X_BUF   \pulse_gen/r_cnt_vf<2>/pulse_gen/r_cnt_vf<2>_BMUX_Delay  (
    .I(\pulse_gen/r_cnt_vf<1>_pack_6 ),
    .O(\pulse_gen/r_cnt_vf [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 64'hAAEAAAAAAAEAAAAA ))
  \pulse_gen/Mcount_r_cnt_vf_val21  (
    .ADR0(w_reset_n),
    .ADR1(\pulse_gen/r_cnt_vf [2]),
    .ADR2(\pulse_gen/r_cnt_vf [1]),
    .ADR3(\pulse_gen/r_cnt_vf [0]),
    .ADR4(\pulse_gen/r_cnt_vf [3]),
    .ADR5(1'b1),
    .O(\pulse_gen/Mcount_r_cnt_vf_val )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 32'h3FFFC000 ))
  \pulse_gen/Mcount_r_cnt_vf_xor<3>11  (
    .ADR0(1'b1),
    .ADR1(\pulse_gen/r_cnt_vf [2]),
    .ADR2(\pulse_gen/r_cnt_vf [1]),
    .ADR3(\pulse_gen/r_cnt_vf [0]),
    .ADR4(\pulse_gen/r_cnt_vf [3]),
    .O(\pulse_gen/Result [3])
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [3]),
    .O(\pulse_gen/r_cnt_vf<3>_pack_8 ),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [2]),
    .O(\pulse_gen/r_cnt_vf [2]),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 64'h0FF0FF000FF0FF00 ))
  \pulse_gen/Mcount_r_cnt_vf_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\pulse_gen/r_cnt_vf [0]),
    .ADR3(\pulse_gen/r_cnt_vf [2]),
    .ADR4(\pulse_gen/r_cnt_vf [1]),
    .ADR5(1'b1),
    .O(\pulse_gen/Result [2])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 32'h0F0FF0F0 ))
  \pulse_gen/Mcount_r_cnt_vf_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\pulse_gen/r_cnt_vf [0]),
    .ADR3(1'b1),
    .ADR4(\pulse_gen/r_cnt_vf [1]),
    .O(\pulse_gen/Result [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [1]),
    .O(\pulse_gen/r_cnt_vf<1>_pack_6 ),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [0]),
    .O(\pulse_gen/r_cnt_vf [0]),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X5Y11" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \pulse_gen/Mcount_r_cnt_vf_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_vf [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\pulse_gen/Result [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y11" ),
    .INIT ( 64'hF0300000FFFFFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In1  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\pulse_gen/o_pulse_vf_2215 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In1_2464 )
  );
  X_SFF #(
    .LOC ( "SLICE_X4Y11" ),
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_vf  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Mcount_r_cnt_vf_val1 ),
    .O(\pulse_gen/o_pulse_vf_2215 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y11" ),
    .INIT ( 64'h0F00000000000000 ))
  \pulse_gen/Mcount_r_cnt_vf_val111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\pulse_gen/r_cnt_vf [0]),
    .ADR3(\pulse_gen/r_cnt_vf [1]),
    .ADR4(\pulse_gen/r_cnt_vf [2]),
    .ADR5(\pulse_gen/r_cnt_vf [3]),
    .O(\pulse_gen/Mcount_r_cnt_vf_val1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y11" ),
    .INIT ( 64'h0F0000FFFFFFFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(\pulse_gen/o_pulse_vf_2215 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In31_2448 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X4Y11" ),
    .INIT ( 64'hAAAAAAAA822282A2 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In32_SW1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3-In31_2448 ),
    .O(N46)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 64'hFF5FFFFF335FFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_2225 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_2300 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(N30)
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 64'h00000303000F0000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In5  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In5_2468 )
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 64'hFF03FFFF5503FFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In32  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_2414 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_2219 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\pulse_gen/o_pulse_vf_2215 ),
    .ADR5(N38),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In32_2471 )
  );
  X_SFF #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd1-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X6Y10" ),
    .INIT ( 64'hFFFFFF00FFFF8A00 ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In33  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR1(N87_0),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1_2427 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1-In31_2442 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd1-In32_2471 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In3 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y10" ),
    .INIT ( 64'hCF0F000000A00000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In4  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_2225 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In4_2474 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y10" ),
    .INIT ( 64'hCCCCCCCC44444000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In8  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR1(\pulse_gen/o_pulse_vf_2215 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6-In7_2466 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6-In6_2467 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6-In5_2468 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6-In4_2474 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In8_2465 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y10" ),
    .INIT ( 64'hFFFFFFFFFFFFFF0F ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .O(N158)
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N149),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_2225 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y10" ),
    .INIT ( 64'h0000000000010000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .ADR4(N56),
    .ADR5(N158),
    .O(N149)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y9" ),
    .INIT ( 64'hFFFF000000000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In7  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In7_2466 )
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N104),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB_2391 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y12" ),
    .INIT ( 64'hFFFFFFFF3FFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N104)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 64'hAAAAAAAA8088AAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In32_SW0  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3-In31_2448 ),
    .O(N45)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_3_2410 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 64'hFFFFA8FFFFA8A8A8 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In35  (
    .ADR0(\pulse_gen/o_pulse_vf_2215 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3-In33_2449 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3-In34_2445 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .ADR4(N46),
    .ADR5(N45),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In3 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_1_2434 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB/lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_CMUX_Delay  (
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In317_684 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In317_0 )
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB/lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_AMUX_Delay  (
    .I(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_pack_6 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X8Y12" ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In317  (
    .IA(N192),
    .IB(N193),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In317_684 ),
    .SEL(\lcd_driver/control_fsm/state_FSM_FFd5_2264 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h02228AAA4666CEEE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In317_F  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_2296 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_2300 ),
    .O(N192)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h51FB55FBFBFBFFFB ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In317_G  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_2296 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB_2297 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_2298 ),
    .O(N193)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h0000000000000400 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB_2290 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [9]),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N100),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_2441 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 64'h0000003000000030 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt5_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt6_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR5(1'b1),
    .O(N100)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 32'h000000CC ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt6_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .O(N101)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N101),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_pack_6 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y13" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N103),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_2382 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y13" ),
    .INIT ( 64'hFFFFFFFFFFFFFF3F ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .O(N103)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_e_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_e_glue_set_2173 ),
    .O(\lcd_driver/rs_e_output/o_e_1_2431 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y5" ),
    .INIT ( 64'h3FFF3F003F003F00 ))
  \lcd_driver/rs_e_output/o_e_glue_set  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/rs_e_output/r_cnt [1]),
    .ADR2(\lcd_driver/rs_e_output/r_cnt [0]),
    .ADR3(\lcd_driver/rs_e_output/o_e_1_2431 ),
    .ADR4(\lcd_driver/control_fsm/o_e_trigger_2372 ),
    .ADR5(\pulse_gen/o_pulse_vf_2215 ),
    .O(\lcd_driver/rs_e_output/o_e_glue_set_2173 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y11" ),
    .INIT ( 64'h888800808A8A0A8A ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In17  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_2300 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In17_2455 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y11" ),
    .INIT ( 64'hFFFFF0FFFFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .O(N156)
  );
  X_SFF #(
    .LOC ( "SLICE_X7Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N143),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_2300 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X7Y11" ),
    .INIT ( 64'h0000000000010000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .ADR4(N56),
    .ADR5(N156),
    .O(N143)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y8" ),
    .INIT ( 64'h1111111511111114 ))
  \lcd_driver/control_fsm/_n0366_inv1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/_n0366_inv )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y14" ),
    .INIT ( 64'h0000000000040000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>3  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB_2482 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB_2481 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y14" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N105),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB_2482 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y14" ),
    .INIT ( 64'hFFFFFF00FFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N105)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y14" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N60),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB_2481 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y14" ),
    .INIT ( 64'h0000000000000C00 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .O(N60)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 64'h0000FF0000000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In15_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_3_2223 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_3_2224 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_2225 ),
    .O(N154)
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 64'h00FF00FF00C000CA ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In15  (
    .ADR0(\lcd_driver/lcd_pulse_gen/o_update_pulse_2218 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_2219 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(N154),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In15_2479 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 64'hFFFF88FFFFF088F0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In16  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4-In12_2453 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4-In11_2451 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4-In15_2479 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In16_2478 )
  );
  X_SFF #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y13" ),
    .INIT ( 64'hFFFFFE00FE00FE00 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In19  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5-In121 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4-In18_0 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4-In17_2455 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR4(\pulse_gen/o_pulse_vf_2215 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4-In16_2478 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In1 )
  );
  X_BUF   \lcd_driver/rs_e_output/o_rs_1/lcd_driver/rs_e_output/o_rs_1_AMUX_Delay  (
    .I(\lcd_driver/rs_e_output/_n0030_inv ),
    .O(\lcd_driver/rs_e_output/_n0030_inv_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_rs_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_rs_rstpot_2192 ),
    .O(\lcd_driver/rs_e_output/o_rs_1_2476 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 64'hFF30FF00CF00FF00 ))
  \lcd_driver/rs_e_output/o_rs_rstpot  (
    .ADR0(1'b1),
    .ADR1(w_reset_n),
    .ADR2(\pulse_gen/o_pulse_vf_2215 ),
    .ADR3(\lcd_driver/rs_e_output/o_rs_1_2476 ),
    .ADR4(\lcd_driver/control_fsm/o_e_trigger_2372 ),
    .ADR5(\lcd_driver/control_fsm/o_data_2360 ),
    .O(\lcd_driver/rs_e_output/o_rs_rstpot_2192 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 64'hCCFCCCCCCCFCCCCC ))
  \lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable1  (
    .ADR0(1'b1),
    .ADR1(w_reset_n),
    .ADR2(\pulse_gen/o_pulse_vf_2215 ),
    .ADR3(\lcd_driver/rs_e_output/o_e_1_2431 ),
    .ADR4(\lcd_driver/control_fsm/o_e_trigger_2372 ),
    .ADR5(1'b1),
    .O(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y6" ),
    .INIT ( 32'hFFF0FF00 ))
  \lcd_driver/rs_e_output/_n0030_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\pulse_gen/o_pulse_vf_2215 ),
    .ADR3(\lcd_driver/rs_e_output/o_e_1_2431 ),
    .ADR4(\lcd_driver/control_fsm/o_e_trigger_2372 ),
    .O(\lcd_driver/rs_e_output/_n0030_inv )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/r_cnt_1  (
    .CE(\lcd_driver/rs_e_output/_n0030_inv_0 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> ),
    .O(\lcd_driver/rs_e_output/r_cnt [1]),
    .SRST(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 64'h00FF00FFFF00FF00 ))
  \lcd_driver/rs_e_output/Madd_r_cnt[1]_GND_18_o_add_2_OUT_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/rs_e_output/r_cnt [1]),
    .ADR4(1'b1),
    .ADR5(\lcd_driver/rs_e_output/r_cnt [0]),
    .O(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/r_cnt_0  (
    .CE(\lcd_driver/rs_e_output/_n0030_inv_0 ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> ),
    .O(\lcd_driver/rs_e_output/r_cnt [0]),
    .SRST(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y6" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \lcd_driver/rs_e_output/Madd_r_cnt[1]_GND_18_o_add_2_OUT_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/rs_e_output/r_cnt [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 64'h0000000000100000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [11]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [9]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1_2427 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y11" ),
    .INIT ( 64'hFFFFFFFBFFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [11]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N96)
  );
  X_BUF   \lcd_driver/control_fsm/o_e_trigger/lcd_driver/control_fsm/o_e_trigger_BMUX_Delay  (
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X8Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_e_trigger  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o ),
    .O(\lcd_driver/control_fsm/o_e_trigger_2372 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y7" ),
    .INIT ( 64'h333255553332555E ))
  \lcd_driver/control_fsm/Mmux_state[5]_PWR_17_o_MUX_197_o11  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X8Y7" ),
    .INIT ( 64'h3333030033330300 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT61  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR3(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .ADR4(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR5(1'b1),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X8Y7" ),
    .INIT ( 32'hCCCC00F0 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT71  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR3(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .ADR4(\lcd_driver/control_fsm/o_data_2360 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> )
  );
  X_BUF   \lcd_driver/control_fsm/o_data/lcd_driver/control_fsm/o_data_AMUX_Delay  (
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In18_782 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In18_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_data  (
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/_n0289 ),
    .O(\lcd_driver/control_fsm/o_data_2360 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 64'hFEEEEEEEFEEEEEEE ))
  \lcd_driver/control_fsm/state__n02891  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/_n0289 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y8" ),
    .INIT ( 32'h00030003 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In18  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(1'b1),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In18_782 )
  );
  X_BUF   \lcd_driver/control_fsm/o_sel_1/lcd_driver/control_fsm/o_sel_1_AMUX_Delay  (
    .I(\lcd_driver/control_fsm/o_sel_0_770 ),
    .O(\lcd_driver/control_fsm/o_sel_0_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_sel_1  (
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/_n0291 ),
    .O(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 64'h0220020202200202 ))
  \lcd_driver/control_fsm/state__n02911  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/_n0291 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 32'hEECCDECC ))
  \lcd_driver/control_fsm/state__n02931  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .O(\lcd_driver/control_fsm/_n0293 )
  );
  X_FF #(
    .LOC ( "SLICE_X9Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_sel_0  (
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/_n0293 ),
    .O(\lcd_driver/control_fsm/o_sel_0_770 ),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB/lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_DMUX_Delay  (
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In16_972 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In16_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'h0300000003000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In34  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_2219 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In34_2445 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 32'hFFFF0505 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In15  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(1'b1),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In16_972 )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N56),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_2386 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'h0F00000000000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt5_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt6_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .O(N56)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'hFFFFFFFF0FFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .O(N160)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N144),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_2219 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y10" ),
    .INIT ( 64'h0000000000020000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .ADR4(N56),
    .ADR5(N160),
    .O(N144)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'h8A8A2A2AA8AA2028 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In31  (
    .ADR0(\pulse_gen/o_pulse_vf_2215 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In31_2485 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_3_2223 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'hFFAAFFAAFDA8F5A0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In318  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2-In311_2444 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2-In31_2485 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2-In317_0 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2-In39_0 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In3 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_1_2484 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y11" ),
    .INIT ( 64'hFFFFFFFFFFFFFF3F ))
  \lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv1  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_1_2437 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_1_2435 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_1_2484 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_1_2438 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_1_2434 ),
    .O(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv )
  );
  X_BUF   \lcd_driver/control_fsm/state_FSM_FFd4_3/lcd_driver/control_fsm/state_FSM_FFd4_3_CMUX_Delay  (
    .I(N89_pack_11),
    .O(N89)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 64'h000A000A200A000A ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In33  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_2382 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(N89),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In33_2449 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_3_2224 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In310  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [5]),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In310_2489 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 32'hFFFFFFDF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o<11>1_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_2388 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N89_pack_11)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 64'h44450001FFFFFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In311  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_2225 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2-In310_2489 ),
    .ADR5(\pulse_gen/o_pulse_vf_2215 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In311_2444 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_1_2435 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y13" ),
    .INIT ( 64'h0C0FFFFF080FFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In1211  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_2382 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\pulse_gen/o_pulse_vf_2215 ),
    .ADR5(N89),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In121 )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y11" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N106),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB_2325 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y11" ),
    .INIT ( 64'hFFFFFFFFFFFFFFF3 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt5_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .O(N106)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y11" ),
    .INIT ( 64'hAAAAAAAAAAA2AAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<0>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [0]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2_2400 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0])
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y11" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N57),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB_2387 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y11" ),
    .INIT ( 64'h0000000000FF0000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N57)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 64'hFFFFFFFFFFF0FFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>3_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/r_cnt [0]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [1]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N38)
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_3_2413 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 64'hFFFFFFFFAAA8A8A8 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In17  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5-In121 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5-In16_0 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5-In17_2461 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5-In15_2483 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_2_2399 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 64'hF0F0F0F020300010 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In14  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_2219 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR2(\pulse_gen/o_pulse_vf_2215 ),
    .ADR3(N30),
    .ADR4(N31),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5-In12_2460 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In15_2483 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y10" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_1_2437 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 64'h000000000C000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1_SW1  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB_2387 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_3_2224 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_3_2410 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_3_2413 ),
    .O(N43)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N58),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB_2492 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 64'hFFFFFFFF0000FFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N58)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 64'h0000000000000040 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB_2492 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_3_2410 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_3_2223 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_3_2224 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [4]),
    .O(N42)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y10" ),
    .INIT ( 64'hFF88FF08FF80FF00 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_2386 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_2388 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR4(N43),
    .ADR5(N42),
    .O(N31)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'h500033335F0F3F3F ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In16  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_2298 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In17_2461 )
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N107),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB_2323 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In33  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .O(N107)
  );
  X_SFF #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N102),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB_2297 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y12" ),
    .INIT ( 64'hFFFFFFCFFFFFFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In312  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt5_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt6_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .O(N102)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 64'h17379FBF5777DFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In3  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In3_2487 )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_3_2439 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 64'h0000000000400000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB_2391 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_2388 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_1_2438 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 64'hFFFFFAFAFFFFEAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In9  (
    .ADR0(w_reset_n),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6-In3_2487 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6-In8_2465 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6-In2_2486 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In )
  );
  X_SFF #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X9Y12" ),
    .INIT ( 64'hFFFFFFFFAAA8AAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In2  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR1(N96),
    .ADR2(N36),
    .ADR3(\lcd_driver/control_fsm/r_cnt [9]),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_2293 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6-In1_2464 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In2_2486 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y14" ),
    .INIT ( 64'hFFFFFFCFFFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW3  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt5_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt6_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .O(N166)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y14" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N150),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_2347 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y14" ),
    .INIT ( 64'h0000000000000002 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .ADR4(N166),
    .ADR5(N168),
    .O(N150)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y14" ),
    .INIT ( 64'hFFFFFFFFFF00FFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt2_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt4_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt7_0 ),
    .O(N168)
  );
  X_SFF #(
    .LOC ( "SLICE_X10Y14" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB  (
    .CE(\pulse_gen/o_pulse_vf_2215 ),
    .CLK(i_clk_BUFGP),
    .I(N148),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_2298 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X10Y14" ),
    .INIT ( 64'h0000000000000002 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8_0 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10_0 ),
    .ADR4(N164),
    .ADR5(N168),
    .O(N148)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y13" ),
    .INIT ( 64'h0FF000000FF0FF0C ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In11  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/lcd_pulse_gen/o_update_pulse_2218 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2_2402 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2_2403 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2_2401 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In11_2496 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y13" ),
    .INIT ( 64'h044004FF04400440 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In12  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5-In11_2496 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In12_2460 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X11Y14" ),
    .INIT ( 64'hF3FFFFFFFFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW2  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt_0 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt5_0 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt6_0 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt1_0 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt3_0 ),
    .O(N164)
  );
  X_PU #(
    .LOC ( "PAD81" ))
  i_wr_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_wr_btn)
  );
  X_IPAD #(
    .LOC ( "PAD81" ))
  i_wr_btn_168 (
    .PAD(NlwRenamedSig_IO_i_wr_btn)
  );
  X_BUF #(
    .LOC ( "PAD81" ))
  i_wr_btn_IBUF (
    .O(w_wr_btn_non_inverted),
    .I(NlwRenamedSig_IO_i_wr_btn)
  );
  X_BUF #(
    .LOC ( "PAD81" ))
  \ProtoComp153.IMUX.2  (
    .I(\i_wr_btn/ProtoComp153.IINV.OUT ),
    .O(w_wr_btn)
  );
  X_INV #(
    .LOC ( "PAD81" ))
  \ProtoComp153.IINV.2  (
    .I(w_wr_btn_non_inverted),
    .O(\i_wr_btn/ProtoComp153.IINV.OUT )
  );
  X_OPAD #(
    .LOC ( "PAD99" ))
  w_wr_123 (
    .PAD(w_wr)
  );
  X_OBUF #(
    .LOC ( "PAD99" ))
  w_wr_OBUF (
    .I(\wr_sel_control/wr_control/p2t/o_q_2199 ),
    .O(w_wr)
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  o_rs_120 (
    .PAD(o_rs)
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  o_rs_OBUF (
    .I(\lcd_driver/rs_e_output/o_rs_2193 ),
    .O(o_rs)
  );
  X_IPAD #(
    .LOC ( "PAD21" ))
  i_clk_133 (
    .PAD(i_clk)
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  \i_clk_BUFGP/IBUFG  (
    .O(\i_clk_BUFGP/IBUFG_294 ),
    .I(i_clk)
  );
  X_BUF #(
    .LOC ( "PAD21" ))
  \ProtoComp154.IMUX  (
    .I(\i_clk_BUFGP/IBUFG_294 ),
    .O(\i_clk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD100" ))
  o_hz_117 (
    .PAD(o_hz)
  );
  X_OBUF #(
    .LOC ( "PAD100" ))
  o_hz_OBUF (
    .I(\time_keeper/time_ss/first_digit/o_q [0]),
    .O(o_hz)
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  o_e_114 (
    .PAD(o_e)
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  o_e_OBUF (
    .I(\lcd_driver/rs_e_output/o_e_2174 ),
    .O(o_e)
  );
  X_OPAD #(
    .LOC ( "PAD123" ))
  \o_d<1>  (
    .PAD(o_d[1])
  );
  X_OBUF #(
    .LOC ( "PAD123" ))
  o_d_1_OBUF (
    .I(\lcd_driver/d_output/o_q [1]),
    .O(o_d[1])
  );
  X_OPAD #(
    .LOC ( "PAD134" ))
  \o_d<2>  (
    .PAD(o_d[2])
  );
  X_OBUF #(
    .LOC ( "PAD134" ))
  o_d_2_OBUF (
    .I(\lcd_driver/d_output/o_q [2]),
    .O(o_d[2])
  );
  X_OPAD #(
    .LOC ( "PAD122" ))
  \o_d<4>  (
    .PAD(o_d[4])
  );
  X_OBUF #(
    .LOC ( "PAD122" ))
  o_d_4_OBUF (
    .I(\lcd_driver/d_output/o_q [4]),
    .O(o_d[4])
  );
  X_OPAD #(
    .LOC ( "PAD133" ))
  \o_d<3>  (
    .PAD(o_d[3])
  );
  X_OBUF #(
    .LOC ( "PAD133" ))
  o_d_3_OBUF (
    .I(\lcd_driver/d_output/o_q [3]),
    .O(o_d[3])
  );
  X_OPAD #(
    .LOC ( "PAD128" ))
  \o_d<6>  (
    .PAD(o_d[6])
  );
  X_OBUF #(
    .LOC ( "PAD128" ))
  o_d_6_OBUF (
    .I(\lcd_driver/d_output/o_q [6]),
    .O(o_d[6])
  );
  X_OPAD #(
    .LOC ( "PAD127" ))
  \o_d<7>  (
    .PAD(o_d[7])
  );
  X_OBUF #(
    .LOC ( "PAD127" ))
  o_d_7_OBUF (
    .I(\lcd_driver/d_output/o_q [7]),
    .O(o_d[7])
  );
  X_PU #(
    .LOC ( "PAD83" ))
  i_reset_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_reset_btn)
  );
  X_IPAD #(
    .LOC ( "PAD83" ))
  i_reset_btn_128 (
    .PAD(NlwRenamedSig_IO_i_reset_btn)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  i_reset_btn_IBUF (
    .O(w_reset_n_non_inverted),
    .I(NlwRenamedSig_IO_i_reset_btn)
  );
  X_BUF #(
    .LOC ( "PAD83" ))
  \ProtoComp153.IMUX  (
    .I(\i_reset_btn/ProtoComp153.IINV.OUT ),
    .O(w_reset_n)
  );
  X_INV #(
    .LOC ( "PAD83" ))
  \ProtoComp153.IINV  (
    .I(w_reset_n_non_inverted),
    .O(\i_reset_btn/ProtoComp153.IINV.OUT )
  );
  X_OPAD #(
    .LOC ( "PAD124" ))
  \o_d<0>  (
    .PAD(o_d[0])
  );
  X_OBUF #(
    .LOC ( "PAD124" ))
  o_d_0_OBUF (
    .I(\lcd_driver/d_output/o_q [0]),
    .O(o_d[0])
  );
  X_OPAD #(
    .LOC ( "PAD121" ))
  \o_d<5>  (
    .PAD(o_d[5])
  );
  X_OBUF #(
    .LOC ( "PAD121" ))
  o_d_5_OBUF (
    .I(\lcd_driver/d_output/o_q [5]),
    .O(o_d[5])
  );
  X_PU #(
    .LOC ( "PAD84" ))
  i_sel_dec_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_sel_dec_btn)
  );
  X_IPAD #(
    .LOC ( "PAD84" ))
  i_sel_dec_btn_138 (
    .PAD(NlwRenamedSig_IO_i_sel_dec_btn)
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  i_sel_dec_btn_IBUF (
    .O(w_sel_dec_btn_non_inverted),
    .I(NlwRenamedSig_IO_i_sel_dec_btn)
  );
  X_BUF #(
    .LOC ( "PAD84" ))
  \ProtoComp153.IMUX.1  (
    .I(\i_sel_dec_btn/ProtoComp153.IINV.OUT ),
    .O(w_sel_dec_btn)
  );
  X_INV #(
    .LOC ( "PAD84" ))
  \ProtoComp153.IINV.1  (
    .I(w_sel_dec_btn_non_inverted),
    .O(\i_sel_dec_btn/ProtoComp153.IINV.OUT )
  );
  X_PU #(
    .LOC ( "PAD79" ))
  i_sel_inc_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_sel_inc_btn)
  );
  X_IPAD #(
    .LOC ( "PAD79" ))
  i_sel_inc_btn_174 (
    .PAD(NlwRenamedSig_IO_i_sel_inc_btn)
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  i_sel_inc_btn_IBUF (
    .O(w_sel_inc_btn_non_inverted),
    .I(NlwRenamedSig_IO_i_sel_inc_btn)
  );
  X_BUF #(
    .LOC ( "PAD79" ))
  \ProtoComp153.IMUX.3  (
    .I(\i_sel_inc_btn/ProtoComp153.IINV.OUT ),
    .O(w_sel_inc_btn)
  );
  X_INV #(
    .LOC ( "PAD79" ))
  \ProtoComp153.IINV.3  (
    .I(w_sel_inc_btn_non_inverted),
    .O(\i_sel_inc_btn/ProtoComp153.IINV.OUT )
  );
  X_BUF   \pulse_gen/r_cnt_n<3>/pulse_gen/r_cnt_n<3>_DMUX_Delay  (
    .I(N4_pack_17),
    .O(N4)
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<3>2 ),
    .O(\pulse_gen/r_cnt_n [3]),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 64'h7F80FF007F80FF00 ))
  \pulse_gen/Result<3>21  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(\pulse_gen/r_cnt_n [1]),
    .ADR3(\pulse_gen/r_cnt_n [3]),
    .ADR4(\pulse_gen/o_pulse_f_2251 ),
    .ADR5(1'b1),
    .O(\pulse_gen/Result<3>2 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 32'h88008800 ))
  \pulse_gen/Result<6>1_SW0  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_n [3]),
    .ADR4(1'b1),
    .O(N4_pack_17)
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_6  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<6>1_1637 ),
    .O(\pulse_gen/r_cnt_n [6]),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 64'h7F80FF00FF00FF00 ))
  \pulse_gen/Result<6>1  (
    .ADR0(\pulse_gen/o_pulse_f_2251 ),
    .ADR1(\pulse_gen/r_cnt_n [5]),
    .ADR2(\pulse_gen/r_cnt_n [4]),
    .ADR3(\pulse_gen/r_cnt_n [6]),
    .ADR4(\pulse_gen/r_cnt_n [1]),
    .ADR5(N4),
    .O(\pulse_gen/Result<6>1_1637 )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_5  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<5>1_1646 ),
    .O(\pulse_gen/r_cnt_n [5]),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 64'h7F80FF00FF00FF00 ))
  \pulse_gen/Result<5>1  (
    .ADR0(\pulse_gen/o_pulse_f_2251 ),
    .ADR1(\pulse_gen/r_cnt_n [4]),
    .ADR2(\pulse_gen/r_cnt_n [1]),
    .ADR3(\pulse_gen/r_cnt_n [5]),
    .ADR4(\pulse_gen/r_cnt_n [3]),
    .ADR5(N6_0),
    .O(\pulse_gen/Result<5>1_1646 )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_4  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<4>1 ),
    .O(\pulse_gen/r_cnt_n [4]),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y19" ),
    .INIT ( 64'h7F80FF00FF00FF00 ))
  \pulse_gen/Result<4>11  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(\pulse_gen/r_cnt_n [3]),
    .ADR3(\pulse_gen/r_cnt_n [4]),
    .ADR4(\pulse_gen/r_cnt_n [1]),
    .ADR5(\pulse_gen/o_pulse_f_2251 ),
    .O(\pulse_gen/Result<4>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_3  (
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ),
    .O(\time_keeper/time_mm/first_digit/o_q [3]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 64'h6688F608FF00EF10 ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>11  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_0  (
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .O(\time_keeper/time_mm/first_digit/o_q [0]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 64'hFFFFFFFFFFFF00FF ))
  \time_keeper/w_ena_ss_i_reset_OR_56_o1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/o_pulse_f_2_2229 ),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(N16)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y15" ),
    .INIT ( 64'hAAAAFAFAFFEEFAFA ))
  \time_keeper/w_ena_ss_i_reset_OR_56_o1  (
    .ADR0(w_reset_n),
    .ADR1(\btn_debouncer/val_dec_btn/o_pulse1_FRB_2228 ),
    .ADR2(\pulse_gen/o_pulse_n_2239 ),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .ADR5(N16),
    .O(\time_keeper/w_ena_ss_i_reset_OR_56_o )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_dec_btn/dff_pq1/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_2340 ),
    .O(\btn_debouncer/sel_dec_btn/dff_pq1/o_q_2408 ),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \time_keeper/time_mm/second_digit/o_q_0_BRB1/time_keeper/time_mm/second_digit/o_q_0_BRB1_DMUX_Delay  (
    .I(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>_pack_5 ),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_BUF   \time_keeper/time_mm/second_digit/o_q_0_BRB1/time_keeper/time_mm/second_digit/o_q_0_BRB1_AMUX_Delay  (
    .I(\time_keeper/time_mm/second_digit/o_q<1>_pack_2 ),
    .O(\time_keeper/time_mm/second_digit/o_q [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 64'h2FD0FD022FD0FD02 ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR5(1'b1),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 32'h2D2DD2D0 ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [1]),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>_pack_5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 64'hCCCC0A0000000000 ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o14_SW1  (
    .ADR0(\time_keeper/time_mm/first_digit/o_roll_low_2380 ),
    .ADR1(\time_keeper/time_mm/first_digit/o_roll_high_2440 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ),
    .ADR3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_0 ),
    .ADR5(\pulse_gen/o_pulse_f_2_2229 ),
    .O(N94)
  );
  X_FF #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB1_2368 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 64'hBAFFBAAAAAFFAAAA ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o14  (
    .ADR0(w_reset_n),
    .ADR1(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .ADR4(N93),
    .ADR5(N94),
    .O(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/_n0037 ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB0_2366 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 64'hFF000000FF000000 ))
  \time_keeper/time_mm/second_digit/_n00371  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ),
    .ADR4(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .ADR5(1'b1),
    .O(\time_keeper/time_mm/second_digit/_n0037 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 32'h0C0C0A0A ))
  \time_keeper/time_mm/second_digit/o_q_1_rstpot  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR1(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR2(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ),
    .ADR3(1'b1),
    .ADR4(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/o_q_1_rstpot_1753 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y17" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q_1_rstpot_1753 ),
    .O(\time_keeper/time_mm/second_digit/o_q<1>_pack_2 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y13" ),
    .INIT ( 64'h2DD220D22DD22DD2 ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR4(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y13" ),
    .INIT ( 64'h0100010000010100 ))
  \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y13" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_0_1  (
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .O(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y13" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y17" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_roll_high  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_roll_high_rstpot_1621 ),
    .O(\time_keeper/time_hh/first_digit/o_roll_high_2301 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y17" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  \time_keeper/time_hh/first_digit/o_roll_high_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_hh/first_digit/o_roll_high_2301 ),
    .ADR4(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .ADR5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/o_roll_high_rstpot_1621 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 64'hFFEEFFEEFAEAAAAA ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW2_G  (
    .ADR0(w_reset_n),
    .ADR1(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .ADR2(\time_keeper/time_mm/o_roll_2303 ),
    .ADR3(\time_keeper/time_hh/o_roll_2302 ),
    .ADR4(\pulse_gen/o_pulse_n_2239 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(N177)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 64'hFFFFBFFFFFFFFFFF ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o2  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR4(N8),
    .ADR5(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_bdd0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/o_roll  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o ),
    .O(\time_keeper/time_mm/o_roll_2303 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y16" ),
    .INIT ( 64'h0000F0FF0100F1FF ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o1  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR4(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_bdd0 ),
    .ADR5(N12_0),
    .O(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h2DD220D22DD22DD2 ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_mm/first_digit/o_q [3]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h0100010000010100 ))
  \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q_2_rstpot_1713 ),
    .O(\time_keeper/time_mm/first_digit/o_q [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h00000000F0F0FF00 ))
  \time_keeper/time_mm/first_digit/o_q_2_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR4(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .ADR5(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable_0 ),
    .O(\time_keeper/time_mm/first_digit/o_q_2_rstpot_1713 )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q_1_rstpot_1715 ),
    .O(\time_keeper/time_mm/first_digit/o_q [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y16" ),
    .INIT ( 64'h00000000F0F0FF00 ))
  \time_keeper/time_mm/first_digit/o_q_1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR4(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .ADR5(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable_0 ),
    .O(\time_keeper/time_mm/first_digit/o_q_1_rstpot_1715 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'hFFFFFFFF0000FFFF ))
  \time_keeper/w_inc11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/w_inc )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h00000DF00000F00F ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR4(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .ADR5(\time_keeper/w_inc ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h000000F000000000 ))
  \time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .ADR3(\time_keeper/time_hh/second_digit/o_q_2317 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y15" ),
    .INIT ( 64'h000000006AA96A6A ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 64'h0CFFF300FFF3000C ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(1'b1),
    .ADR1(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_FF #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_roll_high  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_roll_high_rstpot_1663 ),
    .O(\time_keeper/time_ss/first_digit/o_roll_high_2235 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X16Y14" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  \time_keeper/time_ss/first_digit/o_roll_high_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_ss/first_digit/o_roll_high_2235 ),
    .ADR4(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .ADR5(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .O(\time_keeper/time_ss/first_digit/o_roll_high_rstpot_1663 )
  );
  X_BUF   \lcd_driver/lcd_pulse_gen/o_update_pulse/lcd_driver/lcd_pulse_gen/o_update_pulse_BMUX_Delay  (
    .I(N184_pack_2),
    .O(N184)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 64'hCF45FFFFCF45FFFF ))
  \lcd_driver/lcd_pulse_gen/_n001111  (
    .ADR0(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .ADR1(\btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .ADR3(\btn_debouncer/val_inc_btn/dff_pq1/o_q_2236 ),
    .ADR4(\pulse_gen/o_pulse_f_2251 ),
    .ADR5(1'b1),
    .O(\lcd_driver/lcd_pulse_gen/_n00111 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 32'h30BA0000 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_SW0  (
    .ADR0(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .ADR1(\btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .ADR3(\btn_debouncer/val_inc_btn/dff_pq1/o_q_2236 ),
    .ADR4(\pulse_gen/o_pulse_f_2251 ),
    .O(N184_pack_2)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 1'b0 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_1793 ),
    .O(\lcd_driver/lcd_pulse_gen/o_update_pulse_2218 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y14" ),
    .INIT ( 64'h7775FFF52220FFA0 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\lcd_driver/lcd_pulse_gen/_n00111 ),
    .ADR2(N184),
    .ADR3(\lcd_driver/lcd_pulse_gen/o_update_pulse_2218 ),
    .ADR4(\pulse_gen/o_pulse_vf_2215 ),
    .ADR5(\pulse_gen/o_pulse_n_2239 ),
    .O(\lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_1793 )
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 1'b1 ))
  \time_keeper/time_mm/first_digit/o_roll_low  (
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .O(\time_keeper/time_mm/first_digit/o_roll_low_2380 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'h0200020000020200 ))
  \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'hFEEEEEEEBAAAAAAA ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12  (
    .ADR0(w_reset_n),
    .ADR1(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .ADR2(\pulse_gen/o_pulse_n_2239 ),
    .ADR3(\time_keeper/time_ss/o_roll_2307 ),
    .ADR4(\time_keeper/time_mm/o_roll_2303 ),
    .ADR5(\time_keeper/w_ena_hh_i_reset_OR_63_o1 ),
    .O(\time_keeper/w_ena_hh_i_reset_OR_63_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y16" ),
    .INIT ( 64'h000000008A880000 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o11  (
    .ADR0(\pulse_gen/o_pulse_f_1_2429 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_0 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ),
    .ADR3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\time_keeper/w_ena_hh_i_reset_OR_63_o1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'hF0FFF0F0F0F0F0F0 ))
  \pulse_gen/r_cnt_f_val2  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(w_reset_n),
    .ADR3(\pulse_gen/r_cnt_f [10]),
    .ADR4(\pulse_gen/r_cnt_f_val11_2530 ),
    .ADR5(\pulse_gen/r_cnt_f_val12_2531 ),
    .O(\pulse_gen/r_cnt_f_val )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'h4000000000000000 ))
  \pulse_gen/r_cnt_f_val11  (
    .ADR0(\pulse_gen/r_cnt_f [0]),
    .ADR1(\pulse_gen/r_cnt_f [12]),
    .ADR2(\pulse_gen/r_cnt_f [11]),
    .ADR3(\pulse_gen/r_cnt_f [9]),
    .ADR4(\pulse_gen/r_cnt_f [3]),
    .ADR5(\pulse_gen/r_cnt_f [1]),
    .O(\pulse_gen/r_cnt_f_val11_2530 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'h0000000000000001 ))
  \pulse_gen/r_cnt_f_val12  (
    .ADR0(\pulse_gen/r_cnt_f [4]),
    .ADR1(\pulse_gen/r_cnt_f [2]),
    .ADR2(\pulse_gen/r_cnt_f [5]),
    .ADR3(\pulse_gen/r_cnt_f [6]),
    .ADR4(\pulse_gen/r_cnt_f [7]),
    .ADR5(\pulse_gen/r_cnt_f [8]),
    .O(\pulse_gen/r_cnt_f_val12_2531 )
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_f  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_f_val1 ),
    .O(\pulse_gen/o_pulse_f_2251 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y19" ),
    .INIT ( 64'h00000000FF000000 ))
  \pulse_gen/r_cnt_f_val13  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_f_val11_2530 ),
    .ADR4(\pulse_gen/r_cnt_f_val12_2531 ),
    .ADR5(\pulse_gen/r_cnt_f [10]),
    .O(\pulse_gen/r_cnt_f_val1 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 1'b0 ))
  \wr_sel_control/sel_control/sel/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/sel_control/sel/o_q_1_rstpot1_1872 ),
    .O(\wr_sel_control/sel_control/sel/o_q [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 64'h7700572055227502 ))
  \wr_sel_control/sel_control/sel/o_q_1_rstpot1  (
    .ADR0(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .ADR1(w_reset_n),
    .ADR2(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_2342 ),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR4(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_0 ),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\wr_sel_control/sel_control/sel/o_q_1_rstpot1_1872 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 64'hFFFFFFFF0808AA08 ))
  \wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o1  (
    .ADR0(\pulse_gen/o_pulse_f_2251 ),
    .ADR1(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_2342 ),
    .ADR2(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_0 ),
    .ADR3(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_2340 ),
    .ADR4(\btn_debouncer/sel_dec_btn/dff_pq1/o_q_2408 ),
    .ADR5(w_reset_n),
    .O(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 1'b0 ))
  \wr_sel_control/sel_control/sel/o_q_0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/sel_control/sel/o_q_0_rstpot1_1878 ),
    .O(\wr_sel_control/sel_control/sel/o_q [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y18" ),
    .INIT ( 64'h0000FF0000FFFF00 ))
  \wr_sel_control/sel_control/sel/o_q_0_rstpot1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR4(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .ADR5(w_reset_n),
    .O(\wr_sel_control/sel_control/sel/o_q_0_rstpot1_1878 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'hFF00FF00FF00FF80 ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o11  (
    .ADR0(\time_keeper/time_ss/first_digit/o_roll_low_2528 ),
    .ADR1(\btn_debouncer/val_dec_btn/o_pulse1_FRB_2228 ),
    .ADR2(\pulse_gen/o_pulse_f_2_2229 ),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_0 ),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o1 )
  );
  X_SFF #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 1'b1 ))
  \time_keeper/time_ss/first_digit/o_roll_low  (
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .O(\time_keeper/time_ss/first_digit/o_roll_low_2528 ),
    .SSET(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'h0200020000020200 ))
  \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'hFEFAAEAAAEAAAEAA ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o13  (
    .ADR0(w_reset_n),
    .ADR1(\time_keeper/time_ss/first_digit/o_roll_high_2235 ),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .ADR3(\pulse_gen/o_pulse_n_2239 ),
    .ADR4(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o1 ),
    .ADR5(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o11_2526 ),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y15" ),
    .INIT ( 64'hCFCFCFEFCFCFCFCF ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o12  (
    .ADR0(\time_keeper/time_ss/first_digit/o_roll_high_2235 ),
    .ADR1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_2236 ),
    .ADR2(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR5(\pulse_gen/o_pulse_f_2_2229 ),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o11_2526 )
  );
  X_BUF   \time_keeper/time_ss/second_digit/o_q<1>/time_keeper/time_ss/second_digit/o_q<1>_BMUX_Delay  (
    .I(\time_keeper/time_ss/second_digit/o_q<2>_pack_9 ),
    .O(\time_keeper/time_ss/second_digit/o_q [2])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hAEAAAAAAAEAAAEAA ))
  \time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o11  (
    .ADR0(w_reset_n),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(\time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/second_digit/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/second_digit/o_q_1_rstpot_1923 ),
    .O(\time_keeper/time_ss/second_digit/o_q [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'h00000000F0F0FF00 ))
  \time_keeper/time_ss/second_digit/o_q_1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>_0 ),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR4(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .ADR5(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/second_digit/o_q_1_rstpot_1923 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR5(1'b1),
    .O(N20)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 32'h0B080B08 ))
  \time_keeper/time_ss/second_digit/o_q_2_rstpot  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR1(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .ADR2(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR4(1'b1),
    .O(\time_keeper/time_ss/second_digit/o_q_2_rstpot_1924 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/second_digit/o_q_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/second_digit/o_q_2_rstpot_1924 ),
    .O(\time_keeper/time_ss/second_digit/o_q<2>_pack_9 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y14" ),
    .INIT ( 64'hF0F0F0F100000000 ))
  \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable1  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR1(N20),
    .ADR2(\time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o ),
    .ADR3(\time_keeper/time_ss/w_roll_lth ),
    .ADR4(\time_keeper/w_inc ),
    .ADR5(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable )
  );
  X_BUF   \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o/time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o_AMUX_Delay  (
    .I(\time_keeper/time_mm/second_digit/o_q_0_BRB3_pack_3 ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB3_2369 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y16" ),
    .INIT ( 64'h0200020000020200 ))
  \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y16" ),
    .INIT ( 64'hFFF0F0F0FFF0FFF0 ))
  \time_keeper/time_hh/i_reset_o_roll_OR_60_o1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(w_reset_n),
    .ADR3(\time_keeper/time_hh/o_roll_2302 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(\time_keeper/time_hh/i_reset_o_roll_OR_60_o )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y16" ),
    .INIT ( 64'hFFFF5410FFFF5410 ))
  \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable1_SW0  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q_0_BRB0_2366 ),
    .ADR1(\time_keeper/time_mm/second_digit/o_q_0_BRB1_2368 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q_0_BRB2_2367 ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q_0_BRB3_2369 ),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR5(1'b1),
    .O(N24)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y16" ),
    .INIT ( 32'hABEFABEF ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q_0_BRB0_2366 ),
    .ADR1(\time_keeper/time_mm/second_digit/o_q_0_BRB1_2368 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q_0_BRB2_2367 ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q_0_BRB3_2369 ),
    .ADR4(1'b1),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y16" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB3_pack_3 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 1'b0 ))
  \wr_sel_control/wr_control/p2t/o_q_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/wr_control/p2t/o_q_rstpot_2198 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 64'h3300330003303300 ))
  \wr_sel_control/wr_control/p2t/o_q_rstpot  (
    .ADR0(1'b1),
    .ADR1(w_reset_n),
    .ADR2(\pulse_gen/o_pulse_f_2251 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR4(\btn_debouncer/wr_btn/dff_pq0/o_q_2338 ),
    .ADR5(\btn_debouncer/wr_btn/dff_pq1/o_q_2422 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_rstpot_2198 )
  );
  X_FF #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 1'b0 ))
  \wr_sel_control/wr_control/p2t/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/wr_control/p2t/o_q_rstpot_2198 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X17Y17" ),
    .INIT ( 64'h0F00040000000000 ))
  \time_keeper/w_ena_mm_i_reset_OR_57_o21  (
    .ADR0(\btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ),
    .ADR1(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_0 ),
    .ADR5(\pulse_gen/o_pulse_f_2251 ),
    .O(\time_keeper/w_ena_mm_i_reset_OR_57_o2 )
  );
  X_BUF   \time_keeper/time_hh/second_digit/o_q/time_keeper/time_hh/second_digit/o_q_CMUX_Delay  (
    .I(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>_0 )
  );
  X_BUF   \time_keeper/time_hh/second_digit/o_q/time_keeper/time_hh/second_digit/o_q_AMUX_Delay  (
    .I(\time_keeper/time_ss/second_digit/o_q<0>_pack_10 ),
    .O(\time_keeper/time_ss/second_digit/o_q [0])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 64'h333F333333333333 ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11  (
    .ADR0(1'b1),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR2(\time_keeper/time_hh/second_digit/o_q_2317 ),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 64'h2FD0FD022FD0FD02 ))
  \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR5(1'b1),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 32'h2D2DD2D0 ))
  \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [1]),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 64'h0000000300000000 ))
  \time_keeper/time_ss/w_roll_lth11  (
    .ADR0(1'b1),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(\time_keeper/time_ss/w_roll_lth )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/second_digit/o_q  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/second_digit/o_q_rstpot_1970 ),
    .O(\time_keeper/time_hh/second_digit/o_q_2317 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 64'h000FFF00000FFF00 ))
  \time_keeper/time_hh/second_digit/o_q_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(w_reset_n),
    .ADR3(\time_keeper/time_hh/second_digit/o_q_2317 ),
    .ADR4(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o_0 ),
    .ADR5(1'b1),
    .O(\time_keeper/time_hh/second_digit/o_q_rstpot_1970 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 32'h26262626 ))
  \time_keeper/time_ss/second_digit/o_q_0_rstpot  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR1(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .ADR2(w_reset_n),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\time_keeper/time_ss/second_digit/o_q_0_rstpot_1973 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/second_digit/o_q_0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/second_digit/o_q_0_rstpot_1973 ),
    .O(\time_keeper/time_ss/second_digit/o_q<0>_pack_10 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 64'hFFFF000100000000 ))
  \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable1  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR1(N24),
    .ADR2(\time_keeper/w_inc ),
    .ADR3(\time_keeper/time_mm/w_roll_lth ),
    .ADR4(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ),
    .ADR5(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q_2_rstpot_2008 ),
    .O(\time_keeper/time_mm/second_digit/o_q [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 64'h00000000FFF00F00 ))
  \time_keeper/time_mm/second_digit/o_q_2_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR5(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/second_digit/o_q_2_rstpot_2008 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 64'h0000000000030000 ))
  \time_keeper/time_mm/w_roll_lth11  (
    .ADR0(1'b1),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_1_2238 ),
    .ADR5(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/w_roll_lth )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB2_2367 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y17" ),
    .INIT ( 64'h0F0F0F0000000F00 ))
  \time_keeper/time_mm/second_digit/o_q_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_mm/second_digit/o_q_0_BRB0_2366 ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q_0_BRB2_2367 ),
    .ADR4(\time_keeper/time_mm/second_digit/o_q_0_BRB1_2368 ),
    .ADR5(\time_keeper/time_mm/second_digit/o_q_0_BRB3_2369 ),
    .O(\time_keeper/time_mm/second_digit/o_q [0])
  );
  X_BUF   \btn_debouncer/wr_btn/dff_pq1/o_q/btn_debouncer/wr_btn/dff_pq1/o_q_AMUX_Delay  (
    .I(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_2028 ),
    .O(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/wr_btn/dff_pq1/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/wr_btn/dff_pq0/o_q_2338 ),
    .O(\btn_debouncer/wr_btn/dff_pq1/o_q_2422 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/dff_pq1/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .O(\btn_debouncer/val_dec_btn/dff_pq1/o_q_2430 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X18Y18" ),
    .INIT ( 32'hFFFF0000 ))
  N55_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(N55),
    .O(N55_rt_2030)
  );
  X_FF #(
    .LOC ( "SLICE_X18Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/o_pulse1_FRB_1  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(N55_rt_2030),
    .O(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_2028 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y17" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/dff_pq1/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .O(\btn_debouncer/val_inc_btn/dff_pq1/o_q_2236 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y17" ),
    .INIT ( 64'hAEAAAEAEAAAAAAAA ))
  \time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o11  (
    .ADR0(w_reset_n),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o )
  );
  X_BUF   \btn_debouncer/val_inc_btn/o_pulse1_FRB/btn_debouncer/val_inc_btn/o_pulse1_FRB_AMUX_Delay  (
    .I(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_2092 ),
    .O(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/o_pulse1_FRB  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(N55),
    .O(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y18" ),
    .INIT ( 64'h0000FFFF00000000 ))
  \btn_debouncer/val_inc_btn/o_pulse1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .ADR5(\btn_debouncer/val_inc_btn/dff_ms0/o_q_2270 ),
    .O(N55)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/o_pulse1_FRB  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(N54),
    .O(\btn_debouncer/val_dec_btn/o_pulse1_FRB_2228 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y18" ),
    .INIT ( 64'h00FF000000FF0000 ))
  \btn_debouncer/val_dec_btn/o_pulse1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 ),
    .ADR4(\btn_debouncer/val_dec_btn/dff_ms0/o_q_2268 ),
    .ADR5(1'b1),
    .O(N54)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y18" ),
    .INIT ( 32'hF0F0F0F0 ))
  \btn_debouncer/sel_inc_btn/dff_pq0/o_q_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_2342 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_rt_2089 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_inc_btn/dff_pq1/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_rt_2089 ),
    .O(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_2092 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y16" ),
    .INIT ( 64'hFFFCFCFCCFCCCCCC ))
  \time_keeper/w_ena_mm_i_reset_OR_57_o22  (
    .ADR0(1'b1),
    .ADR1(w_reset_n),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR3(\time_keeper/time_ss/o_roll_2307 ),
    .ADR4(\pulse_gen/o_pulse_n_2239 ),
    .ADR5(\time_keeper/w_ena_mm_i_reset_OR_57_o2 ),
    .O(\time_keeper/w_ena_mm_i_reset_OR_57_o )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y16" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_roll_high  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_roll_high_rstpot_2067 ),
    .O(\time_keeper/time_mm/first_digit/o_roll_high_2440 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y16" ),
    .INIT ( 64'hFFFF0000FF00FF00 ))
  \time_keeper/time_mm/first_digit/o_roll_high_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_mm/first_digit/o_roll_high_2440 ),
    .ADR4(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .ADR5(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .O(\time_keeper/time_mm/first_digit/o_roll_high_rstpot_2067 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y15" ),
    .INIT ( 64'hFFFFFFF0F0F0F0F0 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW2_F  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(w_reset_n),
    .ADR3(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .ADR4(\time_keeper/time_hh/o_roll_2302 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(N176)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_3  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_3_rstpot_2041 ),
    .O(\time_keeper/time_hh/first_digit/o_q [3]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y15" ),
    .INIT ( 64'h00000000FFF00F00 ))
  \time_keeper/time_hh/first_digit/o_q_3_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR4(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ),
    .ADR5(\time_keeper/time_hh/first_digit/_n0037 ),
    .O(\time_keeper/time_hh/first_digit/o_q_3_rstpot_2041 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y15" ),
    .INIT ( 64'hBAAAFFAA00000000 ))
  \time_keeper/time_hh/first_digit/_n00371  (
    .ADR0(w_reset_n),
    .ADR1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_2236 ),
    .ADR2(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .ADR3(\time_keeper/time_hh/o_roll_2302 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/_n0037 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_roll_low  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_roll_low_rstpot_2056 ),
    .O(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y15" ),
    .INIT ( 64'hFFFFFFFFFFF00F00 ))
  \time_keeper/time_hh/first_digit/o_roll_low_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR3(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .ADR4(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .ADR5(\time_keeper/time_hh/first_digit/_n0037 ),
    .O(\time_keeper/time_hh/first_digit/o_roll_low_rstpot_2056 )
  );
  X_SFF #(
    .LOC ( "SLICE_X21Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/o_roll  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o ),
    .O(\time_keeper/time_hh/o_roll_2302 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y15" ),
    .INIT ( 64'h0100000000000001 ))
  \time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR3(\time_keeper/w_inc ),
    .ADR4(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR5(\time_keeper/time_hh/second_digit/o_q_2317 ),
    .O(\time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o )
  );
  X_BUF   \btn_debouncer/val_inc_btn/dff_pq0/o_q/btn_debouncer/val_inc_btn/dff_pq0/o_q_AMUX_Delay  (
    .I(\btn_debouncer/val_dec_btn/dff_pq0/o_q_2099 ),
    .O(\btn_debouncer/val_dec_btn/dff_pq0/o_q_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y19" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/dff_pq0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/val_inc_btn/dff_ms0/o_q_2270 ),
    .O(\btn_debouncer/val_inc_btn/dff_pq0/o_q_2237 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y19" ),
    .INIT ( 32'hFFFF0000 ))
  \btn_debouncer/val_dec_btn/dff_ms0/o_q_rt  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\btn_debouncer/val_dec_btn/dff_ms0/o_q_2268 ),
    .O(\btn_debouncer/val_dec_btn/dff_ms0/o_q_rt_2098 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y19" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/dff_pq0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/val_dec_btn/dff_ms0/o_q_rt_2098 ),
    .O(\btn_debouncer/val_dec_btn/dff_pq0/o_q_2099 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X20Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_inc_btn/dff_pq0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_2109 ),
    .O(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_2342 ),
    .RST(GND),
    .SET(GND)
  );
  X_SRLC16E #(
    .LOC ( "SLICE_X20Y18" ),
    .INIT ( 16'h0000 ))
  \btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q  (
    .A0(1'b0),
    .A1(1'b0),
    .A2(1'b0),
    .A3(1'b0),
    .CLK(i_clk_BUFGP),
    .D(w_sel_inc_btn),
    .Q15(\NLW_btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ),
    .Q(\btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_2109 ),
    .CE(\pulse_gen/o_pulse_f_2251 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_dec_btn/dff_pq0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_2114 ),
    .O(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_2340 ),
    .RST(GND),
    .SET(GND)
  );
  X_SRLC16E #(
    .LOC ( "SLICE_X20Y18" ),
    .INIT ( 16'h0000 ))
  \btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q  (
    .A0(1'b0),
    .A1(1'b0),
    .A2(1'b0),
    .A3(1'b0),
    .CLK(i_clk_BUFGP),
    .D(w_sel_dec_btn),
    .Q15(\NLW_btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ),
    .Q(\btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_2114 ),
    .CE(\pulse_gen/o_pulse_f_2251 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y18" ),
    .INIT ( 1'b0 ))
  \btn_debouncer/wr_btn/dff_pq0/o_q  (
    .CE(\pulse_gen/o_pulse_f_2251 ),
    .CLK(i_clk_BUFGP),
    .I(\btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_2126 ),
    .O(\btn_debouncer/wr_btn/dff_pq0/o_q_2338 ),
    .RST(GND),
    .SET(GND)
  );
  X_SRLC16E #(
    .LOC ( "SLICE_X20Y18" ),
    .INIT ( 16'h0000 ))
  \btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q  (
    .A0(1'b0),
    .A1(1'b0),
    .A2(1'b0),
    .A3(1'b0),
    .CLK(i_clk_BUFGP),
    .D(w_wr_btn),
    .Q15(\NLW_btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ),
    .Q(\btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_2126 ),
    .CE(\pulse_gen/o_pulse_f_2251 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'h227522FD727072F8 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3>1  (
    .ADR0(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR2(\lcd_driver/control_fsm/o_val_3 ),
    .ADR3(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0 ),
    .ADR5(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB2  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB2_2278 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'hFFFFC000C000C000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>262  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_val_3_BRB5_2272 ),
    .ADR2(\lcd_driver/control_fsm/o_val_0_BRB0_2273 ),
    .ADR3(\lcd_driver/control_fsm/o_val_3_BRB1_2505 ),
    .ADR4(\lcd_driver/control_fsm/o_val_2_BRB2_0 ),
    .ADR5(\lcd_driver/control_fsm/o_val_3_BRB9_2407 ),
    .O(N65)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB1  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/o_val_3 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB1_2505 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'hFFFFFCF0CF0FCC00 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>263  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_val_3_BRB0_2274 ),
    .ADR2(\lcd_driver/control_fsm/o_val_3_BRB2_2278 ),
    .ADR3(\lcd_driver/control_fsm/o_val_3_BRB1_2505 ),
    .ADR4(\lcd_driver/control_fsm/o_val_3_BRB3_2406 ),
    .ADR5(N65),
    .O(\lcd_driver/control_fsm/o_val_3 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB0  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_1209 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB0_2274 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y7" ),
    .INIT ( 64'h5545FFED5545FFCD ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2211  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_1209 )
  );
  X_BUF   \lcd_driver/control_fsm/o_val_2_BRB9/lcd_driver/control_fsm/o_val_2_BRB9_DMUX_Delay  (
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7>_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'h6664772066647720 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2>1  (
    .ADR0(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR3(\lcd_driver/control_fsm/o_val_2 ),
    .ADR4(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .ADR5(1'b1),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 32'h00005555 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT81  (
    .ADR0(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB9  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/o_val_2 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB9_2365 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'hFFFFFFFFCCCCC000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>245  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_val_3_BRB2_2278 ),
    .ADR2(\lcd_driver/control_fsm/o_val_2_BRB1_2499 ),
    .ADR3(\lcd_driver/control_fsm/o_val_2_BRB2_0 ),
    .ADR4(N69),
    .ADR5(N70),
    .O(\lcd_driver/control_fsm/o_val_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB7  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24_1077 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB7_2498 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'h3030300000300000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_ss/second_digit/o_q [2]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24_1077 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB1  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q [2]),
    .O(\lcd_driver/control_fsm/o_val_2_BRB1_2499 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y7" ),
    .INIT ( 64'hFFFF550455045504 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>243  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB2_2278 ),
    .ADR1(\lcd_driver/control_fsm/o_val_2_BRB5_0 ),
    .ADR2(\lcd_driver/control_fsm/o_val_2_BRB6_2280 ),
    .ADR3(\lcd_driver/control_fsm/o_val_2_BRB7_2498 ),
    .ADR4(\lcd_driver/control_fsm/o_val_3_BRB0_2274 ),
    .ADR5(\lcd_driver/control_fsm/o_val_2_BRB9_2365 ),
    .O(N70)
  );
  X_BUF   \N8/N8_CMUX_Delay  (
    .I(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable_0 )
  );
  X_BUF   \N8/N8_BMUX_Delay  (
    .I(N12),
    .O(N12_0)
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y16" ))
  \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable1  (
    .IA(w_reset_n_rt_1165),
    .IB(N201),
    .O(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ),
    .SEL(\wr_sel_control/wr_control/p2t/o_q_2_2304 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'hFFFFFFFF00000000 ))
  w_reset_n_rt (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(w_reset_n),
    .O(w_reset_n_rt_1165)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'hFFFFFFFF00000002 ))
  \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable1_G  (
    .ADR0(\time_keeper/w_ena_mm_i_reset_OR_57_o2 ),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR2(N8),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR5(w_reset_n),
    .O(N201)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o2_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR5(1'b1),
    .O(N8)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X12Y16" ),
    .INIT ( 32'hFFFFFFFE ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o1_SW0  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [1]),
    .O(N12)
  );
  X_SFF #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_3  (
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ),
    .O(\time_keeper/time_ss/first_digit/o_q [3]),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y15" ),
    .INIT ( 64'h6688F608FF00EF10 ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>11  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 )
  );
  X_BUF   \lcd_driver/control_fsm/o_val_1_BRB6/lcd_driver/control_fsm/o_val_1_BRB6_DMUX_Delay  (
    .I(\lcd_driver/control_fsm/o_val_3_BRB5_pack_3 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB5_2272 )
  );
  X_BUF   \lcd_driver/control_fsm/o_val_1_BRB6/lcd_driver/control_fsm/o_val_1_BRB6_BMUX_Delay  (
    .I(\lcd_driver/control_fsm/o_val_2_BRB5_1302 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB5_0 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 64'hFFFFF0FFFFFFF0FF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In211  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In21 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 32'hFFFFFCFF ))
  \lcd_driver/control_fsm/state<5>41  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .O(\lcd_driver/control_fsm/state<5>4 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB5  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state<5>4 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB5_pack_3 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB6  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22_1293 ),
    .O(\lcd_driver/control_fsm/o_val_1_BRB6_2281 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 64'h3030300000300000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR5(\time_keeper/time_ss/second_digit/o_q [1]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22_1293 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB2  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_1295 ),
    .O(\lcd_driver/control_fsm/o_val_1_BRB2_2279 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_1295 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 32'hCACACACA ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>242  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_1287 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB5  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_1287 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB5_1302 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB1  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q [1]),
    .O(\lcd_driver/control_fsm/o_val_1_BRB1_2276 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y8" ),
    .INIT ( 64'hFF00000000000000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>244  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/o_val_3_BRB5_2272 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0_BRB0_2273 ),
    .ADR5(\lcd_driver/control_fsm/o_val_2_BRB9_2365 ),
    .O(N69)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 64'h000068AA0000AAA9 ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>11  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR4(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .ADR5(\time_keeper/w_inc ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y15" ),
    .INIT ( 64'hFFFFFFFFFFFFFF00 ))
  \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR4(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_hh/first_digit/o_q [0]),
    .O(N26)
  );
  X_BUF   \lcd_driver/control_fsm/o_val_3_BRB9/lcd_driver/control_fsm/o_val_3_BRB9_BMUX_Delay  (
    .I(\lcd_driver/control_fsm/o_val_2_BRB2_1224 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB2_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB9  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(\lcd_driver/control_fsm/o_val_3_BRB9_2407 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 64'hFFFEFFFEFFEEFFEF ))
  \lcd_driver/control_fsm/_n0483_inv1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/_n0483_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB6  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB6_2280 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 64'hFFFFFFF3FFFFFFF3 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>111  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 32'h00000004 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22311  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 )
  );
  X_FF #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB2  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB2_1224 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB3  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_1217 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB3_2406 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X13Y8" ),
    .INIT ( 64'h1000555510001000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>261  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .ADR5(\time_keeper/time_hh/first_digit/o_q [3]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_1217 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h0CFFF300FFF3000C ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(1'b1),
    .ADR1(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR4(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'hAAAAAAAB00000000 ))
  \time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable1  (
    .ADR0(w_reset_n),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR3(N10),
    .ADR4(\time_keeper/w_inc ),
    .ADR5(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .O(\time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q_2_rstpot_1143 ),
    .O(\time_keeper/time_ss/first_digit/o_q [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h00000000F0F0FF00 ))
  \time_keeper/time_ss/first_digit/o_q_2_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR4(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .ADR5(\time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/first_digit/o_q_2_rstpot_1143 )
  );
  X_FF #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q_1_rstpot_1145 ),
    .O(\time_keeper/time_ss/first_digit/o_q [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y14" ),
    .INIT ( 64'h00000000F0F0FF00 ))
  \time_keeper/time_ss/first_digit/o_q_1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR4(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .ADR5(\time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/first_digit/o_q_1_rstpot_1145 )
  );
  X_BUF   \lcd_driver/control_fsm/o_val_1_BRB8/lcd_driver/control_fsm/o_val_1_BRB8_CMUX_Delay  (
    .I(\lcd_driver/control_fsm/o_val_1_pack_4 ),
    .O(\lcd_driver/control_fsm/o_val_1 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y7" ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225  (
    .IA(N188),
    .IB(N189),
    .O(\lcd_driver/control_fsm/o_val_1_pack_4 ),
    .SEL(\lcd_driver/control_fsm/o_val_3_BRB2_2278 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'hFFFFFF0CFF0CFF0C ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_F  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_val_1_BRB2_2279 ),
    .ADR2(\lcd_driver/control_fsm/o_val_2_BRB6_2280 ),
    .ADR3(\lcd_driver/control_fsm/o_val_1_BRB6_2281 ),
    .ADR4(\lcd_driver/control_fsm/o_val_3_BRB0_2274 ),
    .ADR5(\lcd_driver/control_fsm/o_val_1_BRB8_2509 ),
    .O(N188)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB8  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/o_val_1_pack_4 ),
    .O(\lcd_driver/control_fsm/o_val_1_BRB8_2509 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'hFFFFF800F800F800 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_G  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB5_2272 ),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB0_2273 ),
    .ADR2(\lcd_driver/control_fsm/o_val_3_BRB0_2274 ),
    .ADR3(\lcd_driver/control_fsm/o_val_1_BRB8_2509 ),
    .ADR4(\lcd_driver/control_fsm/o_val_2_BRB2_0 ),
    .ADR5(\lcd_driver/control_fsm/o_val_1_BRB1_2276 ),
    .O(N189)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y7" ),
    .INIT ( 64'h11AF00A033AF22A0 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT21  (
    .ADR0(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .ADR3(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR4(\lcd_driver/control_fsm/o_val_1 ),
    .ADR5(\lcd_driver/control_fsm/o_val_0 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> )
  );
  X_BUF   \lcd_driver/control_fsm/state_FSM_FFd2-In32/lcd_driver/control_fsm/state_FSM_FFd2-In32_CMUX_Delay  (
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In39_1122 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In39_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X12Y11" ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In39  (
    .IA(N198),
    .IB(N199),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In39_1122 ),
    .SEL(\lcd_driver/control_fsm/state_FSM_FFd6_2222 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h5555555555555445 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In39_F  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB_2323 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB_2325 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2-In32_2501 ),
    .O(N198)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h5555555545444444 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In39_G  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2-In37_2320 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2-In32_2501 ),
    .O(N199)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h0000FFF00000FFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In32  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/r_cnt [0]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [1]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In32_2501 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X12Y11" ),
    .INIT ( 64'h0000000000000400 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_2382 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_2388 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y9" ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26  (
    .IA(N194),
    .IB(N195),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28 ),
    .SEL(\lcd_driver/control_fsm/state_FSM_FFd3_2221 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y9" ),
    .INIT ( 64'h000C000C300C000C ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_F  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\time_keeper/time_hh/second_digit/o_q_2317 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .O(N194)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y9" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB1  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB1_2316 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y9" ),
    .INIT ( 64'h1010100000100000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_G  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\time_keeper/time_pm/o_q_BRB0_2313 ),
    .ADR4(\time_keeper/time_pm/o_q_BRB1_2314 ),
    .ADR5(\time_keeper/time_pm/o_q_BRB2_2315 ),
    .O(N195)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y9" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB0  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB0_2273 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y9" ),
    .INIT ( 64'h000C0000AAAA0000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24  (
    .ADR0(\lcd_driver/control_fsm/o_val_0_BRB10_2392 ),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB9_2419 ),
    .ADR2(\lcd_driver/control_fsm/o_val_0_BRB7_2418 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0_BRB0_2273 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0_BRB5_2428 ),
    .ADR5(\lcd_driver/control_fsm/o_val_3_BRB2_2278 ),
    .O(N78)
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_f_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_f_val1 ),
    .O(\pulse_gen/o_pulse_f_2_2229 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 64'h0100010000010100 ))
  \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_f_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_f_val1 ),
    .O(\pulse_gen/o_pulse_f_1_2429 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y17" ),
    .INIT ( 64'hFFFFFFF0F0F0F0F0 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW3_F  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(w_reset_n),
    .ADR3(\time_keeper/time_hh/first_digit/o_roll_high_2301 ),
    .ADR4(\time_keeper/time_hh/o_roll_2302 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(N178)
  );
  X_BUF   \N173/N173_CMUX_Delay  (
    .I(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o ),
    .O(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o_0 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y16" ))
  \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1  (
    .IA(N196),
    .IB(N197),
    .O(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o ),
    .SEL(\time_keeper/w_inc )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'hB931A820FD75EC64 ))
  \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1_F  (
    .ADR0(\time_keeper/w_ena_hh_i_reset_OR_63_o1 ),
    .ADR1(\time_keeper/time_ss/o_roll_2307 ),
    .ADR2(N176),
    .ADR3(N177),
    .ADR4(w_reset_n),
    .ADR5(N173),
    .O(N196)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'hB931A820FD75EC64 ))
  \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1_G  (
    .ADR0(\time_keeper/w_ena_hh_i_reset_OR_63_o1 ),
    .ADR1(\time_keeper/time_ss/o_roll_2307 ),
    .ADR2(N178),
    .ADR3(N179),
    .ADR4(w_reset_n),
    .ADR5(N175),
    .O(N197)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'h5555555511155555 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW0_G  (
    .ADR0(w_reset_n),
    .ADR1(\pulse_gen/o_pulse_n_2239 ),
    .ADR2(\time_keeper/time_hh/first_digit/o_roll_low_2305 ),
    .ADR3(\time_keeper/time_hh/o_roll_2302 ),
    .ADR4(\time_keeper/time_mm/o_roll_2303 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(N173)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y16" ),
    .INIT ( 64'h5555555511155555 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW1_G  (
    .ADR0(w_reset_n),
    .ADR1(\pulse_gen/o_pulse_n_2239 ),
    .ADR2(\time_keeper/time_hh/first_digit/o_roll_high_2301 ),
    .ADR3(\time_keeper/time_hh/o_roll_2302 ),
    .ADR4(\time_keeper/time_mm/o_roll_2303 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(N175)
  );
  X_BUF   \lcd_driver/control_fsm/o_val_0_BRB5/lcd_driver/control_fsm/o_val_0_BRB5_DMUX_Delay  (
    .I(N186),
    .O(N186_0)
  );
  X_BUF   \lcd_driver/control_fsm/o_val_0_BRB5/lcd_driver/control_fsm/o_val_0_BRB5_BMUX_Delay  (
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB5  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_1513 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB5_2428 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'h000F0000000F0000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .ADR5(1'b1),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_1513 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 32'h000000FF ))
  \lcd_driver/control_fsm/o_sel_2_rstpot_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .O(N186)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB4  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB4_2514 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'hFFFFBA2AFFFEAFEF ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_2255 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_2221 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB7  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB7_2418 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'h36B477A036B477A0 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0>1  (
    .ADR0(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0 ),
    .ADR4(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .ADR5(1'b1),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 32'h830BD25A ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT51  (
    .ADR0(\lcd_driver/control_fsm/o_data_2360 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_0 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_1_2362 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0 ),
    .ADR4(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB3  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/o_val_0 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB3_2515 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y7" ),
    .INIT ( 64'hFFFFFFFFFCF0CC00 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>27  (
    .ADR0(1'b1),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB4_2514 ),
    .ADR2(\lcd_driver/control_fsm/o_val_0_BRB1_2316 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0_BRB3_2515 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0_BRB0_2273 ),
    .ADR5(N78),
    .O(\lcd_driver/control_fsm/o_val_0 )
  );
  X_BUF   \pulse_gen/o_pulse_n/pulse_gen/o_pulse_n_BMUX_Delay  (
    .I(N6),
    .O(N6_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y18" ),
    .INIT ( 64'hFFEEFFEEFAEAAAAA ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW3_G  (
    .ADR0(w_reset_n),
    .ADR1(\time_keeper/time_hh/first_digit/o_roll_high_2301 ),
    .ADR2(\time_keeper/time_mm/o_roll_2303 ),
    .ADR3(\time_keeper/time_hh/o_roll_2302 ),
    .ADR4(\pulse_gen/o_pulse_n_2239 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .O(N179)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y18" ),
    .INIT ( 64'hFF00000000000000 ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o14_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_mm/first_digit/o_roll_high_2440 ),
    .ADR4(\time_keeper/time_ss/o_roll_2307 ),
    .ADR5(\pulse_gen/o_pulse_n_2239 ),
    .O(N93)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y18" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \pulse_gen/r_cnt_n_val1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_n [2]),
    .ADR4(\pulse_gen/r_cnt_n [0]),
    .ADR5(1'b1),
    .O(N2)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y18" ),
    .INIT ( 32'hFF000000 ))
  \pulse_gen/Result<5>1_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_n [2]),
    .ADR4(\pulse_gen/r_cnt_n [0]),
    .O(N6)
  );
  X_SFF #(
    .LOC ( "SLICE_X14Y18" ),
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_n  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_val1_1471 ),
    .O(\pulse_gen/o_pulse_n_2239 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y18" ),
    .INIT ( 64'h0000000000008000 ))
  \pulse_gen/r_cnt_n_val1  (
    .ADR0(\pulse_gen/r_cnt_n [3]),
    .ADR1(\pulse_gen/r_cnt_n [5]),
    .ADR2(\pulse_gen/r_cnt_n [4]),
    .ADR3(\pulse_gen/r_cnt_n [6]),
    .ADR4(\pulse_gen/r_cnt_n [1]),
    .ADR5(N2),
    .O(\pulse_gen/r_cnt_n_val1_1471 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB10  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_1341 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB10_2392 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 64'hFD75B931EC64A820 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR5(\time_keeper/time_hh/first_digit/o_q [0]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_1341 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y13" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB9  (
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB9_2419 ),
    .RST(GND),
    .SET(GND)
  );
  X_BUF   \pulse_gen/r_cnt_n<2>/pulse_gen/r_cnt_n<2>_CMUX_Delay  (
    .I(\pulse_gen/r_cnt_n<1>_pack_7 ),
    .O(\pulse_gen/r_cnt_n [1])
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hFFFFFFFF0000FFFF ))
  \pulse_gen/r_cnt_n_val1_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\pulse_gen/r_cnt_n [3]),
    .ADR5(\pulse_gen/r_cnt_n [1]),
    .O(N98)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_2_rstpot_1485 ),
    .O(\pulse_gen/r_cnt_n [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'h00007F8000007F80 ))
  \pulse_gen/r_cnt_n_2_rstpot  (
    .ADR0(\pulse_gen/r_cnt_n [1]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(\pulse_gen/o_pulse_f_2251 ),
    .ADR3(\pulse_gen/r_cnt_n [2]),
    .ADR4(\pulse_gen/r_cnt_n_val ),
    .ADR5(1'b1),
    .O(\pulse_gen/r_cnt_n_2_rstpot_1485 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 32'h00006A6A ))
  \pulse_gen/r_cnt_n_1_rstpot  (
    .ADR0(\pulse_gen/r_cnt_n [1]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(\pulse_gen/o_pulse_f_2251 ),
    .ADR3(1'b1),
    .ADR4(\pulse_gen/r_cnt_n_val ),
    .O(\pulse_gen/r_cnt_n_1_rstpot_1497 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_1_rstpot_1497 ),
    .O(\pulse_gen/r_cnt_n<1>_pack_7 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'hAAAAAAAAAAAAEAAA ))
  \pulse_gen/r_cnt_n_val2  (
    .ADR0(w_reset_n),
    .ADR1(\pulse_gen/r_cnt_n [6]),
    .ADR2(\pulse_gen/r_cnt_n [5]),
    .ADR3(\pulse_gen/r_cnt_n [4]),
    .ADR4(N98),
    .ADR5(N2),
    .O(\pulse_gen/r_cnt_n_val )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_0_rstpot_1496 ),
    .O(\pulse_gen/r_cnt_n [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y19" ),
    .INIT ( 64'h000000FF0000FF00 ))
  \pulse_gen/r_cnt_n_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\pulse_gen/r_cnt_n [0]),
    .ADR4(\pulse_gen/r_cnt_n_val ),
    .ADR5(\pulse_gen/o_pulse_f_2251 ),
    .O(\pulse_gen/r_cnt_n_0_rstpot_1496 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_2_rstpot_1391 ),
    .O(\time_keeper/time_hh/first_digit/o_q [2]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 64'h00000000FFF00F00 ))
  \time_keeper/time_hh/first_digit/o_q_2_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR5(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_hh/first_digit/o_q_2_rstpot_1391 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 64'hF0F0F0F100000000 ))
  \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR1(N26),
    .ADR2(\time_keeper/time_hh/i_reset_o_roll_OR_60_o ),
    .ADR3(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .ADR4(\time_keeper/w_inc ),
    .ADR5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_1_rstpot_1379 ),
    .O(\time_keeper/time_hh/first_digit/o_q [1]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 64'h00000000FFF00F00 ))
  \time_keeper/time_hh/first_digit/o_q_1_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR4(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR5(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_hh/first_digit/o_q_1_rstpot_1379 )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_0_rstpot_1401 ),
    .O(\time_keeper/time_hh/first_digit/o_q [0]),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y15" ),
    .INIT ( 64'h00000000F0F0FF00 ))
  \time_keeper/time_hh/first_digit/o_q_0_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR4(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR5(\time_keeper/time_hh/first_digit/_n0037 ),
    .O(\time_keeper/time_hh/first_digit/o_q_0_rstpot_1401 )
  );
  X_BUF   \time_keeper/time_pm/o_q_BRB0/time_keeper/time_pm/o_q_BRB0_AMUX_Delay  (
    .I(\time_keeper/time_pm/o_q_BRB2_pack_3 ),
    .O(\time_keeper/time_pm/o_q_BRB2_2315 )
  );
  X_MUX2 #(
    .LOC ( "SLICE_X14Y14" ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o23  (
    .IA(N190),
    .IB(N191),
    .O(\time_keeper/w_ena_pm_i_reset_OR_64_o ),
    .SEL(\wr_sel_control/wr_control/p2t/o_q_2_2304 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 64'hFFFFFFFFC0000000 ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o23_F  (
    .ADR0(1'b1),
    .ADR1(\time_keeper/time_hh/o_roll_2302 ),
    .ADR2(\time_keeper/time_mm/o_roll_2303 ),
    .ADR3(\pulse_gen/o_pulse_n_2239 ),
    .ADR4(\time_keeper/time_ss/o_roll_2307 ),
    .ADR5(w_reset_n),
    .O(N190)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_pm/o_q_BRB0  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/w_ena_pm_i_reset_OR_64_o ),
    .O(\time_keeper/time_pm/o_q_BRB0_2313 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 64'hFFFFFFFF80808000 ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o23_G  (
    .ADR0(\pulse_gen/o_pulse_f_2251 ),
    .ADR1(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR3(\btn_debouncer/val_dec_btn/o_pulse1_FRB_2228 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR5(w_reset_n),
    .O(N191)
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_pm/o_q_BRB1  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_pm/o_q ),
    .O(\time_keeper/time_pm/o_q_BRB1_2314 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \time_keeper/time_pm/o_q_rstpot  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\time_keeper/time_pm/o_q_BRB0_2313 ),
    .ADR3(\time_keeper/time_pm/o_q_BRB1_2314 ),
    .ADR4(\time_keeper/time_pm/o_q_BRB2_2315 ),
    .ADR5(1'b1),
    .O(\time_keeper/time_pm/o_q )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 32'h00033033 ))
  \time_keeper/i_reset_o_pm_AND_39_o1  (
    .ADR0(1'b1),
    .ADR1(w_reset_n),
    .ADR2(\time_keeper/time_pm/o_q_BRB0_2313 ),
    .ADR3(\time_keeper/time_pm/o_q_BRB1_2314 ),
    .ADR4(\time_keeper/time_pm/o_q_BRB2_2315 ),
    .O(\time_keeper/i_reset_o_pm_AND_39_o )
  );
  X_FF #(
    .LOC ( "SLICE_X14Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_pm/o_q_BRB2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/i_reset_o_pm_AND_39_o ),
    .O(\time_keeper/time_pm/o_q_BRB2_pack_3 ),
    .RST(GND),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X15Y8" ),
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_sel_2  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/o_sel_2_rstpot_1540 ),
    .O(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .RST(GND),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y8" ),
    .INIT ( 64'hFF04BF04FF44FF40 ))
  \lcd_driver/control_fsm/o_sel_2_rstpot  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_2220 ),
    .ADR1(N186_0),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_2264 ),
    .ADR3(\lcd_driver/control_fsm/o_sel_2_2351 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2222 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4_2262 ),
    .O(\lcd_driver/control_fsm/o_sel_2_rstpot_1540 )
  );
  X_BUF   \time_keeper/time_ss/o_roll/time_keeper/time_ss/o_roll_CMUX_Delay  (
    .I(N14_pack_7),
    .O(N14)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 64'hFFFFFF00FFFFFF00 ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o2_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR5(1'b1),
    .O(N10)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 32'hFFFFFFFE ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o1_SW0  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/first_digit/o_q [1]),
    .O(N14_pack_7)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o2  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q_0_1_2196 ),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR5(N10),
    .O(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_bdd0 )
  );
  X_SFF #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/o_roll  (
    .CE(VCC),
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o ),
    .O(\time_keeper/time_ss/o_roll_2307 ),
    .SRST(w_reset_n),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X15Y14" ),
    .INIT ( 64'h4545454545454575 ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o1  (
    .ADR0(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_bdd0 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_2326 ),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_2_2304 ),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR5(N14),
    .O(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o )
  );
  X_ONE   NlwBlock_top_module_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_top_module_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

