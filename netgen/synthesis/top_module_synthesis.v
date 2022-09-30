////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_module_synthesis.v
// /___/   /\     Timestamp: Fri Sep 30 10:43:35 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -filter E:/Xilinx/projects/mimasV2-clock/iseconfig/filter.filter -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim top_module.ngc top_module_synthesis.v 
// Device	: xc6slx9-2-csg324
// Input file	: top_module.ngc
// Output file	: E:\Xilinx\projects\mimasV2-clock\netgen\synthesis\top_module_synthesis.v
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
  wire i_clk_BUFGP_0;
  wire i_reset_btn_IBUF_1;
  wire i_wr_btn_IBUF_2;
  wire i_val_inc_btn_IBUF_3;
  wire i_val_dec_btn_IBUF_4;
  wire i_sel_inc_btn_IBUF_5;
  wire i_sel_dec_btn_IBUF_6;
  wire \pulse_gen/o_pulse_vf_7 ;
  wire \pulse_gen/o_pulse_f_8 ;
  wire \pulse_gen/o_pulse_n_9 ;
  wire \time_keeper/time_hh/second_digit/o_q_10 ;
  wire \time_keeper/time_pm/o_q_31 ;
  wire w_val_inc_pulse;
  wire w_sel_inc_pulse;
  wire \wr_sel_control/wr_control/p2t/o_q_36 ;
  wire \lcd_driver/rs_e_output/o_rs_45 ;
  wire \lcd_driver/rs_e_output/o_e_46 ;
  wire w_reset_n;
  wire \btn_debouncer/sel_dec_btn/dff_pq1/o_q_48 ;
  wire \btn_debouncer/sel_dec_btn/dff_pq0/o_q_49 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ;
  wire \btn_debouncer/val_dec_btn/dff_pq1/o_q_52 ;
  wire \btn_debouncer/val_dec_btn/dff_pq0/o_q_53 ;
  wire \btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ;
  wire \btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ;
  wire \btn_debouncer/wr_btn/dff_pq1/o_q_56 ;
  wire \btn_debouncer/wr_btn/dff_pq0/o_q_57 ;
  wire \wr_sel_control/wr_control/i_reset_o_toggle_AND_42_o ;
  wire \wr_sel_control/wr_control/w_ena_p2t_i_reset_OR_65_o ;
  wire \lcd_driver/lcd_pulse_gen/o_update_pulse_60 ;
  wire \lcd_driver/control_fsm/o_e_trigger_61 ;
  wire \lcd_driver/control_fsm/o_data_62 ;
  wire \lcd_driver/control_fsm/o_val_0_63 ;
  wire \lcd_driver/control_fsm/o_val_1_64 ;
  wire \lcd_driver/control_fsm/o_val_2_65 ;
  wire \lcd_driver/control_fsm/o_val_3_66 ;
  wire \lcd_driver/control_fsm/o_sel_0_67 ;
  wire \lcd_driver/control_fsm/o_sel_1_68 ;
  wire \lcd_driver/control_fsm/o_sel_2_69 ;
  wire \lcd_driver/lcd_pulse_gen/i_clock_pulse_i_inc_pulse_OR_71_o_70 ;
  wire \wr_sel_control/sel_control/w_roll_lth ;
  wire \wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ;
  wire \wr_sel_control/sel_control/i_reset_w_roll_htl_OR_68_o ;
  wire \pulse_gen/Mcount_r_cnt_vf_val1 ;
  wire \pulse_gen/Maccum_r_cnt_n_xor<2>11 ;
  wire \pulse_gen/r_cnt_n_val1_76 ;
  wire \pulse_gen/r_cnt_f_val1 ;
  wire \pulse_gen/Result<6>1 ;
  wire \pulse_gen/Result<5>1 ;
  wire \pulse_gen/Result<4>1 ;
  wire \pulse_gen/Result<3>2 ;
  wire \pulse_gen/Result<2>2 ;
  wire \pulse_gen/Result<1>2 ;
  wire \pulse_gen/r_cnt_n_val ;
  wire \pulse_gen/Result<3>1 ;
  wire \pulse_gen/Result<2>1 ;
  wire \pulse_gen/Result<1>1 ;
  wire \pulse_gen/Result<0>1 ;
  wire \pulse_gen/r_cnt_f_val ;
  wire \pulse_gen/Mcount_r_cnt_vf_val ;
  wire \time_keeper/w_ena_pm_i_reset_OR_64_o1 ;
  wire \time_keeper/w_ena_mm_i_reset_OR_57_o1 ;
  wire \time_keeper/time_ss/first_digit/o_roll_high_144 ;
  wire \time_keeper/time_ss/first_digit/o_roll_low_145 ;
  wire \time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o ;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o ;
  wire \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_148 ;
  wire \time_keeper/time_ss/w_roll_lth ;
  wire \time_keeper/time_mm/first_digit/o_roll_high_150 ;
  wire \time_keeper/time_mm/first_digit/o_roll_low_151 ;
  wire \time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ;
  wire \time_keeper/time_mm/w_ena2_i_reset_OR_47_o ;
  wire \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_154 ;
  wire \time_keeper/time_mm/w_roll_lth ;
  wire \time_keeper/i_reset_o_pm_AND_39_o ;
  wire \time_keeper/w_inc ;
  wire \time_keeper/w_ena_pm_i_reset_OR_64_o_158 ;
  wire \time_keeper/w_ena_hh_i_reset_OR_63_o ;
  wire \time_keeper/w_ena_mm_i_reset_OR_57_o ;
  wire \time_keeper/w_ena_ss_i_reset_OR_56_o ;
  wire \time_keeper/time_hh/o_roll_162 ;
  wire \time_keeper/time_mm/o_roll_163 ;
  wire \time_keeper/time_ss/o_roll_164 ;
  wire \time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ;
  wire \time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_167 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ;
  wire \time_keeper/time_ss/first_digit/_n0046 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> ;
  wire \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ;
  wire \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ;
  wire \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_179 ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_ss/second_digit/_n0046_181 ;
  wire \time_keeper/time_ss/second_digit/_n0037 ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ;
  wire \time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ;
  wire \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_187 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ;
  wire \time_keeper/time_mm/first_digit/_n0046 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> ;
  wire \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ;
  wire \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ;
  wire \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_199 ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_mm/second_digit/_n0046_201 ;
  wire \time_keeper/time_mm/second_digit/_n0037 ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \wr_sel_control/sel_control/sel/Reset_OR_DriverANDClockEnable ;
  wire \wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \wr_sel_control/sel_control/sel/_n0037 ;
  wire \wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_hh/first_digit/_n0037 ;
  wire \time_keeper/time_hh/first_digit/_n0046_212 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_215 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_216 ;
  wire \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ;
  wire \time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ;
  wire \time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> ;
  wire \time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ;
  wire \time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o ;
  wire \time_keeper/time_hh/i_reset_o_q[4]_AND_36_o ;
  wire \time_keeper/time_hh/w_ena2_i_reset_OR_61_o ;
  wire \time_keeper/time_hh/first_digit/o_roll_low_225 ;
  wire \time_keeper/time_hh/first_digit/o_roll_high_226 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_228 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>2 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>1_231 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>2 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>1 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>2 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>1 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>2 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In21 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 ;
  wire \lcd_driver/control_fsm/state<5>4 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt11 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt10 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt9 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt8 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt7 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt6 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt5 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt4 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt3 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt2 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt1 ;
  wire \lcd_driver/control_fsm/Mcount_r_cnt ;
  wire \lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In1 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In1 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In3 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In3 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In3 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In121 ;
  wire \lcd_driver/control_fsm/_n0483_inv ;
  wire \lcd_driver/control_fsm/_n0384_inv ;
  wire \lcd_driver/control_fsm/_n0366_inv ;
  wire \lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o ;
  wire \lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<0> ;
  wire \lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<1> ;
  wire \lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<2> ;
  wire \lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<3> ;
  wire \lcd_driver/control_fsm/_n0293 ;
  wire \lcd_driver/control_fsm/_n0291 ;
  wire \lcd_driver/control_fsm/_n0289 ;
  wire \lcd_driver/control_fsm/_n0309 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_318 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_319 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_320 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_321 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_322 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1_323 ;
  wire \lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ;
  wire \lcd_driver/rs_e_output/_n0030_inv ;
  wire \lcd_driver/rs_e_output/_n0027_inv ;
  wire \lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> ;
  wire \lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> ;
  wire \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> ;
  wire N0;
  wire N2;
  wire \pulse_gen/r_cnt_f_val11_341 ;
  wire \pulse_gen/r_cnt_f_val12_342 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In11_349 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In12_350 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In15_351 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In16_352 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In17_353 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In11_354 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In12_355 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In13_356 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In15_357 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In17_358 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In1_359 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In2_360 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In3_361 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In4_362 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In5_363 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In6_364 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In7_365 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In8_366 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In9_367 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In10_368 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In31_369 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In32_370 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_372 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_374 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>25_376 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In31_377 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In32_378 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In33_379 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In34_380 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In31_381 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In32_382 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In33_383 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In34_384 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In35_385 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In36_386 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In37_387 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In38_388 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In39_389 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In310_390 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In311_391 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In314_392 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>261_394 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_395 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>242_396 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>243_397 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>244_398 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_399 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>223_400 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>224_401 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_402 ;
  wire \lcd_driver/lcd_pulse_gen/o_update_pulse_glue_rst_422 ;
  wire \lcd_driver/rs_e_output/o_e_glue_set_423 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<11>_rt_424 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<10>_rt_425 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<9>_rt_426 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<8>_rt_427 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<7>_rt_428 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<6>_rt_429 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<5>_rt_430 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<4>_rt_431 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<3>_rt_432 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<2>_rt_433 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<1>_rt_434 ;
  wire \pulse_gen/Maccum_r_cnt_f_xor<12>_rt_435 ;
  wire N16;
  wire N18;
  wire N22;
  wire N23;
  wire N24;
  wire \time_keeper/time_ss/second_digit/o_q_2_rstpot_441 ;
  wire \time_keeper/time_mm/second_digit/o_q_2_rstpot_442 ;
  wire \time_keeper/time_ss/second_digit/o_q_1_rstpot_443 ;
  wire \time_keeper/time_mm/second_digit/o_q_1_rstpot_444 ;
  wire N29;
  wire N31;
  wire N33;
  wire N34;
  wire N36;
  wire N38;
  wire N44;
  wire N46;
  wire N48;
  wire N50;
  wire N52;
  wire N54;
  wire N56;
  wire N58;
  wire N60;
  wire N61;
  wire N62;
  wire \wr_sel_control/wr_control/p2t/o_q_1_462 ;
  wire \pulse_gen/o_pulse_f_1_463 ;
  wire \time_keeper/time_mm/first_digit/o_q_2_rstpot_464 ;
  wire \time_keeper/time_mm/first_digit/o_q_1_rstpot_465 ;
  wire \time_keeper/time_hh/first_digit/o_q_1_rstpot_466 ;
  wire \time_keeper/time_hh/first_digit/o_q_2_rstpot_467 ;
  wire \time_keeper/time_ss/first_digit/o_q_2_rstpot_468 ;
  wire \time_keeper/time_ss/first_digit/o_q_1_rstpot_469 ;
  wire \wr_sel_control/wr_control/p2t/o_q_2_470 ;
  wire N64;
  wire N65;
  wire N66;
  wire N67;
  wire N68;
  wire N69;
  wire \btn_debouncer/val_dec_btn/dff_pq0/Mshreg_o_q_477 ;
  wire \btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_478 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_479 ;
  wire \btn_debouncer/val_inc_btn/dff_pq0/Mshreg_o_q_480 ;
  wire \btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_481 ;
  wire \NLW_btn_debouncer/val_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/val_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire [3 : 0] \time_keeper/time_hh/first_digit/o_q ;
  wire [3 : 0] \time_keeper/time_mm/second_digit/o_q ;
  wire [3 : 0] \time_keeper/time_mm/first_digit/o_q ;
  wire [3 : 0] \time_keeper/time_ss/first_digit/o_q ;
  wire [3 : 0] \time_keeper/time_ss/second_digit/o_q ;
  wire [2 : 0] \wr_sel_control/sel_control/sel/o_q ;
  wire [7 : 0] \lcd_driver/d_output/o_q ;
  wire [11 : 0] \pulse_gen/Maccum_r_cnt_f_cy ;
  wire [0 : 0] \pulse_gen/Maccum_r_cnt_f_lut ;
  wire [3 : 0] \pulse_gen/r_cnt_vf ;
  wire [6 : 0] \pulse_gen/r_cnt_n ;
  wire [0 : 0] \pulse_gen/Maccum_r_cnt_n_lut ;
  wire [12 : 0] \pulse_gen/Result ;
  wire [12 : 0] \pulse_gen/r_cnt_f ;
  wire [11 : 0] \lcd_driver/control_fsm/Mcount_r_cnt_lut ;
  wire [10 : 0] \lcd_driver/control_fsm/Mcount_r_cnt_cy ;
  wire [11 : 0] \lcd_driver/control_fsm/r_cnt ;
  wire [1 : 0] \lcd_driver/rs_e_output/r_cnt ;
  GND   XST_GND (
    .G(\wr_sel_control/sel_control/sel/o_q [2])
  );
  FDE   \btn_debouncer/sel_dec_btn/dff_pq1/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_49 ),
    .Q(\btn_debouncer/sel_dec_btn/dff_pq1/o_q_48 )
  );
  FDE   \btn_debouncer/sel_inc_btn/dff_pq1/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .Q(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 )
  );
  FDE   \btn_debouncer/val_dec_btn/dff_pq1/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/val_dec_btn/dff_pq0/o_q_53 ),
    .Q(\btn_debouncer/val_dec_btn/dff_pq1/o_q_52 )
  );
  FDE   \btn_debouncer/val_inc_btn/dff_pq1/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .Q(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 )
  );
  FDE   \btn_debouncer/wr_btn/dff_pq1/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/wr_btn/dff_pq0/o_q_57 ),
    .Q(\btn_debouncer/wr_btn/dff_pq1/o_q_56 )
  );
  FDE   \wr_sel_control/wr_control/p2t/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\wr_sel_control/wr_control/w_ena_p2t_i_reset_OR_65_o ),
    .D(\wr_sel_control/wr_control/i_reset_o_toggle_AND_42_o ),
    .Q(\wr_sel_control/wr_control/p2t/o_q_36 )
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<12>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [11]),
    .LI(\pulse_gen/Maccum_r_cnt_f_xor<12>_rt_435 ),
    .O(\pulse_gen/Result [12])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<11>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [10]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<11>_rt_424 ),
    .O(\pulse_gen/Result [11])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<11>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [10]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<11>_rt_424 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [11])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<10>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [9]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<10>_rt_425 ),
    .O(\pulse_gen/Result [10])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<10>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [9]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<10>_rt_425 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [10])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<9>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [8]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<9>_rt_426 ),
    .O(\pulse_gen/Result [9])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<9>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [8]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<9>_rt_426 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [9])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<8>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [7]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<8>_rt_427 ),
    .O(\pulse_gen/Result [8])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<8>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [7]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<8>_rt_427 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [8])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<7>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [6]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<7>_rt_428 ),
    .O(\pulse_gen/Result [7])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<7>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [6]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<7>_rt_428 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [7])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<6>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [5]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<6>_rt_429 ),
    .O(\pulse_gen/Result [6])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<6>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [5]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<6>_rt_429 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [6])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<5>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [4]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<5>_rt_430 ),
    .O(\pulse_gen/Result [5])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<5>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [4]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<5>_rt_430 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [5])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<4>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [3]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<4>_rt_431 ),
    .O(\pulse_gen/Result [4])
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<4>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [3]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<4>_rt_431 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [4])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<3>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [2]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<3>_rt_432 ),
    .O(\pulse_gen/Result<3>1 )
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<3>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [2]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<3>_rt_432 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [3])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<2>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [1]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<2>_rt_433 ),
    .O(\pulse_gen/Result<2>1 )
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<2>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [1]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<2>_rt_433 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [2])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<1>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [0]),
    .LI(\pulse_gen/Maccum_r_cnt_f_cy<1>_rt_434 ),
    .O(\pulse_gen/Result<1>1 )
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<1>  (
    .CI(\pulse_gen/Maccum_r_cnt_f_cy [0]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\pulse_gen/Maccum_r_cnt_f_cy<1>_rt_434 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [1])
  );
  XORCY   \pulse_gen/Maccum_r_cnt_f_xor<0>  (
    .CI(\wr_sel_control/sel_control/sel/o_q [2]),
    .LI(\pulse_gen/Maccum_r_cnt_f_lut [0]),
    .O(\pulse_gen/Result<0>1 )
  );
  MUXCY   \pulse_gen/Maccum_r_cnt_f_cy<0>  (
    .CI(\wr_sel_control/sel_control/sel/o_q [2]),
    .DI(\pulse_gen/r_cnt_f [0]),
    .S(\pulse_gen/Maccum_r_cnt_f_lut [0]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [0])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pulse_gen/Maccum_r_cnt_f_lut<0>  (
    .I0(\pulse_gen/r_cnt_f [0]),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .O(\pulse_gen/Maccum_r_cnt_f_lut [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_5  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<5>1 ),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_4  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<4>1 ),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_6  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<6>1 ),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_2  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<2>2 ),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_1  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<1>2 ),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_3  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<3>2 ),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_12  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [12]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [12])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_0  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Maccum_r_cnt_n_lut [0]),
    .R(\pulse_gen/r_cnt_n_val ),
    .Q(\pulse_gen/r_cnt_n [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_11  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [11]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [11])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_10  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [10]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [10])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_9  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [9]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_8  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [8]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_6  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [6]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_5  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [5]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_7  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [7]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_4  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [4]),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_3  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<3>1 ),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_2  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<2>1 ),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_1  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<1>1 ),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_3  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [3]),
    .R(\pulse_gen/Mcount_r_cnt_vf_val ),
    .Q(\pulse_gen/r_cnt_vf [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_0  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result<0>1 ),
    .R(\pulse_gen/r_cnt_f_val ),
    .Q(\pulse_gen/r_cnt_f [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_2  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [2]),
    .R(\pulse_gen/Mcount_r_cnt_vf_val ),
    .Q(\pulse_gen/r_cnt_vf [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_1  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [1]),
    .R(\pulse_gen/Mcount_r_cnt_vf_val ),
    .Q(\pulse_gen/r_cnt_vf [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_0  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Result [0]),
    .R(\pulse_gen/Mcount_r_cnt_vf_val ),
    .Q(\pulse_gen/r_cnt_vf [0])
  );
  FDR   \pulse_gen/o_pulse_n  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/r_cnt_n_val1_76 ),
    .R(w_reset_n),
    .Q(\pulse_gen/o_pulse_n_9 )
  );
  FDR   \pulse_gen/o_pulse_f  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/r_cnt_f_val1 ),
    .R(w_reset_n),
    .Q(\pulse_gen/o_pulse_f_8 )
  );
  FDR   \pulse_gen/o_pulse_vf  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/Mcount_r_cnt_vf_val1 ),
    .R(w_reset_n),
    .Q(\pulse_gen/o_pulse_vf_7 )
  );
  FDR   \time_keeper/time_ss/o_roll  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_148 ),
    .R(w_reset_n),
    .Q(\time_keeper/time_ss/o_roll_164 )
  );
  FDR   \time_keeper/time_mm/o_roll  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_154 ),
    .R(w_reset_n),
    .Q(\time_keeper/time_mm/o_roll_163 )
  );
  FDE   \time_keeper/time_pm/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_pm_i_reset_OR_64_o_158 ),
    .D(\time_keeper/i_reset_o_pm_AND_39_o ),
    .Q(\time_keeper/time_pm/o_q_31 )
  );
  FDRE   \time_keeper/time_ss/first_digit/o_q_3  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .D(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_167 ),
    .R(w_reset_n),
    .Q(\time_keeper/time_ss/first_digit/o_q [3])
  );
  FDRE   \time_keeper/time_ss/first_digit/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .D(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .R(w_reset_n),
    .Q(\time_keeper/time_ss/first_digit/o_q [0])
  );
  FDE   \time_keeper/time_ss/first_digit/o_roll_high  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .D(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .Q(\time_keeper/time_ss/first_digit/o_roll_high_144 )
  );
  FDSE   \time_keeper/time_ss/first_digit/o_roll_low  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .D(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .S(w_reset_n),
    .Q(\time_keeper/time_ss/first_digit/o_roll_low_145 )
  );
  FDRE   \time_keeper/time_ss/second_digit/o_q_3  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .D(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_179 ),
    .R(\time_keeper/time_ss/second_digit/_n0037 ),
    .Q(\time_keeper/time_ss/second_digit/o_q [3])
  );
  FDRE   \time_keeper/time_ss/second_digit/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .D(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .R(\time_keeper/time_ss/second_digit/_n0037 ),
    .Q(\time_keeper/time_ss/second_digit/o_q [0])
  );
  FDRE   \time_keeper/time_mm/first_digit/o_q_3  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .D(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_187 ),
    .R(w_reset_n),
    .Q(\time_keeper/time_mm/first_digit/o_q [3])
  );
  FDRE   \time_keeper/time_mm/first_digit/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .D(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .R(w_reset_n),
    .Q(\time_keeper/time_mm/first_digit/o_q [0])
  );
  FDE   \time_keeper/time_mm/first_digit/o_roll_high  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .D(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .Q(\time_keeper/time_mm/first_digit/o_roll_high_150 )
  );
  FDSE   \time_keeper/time_mm/first_digit/o_roll_low  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .D(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .S(w_reset_n),
    .Q(\time_keeper/time_mm/first_digit/o_roll_low_151 )
  );
  FDRE   \time_keeper/time_mm/second_digit/o_q_3  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .D(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_199 ),
    .R(\time_keeper/time_mm/second_digit/_n0037 ),
    .Q(\time_keeper/time_mm/second_digit/o_q [3])
  );
  FDRE   \time_keeper/time_mm/second_digit/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .D(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .R(\time_keeper/time_mm/second_digit/_n0037 ),
    .Q(\time_keeper/time_mm/second_digit/o_q [0])
  );
  FDRE   \wr_sel_control/sel_control/sel/o_q_1  (
    .C(i_clk_BUFGP_0),
    .CE(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .D(\wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .R(\wr_sel_control/sel_control/sel/Reset_OR_DriverANDClockEnable ),
    .Q(\wr_sel_control/sel_control/sel/o_q [1])
  );
  FDRE   \wr_sel_control/sel_control/sel/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .D(\wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .R(\wr_sel_control/sel_control/sel/_n0037 ),
    .Q(\wr_sel_control/sel_control/sel/o_q [0])
  );
  FDSE   \time_keeper/time_hh/first_digit/o_roll_low  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .D(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .S(\time_keeper/time_hh/first_digit/_n0037 ),
    .Q(\time_keeper/time_hh/first_digit/o_roll_low_225 )
  );
  FDE   \time_keeper/time_hh/first_digit/o_roll_high  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .D(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .Q(\time_keeper/time_hh/first_digit/o_roll_high_226 )
  );
  FDRE   \time_keeper/time_hh/first_digit/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .D(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_215 ),
    .R(\time_keeper/time_hh/first_digit/_n0037 ),
    .Q(\time_keeper/time_hh/first_digit/o_q [0])
  );
  FDRE   \time_keeper/time_hh/first_digit/o_q_3  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .D(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_216 ),
    .R(\time_keeper/time_hh/first_digit/_n0037 ),
    .Q(\time_keeper/time_hh/first_digit/o_q [3])
  );
  FDE   \time_keeper/time_hh/second_digit/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o ),
    .D(\time_keeper/time_hh/i_reset_o_q[4]_AND_36_o ),
    .Q(\time_keeper/time_hh/second_digit/o_q_10 )
  );
  FDR   \time_keeper/time_hh/o_roll  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o ),
    .R(w_reset_n),
    .Q(\time_keeper/time_hh/o_roll_162 )
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_11  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [11])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_10  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [10])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_9  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [9])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_8  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [8])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_7  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [7])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_6  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [6])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_5  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [5])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_4  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [4])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_3  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [3])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_2  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [2])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_1  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [1])
  );
  FDRE   \lcd_driver/control_fsm/r_cnt_0  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/r_cnt [0])
  );
  FDR   \lcd_driver/control_fsm/state_FSM_FFd1  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state_FSM_FFd1-In3 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/state_FSM_FFd1_323 )
  );
  FDR   \lcd_driver/control_fsm/state_FSM_FFd3  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/state_FSM_FFd3_321 )
  );
  FDR   \lcd_driver/control_fsm/state_FSM_FFd4  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/state_FSM_FFd4_320 )
  );
  FDR   \lcd_driver/control_fsm/state_FSM_FFd2  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/state_FSM_FFd2_322 )
  );
  FDR   \lcd_driver/control_fsm/state_FSM_FFd5  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .R(w_reset_n),
    .Q(\lcd_driver/control_fsm/state_FSM_FFd5_319 )
  );
  FDS   \lcd_driver/control_fsm/state_FSM_FFd6  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .S(w_reset_n),
    .Q(\lcd_driver/control_fsm/state_FSM_FFd6_318 )
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<11>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [10]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [11]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt11 )
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<10>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [9]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt10 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<10>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [9]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [10])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<9>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [8]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt9 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<9>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [8]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [9])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<8>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [7]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt8 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<8>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [7]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [8])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<7>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [6]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt7 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<7>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [6]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [7])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<6>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [5]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt6 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<6>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [5]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [6])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<5>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [4]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt5 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<5>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [4]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [5])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<4>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [3]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt4 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<4>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [3]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [4])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<3>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [2]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt3 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<3>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [2]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [3])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<2>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [1]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt2 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<2>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [1]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [2])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<1>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [0]),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt1 )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<1>  (
    .CI(\lcd_driver/control_fsm/Mcount_r_cnt_cy [0]),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [1])
  );
  XORCY   \lcd_driver/control_fsm/Mcount_r_cnt_xor<0>  (
    .CI(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ),
    .LI(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt )
  );
  MUXCY   \lcd_driver/control_fsm/Mcount_r_cnt_cy<0>  (
    .CI(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ),
    .DI(\wr_sel_control/sel_control/sel/o_q [2]),
    .S(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [0])
  );
  FDE   \lcd_driver/control_fsm/o_val_3  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .D(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<3> ),
    .Q(\lcd_driver/control_fsm/o_val_3_66 )
  );
  FDE   \lcd_driver/control_fsm/o_val_2  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .D(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<2> ),
    .Q(\lcd_driver/control_fsm/o_val_2_65 )
  );
  FDE   \lcd_driver/control_fsm/o_val_1  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .D(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<1> ),
    .Q(\lcd_driver/control_fsm/o_val_1_64 )
  );
  FDE   \lcd_driver/control_fsm/o_val_0  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .D(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<0> ),
    .Q(\lcd_driver/control_fsm/o_val_0_63 )
  );
  FD   \lcd_driver/control_fsm/o_e_trigger  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o ),
    .Q(\lcd_driver/control_fsm/o_e_trigger_61 )
  );
  FDE   \lcd_driver/control_fsm/o_sel_1  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .D(\lcd_driver/control_fsm/_n0291 ),
    .Q(\lcd_driver/control_fsm/o_sel_1_68 )
  );
  FDE   \lcd_driver/control_fsm/o_sel_2  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0384_inv ),
    .D(\lcd_driver/control_fsm/_n0309 ),
    .Q(\lcd_driver/control_fsm/o_sel_2_69 )
  );
  FDE   \lcd_driver/control_fsm/o_sel_0  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .D(\lcd_driver/control_fsm/_n0293 ),
    .Q(\lcd_driver/control_fsm/o_sel_0_67 )
  );
  FDE   \lcd_driver/control_fsm/o_data  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .D(\lcd_driver/control_fsm/_n0289 ),
    .Q(\lcd_driver/control_fsm/o_data_62 )
  );
  FDRE   \lcd_driver/rs_e_output/r_cnt_1  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/rs_e_output/_n0030_inv ),
    .D(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> ),
    .R(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ),
    .Q(\lcd_driver/rs_e_output/r_cnt [1])
  );
  FDRE   \lcd_driver/rs_e_output/r_cnt_0  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/rs_e_output/_n0030_inv ),
    .D(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> ),
    .R(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ),
    .Q(\lcd_driver/rs_e_output/r_cnt [0])
  );
  FDE   \lcd_driver/rs_e_output/o_rs  (
    .C(i_clk_BUFGP_0),
    .CE(\lcd_driver/rs_e_output/_n0027_inv ),
    .D(\lcd_driver/control_fsm/o_data_62 ),
    .Q(\lcd_driver/rs_e_output/o_rs_45 )
  );
  FDE   \lcd_driver/d_output/o_q_7  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> ),
    .Q(\lcd_driver/d_output/o_q [7])
  );
  FDE   \lcd_driver/d_output/o_q_6  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> ),
    .Q(\lcd_driver/d_output/o_q [6])
  );
  FDE   \lcd_driver/d_output/o_q_5  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> ),
    .Q(\lcd_driver/d_output/o_q [5])
  );
  FDE   \lcd_driver/d_output/o_q_4  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> ),
    .Q(\lcd_driver/d_output/o_q [4])
  );
  FDE   \lcd_driver/d_output/o_q_3  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> ),
    .Q(\lcd_driver/d_output/o_q [3])
  );
  FDE   \lcd_driver/d_output/o_q_2  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> ),
    .Q(\lcd_driver/d_output/o_q [2])
  );
  FDE   \lcd_driver/d_output/o_q_1  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> ),
    .Q(\lcd_driver/d_output/o_q [1])
  );
  FDE   \lcd_driver/d_output/o_q_0  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_vf_7 ),
    .D(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> ),
    .Q(\lcd_driver/d_output/o_q [0])
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \btn_debouncer/sel_inc_btn/o_pulse1  (
    .I0(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ),
    .I1(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .O(w_sel_inc_pulse)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \btn_debouncer/val_inc_btn/o_pulse1  (
    .I0(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .O(w_val_inc_pulse)
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \wr_sel_control/wr_control/i_reset_o_toggle_AND_42_o1  (
    .I0(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I1(i_reset_btn_IBUF_1),
    .O(\wr_sel_control/wr_control/i_reset_o_toggle_AND_42_o )
  );
  LUT4 #(
    .INIT ( 16'h5D55 ))
  \wr_sel_control/wr_control/w_ena_p2t_i_reset_OR_65_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\btn_debouncer/wr_btn/dff_pq0/o_q_57 ),
    .I2(\btn_debouncer/wr_btn/dff_pq1/o_q_56 ),
    .I3(\pulse_gen/o_pulse_f_8 ),
    .O(\wr_sel_control/wr_control/w_ena_p2t_i_reset_OR_65_o )
  );
  LUT5 #(
    .INIT ( 32'h55D55555 ))
  \wr_sel_control/sel_control/i_reset_w_roll_htl_OR_68_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .I2(\wr_sel_control/sel_control/sel/o_q [1]),
    .I3(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ),
    .I4(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\wr_sel_control/sel_control/i_reset_w_roll_htl_OR_68_o )
  );
  LUT4 #(
    .INIT ( 16'h1101 ))
  \wr_sel_control/sel_control/w_roll_lth1  (
    .I0(\wr_sel_control/sel_control/sel/o_q [0]),
    .I1(\wr_sel_control/sel_control/sel/o_q [1]),
    .I2(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .I3(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ),
    .O(\wr_sel_control/sel_control/w_roll_lth )
  );
  LUT6 #(
    .INIT ( 64'h75FF757555555555 ))
  \wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\btn_debouncer/sel_dec_btn/dff_pq1/o_q_48 ),
    .I2(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_49 ),
    .I3(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ),
    .I4(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .I5(\pulse_gen/o_pulse_f_8 ),
    .O(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o )
  );
  LUT6 #(
    .INIT ( 64'h9AAAAAAAAAAAAAAA ))
  \pulse_gen/Maccum_r_cnt_n_xor<6>11  (
    .I0(\pulse_gen/r_cnt_n [6]),
    .I1(\pulse_gen/Maccum_r_cnt_n_xor<2>11 ),
    .I2(\pulse_gen/r_cnt_n [3]),
    .I3(\pulse_gen/r_cnt_n [4]),
    .I4(\pulse_gen/r_cnt_n [5]),
    .I5(\pulse_gen/r_cnt_n [2]),
    .O(\pulse_gen/Result<6>1 )
  );
  LUT5 #(
    .INIT ( 32'h9AAAAAAA ))
  \pulse_gen/Maccum_r_cnt_n_xor<5>11  (
    .I0(\pulse_gen/r_cnt_n [5]),
    .I1(\pulse_gen/Maccum_r_cnt_n_xor<2>11 ),
    .I2(\pulse_gen/r_cnt_n [3]),
    .I3(\pulse_gen/r_cnt_n [4]),
    .I4(\pulse_gen/r_cnt_n [2]),
    .O(\pulse_gen/Result<5>1 )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \pulse_gen/Mcount_r_cnt_vf_xor<2>11  (
    .I0(\pulse_gen/r_cnt_vf [2]),
    .I1(\pulse_gen/r_cnt_vf [0]),
    .I2(\pulse_gen/r_cnt_vf [1]),
    .O(\pulse_gen/Result [2])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \pulse_gen/Mcount_r_cnt_vf_xor<3>11  (
    .I0(\pulse_gen/r_cnt_vf [3]),
    .I1(\pulse_gen/r_cnt_vf [0]),
    .I2(\pulse_gen/r_cnt_vf [1]),
    .I3(\pulse_gen/r_cnt_vf [2]),
    .O(\pulse_gen/Result [3])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \pulse_gen/Mcount_r_cnt_vf_val11  (
    .I0(\pulse_gen/r_cnt_vf [0]),
    .I1(\pulse_gen/r_cnt_vf [1]),
    .I2(\pulse_gen/r_cnt_vf [2]),
    .I3(\pulse_gen/r_cnt_vf [3]),
    .O(\pulse_gen/Mcount_r_cnt_vf_val1 )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \pulse_gen/r_cnt_n_val2  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/r_cnt_n_val1_76 ),
    .O(\pulse_gen/r_cnt_n_val )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pulse_gen/Mcount_r_cnt_vf_xor<1>11  (
    .I0(\pulse_gen/r_cnt_vf [1]),
    .I1(\pulse_gen/r_cnt_vf [0]),
    .O(\pulse_gen/Result [1])
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \pulse_gen/Maccum_r_cnt_n_lut<0>1  (
    .I0(\pulse_gen/r_cnt_n [0]),
    .I1(\pulse_gen/o_pulse_f_8 ),
    .O(\pulse_gen/Maccum_r_cnt_n_lut [0])
  );
  LUT5 #(
    .INIT ( 32'hFF75FF55 ))
  \time_keeper/w_ena_mm_i_reset_OR_57_o2  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\wr_sel_control/sel_control/sel/o_q [1]),
    .I2(\wr_sel_control/sel_control/sel/o_q [0]),
    .I3(\time_keeper/w_ena_mm_i_reset_OR_57_o1 ),
    .I4(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .O(\time_keeper/w_ena_mm_i_reset_OR_57_o )
  );
  LUT6 #(
    .INIT ( 64'h555FDDDF5555DDDD ))
  \time_keeper/w_ena_ss_i_reset_OR_56_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/o_pulse_n_9 ),
    .I2(\wr_sel_control/sel_control/sel/o_q [1]),
    .I3(\wr_sel_control/sel_control/sel/o_q [0]),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I5(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .O(\time_keeper/w_ena_ss_i_reset_OR_56_o )
  );
  LUT6 #(
    .INIT ( 64'hDDFD55F5DDDD5555 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_mm/o_roll_163 ),
    .I2(\wr_sel_control/sel_control/sel/o_q [1]),
    .I3(\wr_sel_control/sel_control/sel/o_q [0]),
    .I4(\time_keeper/w_ena_mm_i_reset_OR_57_o1 ),
    .I5(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .O(\time_keeper/w_ena_hh_i_reset_OR_63_o )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \time_keeper/w_ena_mm_i_reset_OR_57_o11  (
    .I0(\time_keeper/time_ss/o_roll_164 ),
    .I1(\wr_sel_control/wr_control/p2t/o_q_1_462 ),
    .I2(\pulse_gen/o_pulse_n_9 ),
    .O(\time_keeper/w_ena_mm_i_reset_OR_57_o1 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \time_keeper/i_reset_o_pm_AND_39_o1  (
    .I0(\time_keeper/time_pm/o_q_31 ),
    .I1(i_reset_btn_IBUF_1),
    .O(\time_keeper/i_reset_o_pm_AND_39_o )
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .I0(\time_keeper/time_ss/first_digit/o_q [0]),
    .I1(\time_keeper/time_ss/first_digit/o_q [1]),
    .I2(\time_keeper/time_ss/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  LUT5 #(
    .INIT ( 32'h02000002 ))
  \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .I0(\time_keeper/time_ss/first_digit/o_q [0]),
    .I1(\time_keeper/time_ss/first_digit/o_q [1]),
    .I2(\time_keeper/time_ss/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \time_keeper/time_ss/first_digit/_n00461  (
    .I0(\time_keeper/time_ss/first_digit/o_q [3]),
    .I1(\time_keeper/time_ss/first_digit/o_q [2]),
    .I2(\time_keeper/time_ss/first_digit/o_q [1]),
    .I3(\time_keeper/time_ss/first_digit/o_q [0]),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .O(\time_keeper/time_ss/first_digit/_n0046 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \time_keeper/time_ss/second_digit/_n00371  (
    .I0(\time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o ),
    .I1(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_ss/second_digit/_n0037 )
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .I0(\time_keeper/time_mm/first_digit/o_q [0]),
    .I1(\time_keeper/time_mm/first_digit/o_q [1]),
    .I2(\time_keeper/time_mm/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_mm/first_digit/o_q [3]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  LUT5 #(
    .INIT ( 32'h02000002 ))
  \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .I0(\time_keeper/time_mm/first_digit/o_q [0]),
    .I1(\time_keeper/time_mm/first_digit/o_q [1]),
    .I2(\time_keeper/time_mm/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_mm/first_digit/o_q [3]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \time_keeper/time_mm/first_digit/_n00461  (
    .I0(\time_keeper/time_mm/first_digit/o_q [3]),
    .I1(\time_keeper/time_mm/first_digit/o_q [2]),
    .I2(\time_keeper/time_mm/first_digit/o_q [1]),
    .I3(\time_keeper/time_mm/first_digit/o_q [0]),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .O(\time_keeper/time_mm/first_digit/_n0046 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \time_keeper/time_mm/second_digit/_n00371  (
    .I0(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ),
    .I1(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/_n0037 )
  );
  LUT5 #(
    .INIT ( 32'h02000002 ))
  \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .I0(\time_keeper/time_hh/first_digit/o_q [0]),
    .I1(\time_keeper/time_hh/first_digit/o_q [1]),
    .I2(\time_keeper/time_hh/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_hh/first_digit/o_q [3]),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  LUT5 #(
    .INIT ( 32'h01000001 ))
  \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .I0(\time_keeper/time_hh/first_digit/o_q [0]),
    .I1(\time_keeper/time_hh/first_digit/o_q [1]),
    .I2(\time_keeper/time_hh/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_hh/first_digit/o_q [3]),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  LUT6 #(
    .INIT ( 64'hFFDDFFF555555555 ))
  \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_hh/first_digit/o_roll_high_226 ),
    .I2(\time_keeper/time_hh/first_digit/o_roll_low_225 ),
    .I3(\time_keeper/time_hh/o_roll_162 ),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000001 ))
  \time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o1  (
    .I0(\time_keeper/time_hh/first_digit/o_q [1]),
    .I1(\time_keeper/time_hh/first_digit/o_q [2]),
    .I2(\time_keeper/time_hh/first_digit/o_q [3]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_hh/first_digit/o_q [0]),
    .I5(\time_keeper/time_hh/second_digit/o_q_10 ),
    .O(\time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \time_keeper/time_hh/i_reset_o_q[4]_AND_36_o1  (
    .I0(\time_keeper/time_hh/second_digit/o_q_10 ),
    .I1(i_reset_btn_IBUF_1),
    .O(\time_keeper/time_hh/i_reset_o_q[4]_AND_36_o )
  );
  LUT6 #(
    .INIT ( 64'h0080000000000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/r_cnt [0]),
    .I2(\lcd_driver/control_fsm/r_cnt [6]),
    .I3(\lcd_driver/control_fsm/r_cnt [5]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>2 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o )
  );
  LUT5 #(
    .INIT ( 32'h02200202 ))
  \lcd_driver/control_fsm/state__n02911  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .O(\lcd_driver/control_fsm/_n0291 )
  );
  LUT6 #(
    .INIT ( 64'h0001010101010100 ))
  \lcd_driver/control_fsm/_n0384_inv1  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/_n0384_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFEFEFFFEFEFF ))
  \lcd_driver/control_fsm/_n0483_inv1  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(\lcd_driver/control_fsm/_n0483_inv )
  );
  LUT6 #(
    .INIT ( 64'h333255553332555E ))
  \lcd_driver/control_fsm/Mmux_state[5]_PWR_17_o_MUX_197_o11  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o )
  );
  LUT6 #(
    .INIT ( 64'h1111111511111114 ))
  \lcd_driver/control_fsm/_n0366_inv1  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(\lcd_driver/control_fsm/_n0366_inv )
  );
  LUT5 #(
    .INIT ( 32'h00040000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11  (
    .I0(\lcd_driver/control_fsm/r_cnt [9]),
    .I1(\lcd_driver/control_fsm/r_cnt [8]),
    .I2(\lcd_driver/control_fsm/r_cnt [11]),
    .I3(\lcd_driver/control_fsm/r_cnt [7]),
    .I4(\lcd_driver/control_fsm/r_cnt [3]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 )
  );
  LUT5 #(
    .INIT ( 32'h00010000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11  (
    .I0(\lcd_driver/control_fsm/r_cnt [3]),
    .I1(\lcd_driver/control_fsm/r_cnt [7]),
    .I2(\lcd_driver/control_fsm/r_cnt [4]),
    .I3(\lcd_driver/control_fsm/r_cnt [10]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>1_231 )
  );
  LUT5 #(
    .INIT ( 32'h00080000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11  (
    .I0(\lcd_driver/control_fsm/r_cnt [7]),
    .I1(\lcd_driver/control_fsm/r_cnt [3]),
    .I2(\lcd_driver/control_fsm/r_cnt [10]),
    .I3(\lcd_driver/control_fsm/r_cnt [4]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>1 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEAAA ))
  \lcd_driver/control_fsm/state__n02891  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .O(\lcd_driver/control_fsm/_n0289 )
  );
  LUT5 #(
    .INIT ( 32'h555F5D5F ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In1211  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In121 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF8288 ))
  \lcd_driver/control_fsm/state__n02931  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .O(\lcd_driver/control_fsm/_n0293 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/r_cnt [6]),
    .I2(\lcd_driver/control_fsm/r_cnt [0]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>2 )
  );
  LUT5 #(
    .INIT ( 32'h20000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4  (
    .I0(\lcd_driver/control_fsm/r_cnt [7]),
    .I1(\lcd_driver/control_fsm/r_cnt [3]),
    .I2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>2 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>1 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31  (
    .I0(\lcd_driver/control_fsm/r_cnt [11]),
    .I1(\lcd_driver/control_fsm/r_cnt [9]),
    .I2(\lcd_driver/control_fsm/r_cnt [8]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 )
  );
  LUT5 #(
    .INIT ( 32'h01000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/r_cnt [0]),
    .I2(\lcd_driver/control_fsm/r_cnt [5]),
    .I3(\lcd_driver/control_fsm/r_cnt [6]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>2 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21  (
    .I0(\lcd_driver/control_fsm/r_cnt [2]),
    .I1(\lcd_driver/control_fsm/r_cnt [4]),
    .I2(\lcd_driver/control_fsm/r_cnt [10]),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>2 )
  );
  LUT3 #(
    .INIT ( 8'h02 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21  (
    .I0(\lcd_driver/control_fsm/r_cnt [4]),
    .I1(\lcd_driver/control_fsm/r_cnt [10]),
    .I2(\lcd_driver/control_fsm/r_cnt [2]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>2 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [10]),
    .I1(\lcd_driver/control_fsm/r_cnt [2]),
    .I2(\lcd_driver/control_fsm/r_cnt [4]),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>1 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11  (
    .I0(\lcd_driver/control_fsm/r_cnt [0]),
    .I1(\lcd_driver/control_fsm/r_cnt [1]),
    .I2(\lcd_driver/control_fsm/r_cnt [5]),
    .I3(\lcd_driver/control_fsm/r_cnt [6]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>1 )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21  (
    .I0(\lcd_driver/control_fsm/r_cnt [0]),
    .I1(\lcd_driver/control_fsm/r_cnt [1]),
    .I2(\lcd_driver/control_fsm/r_cnt [5]),
    .I3(\lcd_driver/control_fsm/r_cnt [6]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>2 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In211  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In21 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \lcd_driver/control_fsm/state<5>41  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .O(\lcd_driver/control_fsm/state<5>4 )
  );
  LUT4 #(
    .INIT ( 16'hFFFD ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>111  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \lcd_driver/control_fsm/state__n03091  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/_n0309 )
  );
  LUT4 #(
    .INIT ( 16'h5D55 ))
  \lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .I2(\lcd_driver/rs_e_output/o_e_46 ),
    .I3(\lcd_driver/control_fsm/o_e_trigger_61 ),
    .O(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable )
  );
  LUT3 #(
    .INIT ( 8'hEA ))
  \lcd_driver/rs_e_output/_n0030_inv1  (
    .I0(\lcd_driver/rs_e_output/o_e_46 ),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .I2(\lcd_driver/control_fsm/o_e_trigger_61 ),
    .O(\lcd_driver/rs_e_output/_n0030_inv )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \lcd_driver/rs_e_output/_n0027_inv1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .I2(\lcd_driver/control_fsm/o_e_trigger_61 ),
    .O(\lcd_driver/rs_e_output/_n0027_inv )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \lcd_driver/rs_e_output/Madd_r_cnt[1]_GND_18_o_add_2_OUT_xor<1>11  (
    .I0(\lcd_driver/rs_e_output/r_cnt [1]),
    .I1(\lcd_driver/rs_e_output/r_cnt [0]),
    .O(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h66647720 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2>1  (
    .I0(\lcd_driver/control_fsm/o_data_62 ),
    .I1(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I2(\lcd_driver/control_fsm/o_sel_1_68 ),
    .I3(\lcd_driver/control_fsm/o_val_2_65 ),
    .I4(\lcd_driver/control_fsm/o_sel_2_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h36B477A0 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0>1  (
    .I0(\lcd_driver/control_fsm/o_data_62 ),
    .I1(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I2(\lcd_driver/control_fsm/o_sel_1_68 ),
    .I3(\lcd_driver/control_fsm/o_val_0_63 ),
    .I4(\lcd_driver/control_fsm/o_sel_2_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> )
  );
  LUT6 #(
    .INIT ( 64'h227522FD727072F8 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3>1  (
    .I0(\lcd_driver/control_fsm/o_data_62 ),
    .I1(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I2(\lcd_driver/control_fsm/o_val_3_66 ),
    .I3(\lcd_driver/control_fsm/o_sel_1_68 ),
    .I4(\lcd_driver/control_fsm/o_val_0_63 ),
    .I5(\lcd_driver/control_fsm/o_sel_2_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> )
  );
  LUT6 #(
    .INIT ( 64'h5272507057770020 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT21  (
    .I0(\lcd_driver/control_fsm/o_data_62 ),
    .I1(\lcd_driver/control_fsm/o_sel_1_68 ),
    .I2(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I3(\lcd_driver/control_fsm/o_val_0_63 ),
    .I4(\lcd_driver/control_fsm/o_val_1_64 ),
    .I5(\lcd_driver/control_fsm/o_sel_2_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> )
  );
  LUT4 #(
    .INIT ( 16'h5510 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT61  (
    .I0(\lcd_driver/control_fsm/o_sel_1_68 ),
    .I1(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I2(\lcd_driver/control_fsm/o_sel_2_69 ),
    .I3(\lcd_driver/control_fsm/o_data_62 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> )
  );
  LUT5 #(
    .INIT ( 32'h8233C666 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT51  (
    .I0(\lcd_driver/control_fsm/o_data_62 ),
    .I1(\lcd_driver/control_fsm/o_sel_1_68 ),
    .I2(\lcd_driver/control_fsm/o_val_0_63 ),
    .I3(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I4(\lcd_driver/control_fsm/o_sel_2_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> )
  );
  LUT4 #(
    .INIT ( 16'hBA10 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT71  (
    .I0(\lcd_driver/control_fsm/o_data_62 ),
    .I1(\lcd_driver/control_fsm/o_sel_2_69 ),
    .I2(\lcd_driver/control_fsm/o_sel_0_67 ),
    .I3(\lcd_driver/control_fsm/o_sel_1_68 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h1 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT81  (
    .I0(\lcd_driver/control_fsm/o_sel_2_69 ),
    .I1(\lcd_driver/control_fsm/o_data_62 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \lcd_driver/lcd_pulse_gen/i_clock_pulse_i_inc_pulse_OR_71_o_SW0  (
    .I0(\btn_debouncer/val_dec_btn/dff_pq1/o_q_52 ),
    .I1(\btn_debouncer/val_dec_btn/dff_pq0/o_q_53 ),
    .O(N0)
  );
  LUT6 #(
    .INIT ( 64'hDDDD5D5588880800 ))
  \lcd_driver/lcd_pulse_gen/i_clock_pulse_i_inc_pulse_OR_71_o  (
    .I0(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I1(\pulse_gen/o_pulse_f_8 ),
    .I2(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I3(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I4(N0),
    .I5(\pulse_gen/o_pulse_n_9 ),
    .O(\lcd_driver/lcd_pulse_gen/i_clock_pulse_i_inc_pulse_OR_71_o_70 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \pulse_gen/r_cnt_n_val1_SW0  (
    .I0(\pulse_gen/r_cnt_n [1]),
    .I1(\pulse_gen/r_cnt_n [0]),
    .O(N2)
  );
  LUT6 #(
    .INIT ( 64'h0000000000008000 ))
  \pulse_gen/r_cnt_n_val1  (
    .I0(\pulse_gen/r_cnt_n [6]),
    .I1(\pulse_gen/r_cnt_n [5]),
    .I2(\pulse_gen/r_cnt_n [4]),
    .I3(\pulse_gen/r_cnt_n [3]),
    .I4(\pulse_gen/r_cnt_n [2]),
    .I5(N2),
    .O(\pulse_gen/r_cnt_n_val1_76 )
  );
  LUT6 #(
    .INIT ( 64'h0000800000000000 ))
  \pulse_gen/r_cnt_f_val11  (
    .I0(\pulse_gen/r_cnt_f [3]),
    .I1(\pulse_gen/r_cnt_f [12]),
    .I2(\pulse_gen/r_cnt_f [11]),
    .I3(\pulse_gen/r_cnt_f [9]),
    .I4(\pulse_gen/r_cnt_f [0]),
    .I5(\pulse_gen/r_cnt_f [1]),
    .O(\pulse_gen/r_cnt_f_val11_341 )
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \pulse_gen/r_cnt_f_val12  (
    .I0(\pulse_gen/r_cnt_f [4]),
    .I1(\pulse_gen/r_cnt_f [2]),
    .I2(\pulse_gen/r_cnt_f [5]),
    .I3(\pulse_gen/r_cnt_f [6]),
    .I4(\pulse_gen/r_cnt_f [7]),
    .I5(\pulse_gen/r_cnt_f [8]),
    .O(\pulse_gen/r_cnt_f_val12_342 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \pulse_gen/r_cnt_f_val13  (
    .I0(\pulse_gen/r_cnt_f [10]),
    .I1(\pulse_gen/r_cnt_f_val12_342 ),
    .I2(\pulse_gen/r_cnt_f_val11_341 ),
    .O(\pulse_gen/r_cnt_f_val1 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_SW0  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_ss/second_digit/o_q [3]),
    .I2(\time_keeper/time_ss/first_digit/o_q [1]),
    .I3(\time_keeper/time_ss/first_digit/o_q [2]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000001 ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o  (
    .I0(N4),
    .I1(\time_keeper/time_ss/second_digit/o_q [0]),
    .I2(\time_keeper/time_ss/second_digit/o_q [2]),
    .I3(\time_keeper/time_ss/first_digit/o_q [3]),
    .I4(\time_keeper/time_ss/first_digit/o_q [0]),
    .I5(\time_keeper/w_inc ),
    .O(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_148 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_SW0  (
    .I0(\time_keeper/time_mm/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/first_digit/o_q [2]),
    .I2(\time_keeper/time_mm/first_digit/o_q [1]),
    .I3(\time_keeper/time_mm/second_digit/o_q [3]),
    .O(N6)
  );
  LUT6 #(
    .INIT ( 64'h4000000000000001 ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o  (
    .I0(N6),
    .I1(\time_keeper/time_mm/second_digit/o_q [0]),
    .I2(\time_keeper/time_mm/first_digit/o_q [0]),
    .I3(\time_keeper/time_mm/first_digit/o_q [3]),
    .I4(\time_keeper/time_mm/second_digit/o_q [2]),
    .I5(\time_keeper/w_inc ),
    .O(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_154 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o_SW0  (
    .I0(\time_keeper/time_mm/o_roll_163 ),
    .I1(\time_keeper/time_hh/o_roll_162 ),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'hFFD5D5D5D5D5D5D5 ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o  (
    .I0(i_reset_btn_IBUF_1),
    .I1(N8),
    .I2(\time_keeper/w_ena_mm_i_reset_OR_57_o1 ),
    .I3(\wr_sel_control/sel_control/sel/o_q [1]),
    .I4(\wr_sel_control/sel_control/sel/o_q [0]),
    .I5(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .O(\time_keeper/w_ena_pm_i_reset_OR_64_o_158 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_ss/second_digit/_n0046_SW0  (
    .I0(\time_keeper/time_ss/second_digit/o_q [3]),
    .I1(\time_keeper/time_ss/second_digit/o_q [2]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \time_keeper/time_ss/second_digit/_n0046  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_ss/second_digit/o_q [0]),
    .I2(N10),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_ss/w_roll_lth ),
    .I5(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_ss/second_digit/_n0046_181 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_mm/second_digit/_n0046_SW0  (
    .I0(\time_keeper/time_mm/second_digit/o_q [2]),
    .I1(\time_keeper/time_mm/second_digit/o_q [3]),
    .O(N12)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \time_keeper/time_mm/second_digit/_n0046  (
    .I0(\time_keeper/time_mm/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/second_digit/o_q [0]),
    .I2(N12),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_mm/w_roll_lth ),
    .I5(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/_n0046_201 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_hh/first_digit/_n0046_SW0  (
    .I0(\time_keeper/time_hh/first_digit/o_q [2]),
    .I1(\time_keeper/time_hh/first_digit/o_q [3]),
    .O(N14)
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \time_keeper/time_hh/first_digit/_n0046  (
    .I0(\time_keeper/time_hh/first_digit/o_q [1]),
    .I1(\time_keeper/time_hh/first_digit/o_q [0]),
    .I2(N14),
    .I3(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/_n0046_212 )
  );
  LUT5 #(
    .INIT ( 32'h0F33F002 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In11  (
    .I0(\lcd_driver/lcd_pulse_gen/o_update_pulse_60 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In11_349 )
  );
  LUT6 #(
    .INIT ( 64'h044004FF04400440 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In12  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5-In11_349 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In12_350 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In15  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In16_352 )
  );
  LUT6 #(
    .INIT ( 64'h00800F8F55D55FDF ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In16  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In17_353 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA8A8A8 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In17  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd5-In121 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5-In16_352 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5-In17_353 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5-In15_351 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In1 )
  );
  LUT6 #(
    .INIT ( 64'h8085888580AF88AF ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In11  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In11_354 )
  );
  LUT4 #(
    .INIT ( 16'h0444 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In12  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In12_355 )
  );
  LUT6 #(
    .INIT ( 64'hEEEEEEAAECECECA0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In18  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4-In13_356 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5-In121 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd4-In11_354 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4-In17_358 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In1 )
  );
  LUT6 #(
    .INIT ( 64'hD0205020D0005000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In1  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In1_359 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In3  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In3_361 )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In4  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In4_362 )
  );
  LUT6 #(
    .INIT ( 64'hC4C0C0C044000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In6  (
    .I0(\lcd_driver/control_fsm/r_cnt [2]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6-In3_361 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6-In4_362 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>1_231 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6-In5_363 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In6_364 )
  );
  LUT6 #(
    .INIT ( 64'hDDDDDDDD5D5D5D55 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In7  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6-In2_360 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6-In6_364 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd6-In1_359 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In7_365 )
  );
  LUT5 #(
    .INIT ( 32'hF5755555 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In8  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In8_366 )
  );
  LUT3 #(
    .INIT ( 8'hCE ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In9  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6-In8_366 ),
    .I2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In9_367 )
  );
  LUT6 #(
    .INIT ( 64'h17579FDF3777BFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In10  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In10_368 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA888 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In11  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6-In9_367 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6-In10_368 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6-In7_365 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In )
  );
  LUT6 #(
    .INIT ( 64'h0040400000004000 ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In31  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In31_369 )
  );
  LUT5 #(
    .INIT ( 32'h55DD57DF ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In32  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In32_370 )
  );
  LUT5 #(
    .INIT ( 32'hFAFAF0F8 ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In33  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd1-In31_369 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd1-In32_370 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In3 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFBA2AFFFEAFEF ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 )
  );
  LUT3 #(
    .INIT ( 8'h10 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_372 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>25  (
    .I0(\time_keeper/time_hh/first_digit/o_q [0]),
    .I1(\time_keeper/time_mm/first_digit/o_q [0]),
    .I2(\time_keeper/time_ss/second_digit/o_q [0]),
    .I3(\time_keeper/time_mm/second_digit/o_q [0]),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22 )
  );
  LUT6 #(
    .INIT ( 64'h333B000000080000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>27  (
    .I0(\time_keeper/time_ss/first_digit/o_q [0]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_372 ),
    .I5(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_374 )
  );
  LUT3 #(
    .INIT ( 8'h20 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28  (
    .I0(\time_keeper/time_hh/second_digit/o_q_10 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24 )
  );
  LUT6 #(
    .INIT ( 64'h0030203C0000200C ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>29  (
    .I0(\time_keeper/time_pm/o_q_31 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>25_376 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFECA0 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>210  (
    .I0(\lcd_driver/control_fsm/o_val_0_63 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 ),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>25_376 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_374 ),
    .O(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<0> )
  );
  LUT4 #(
    .INIT ( 16'h43FF ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In31  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\pulse_gen/o_pulse_vf_7 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In31_377 )
  );
  LUT6 #(
    .INIT ( 64'hFF93FFB3FF9BFFBB ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In32  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3-In31_377 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In32_378 )
  );
  LUT5 #(
    .INIT ( 32'h80220022 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In33  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In33_379 )
  );
  LUT4 #(
    .INIT ( 16'h0200 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In34  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In34_380 )
  );
  LUT5 #(
    .INIT ( 32'hEEECAAA0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In35  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3-In33_379 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3-In34_380 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3-In32_378 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In3 )
  );
  LUT6 #(
    .INIT ( 64'h8A8A2A2AA8AA2028 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In31  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In31_381 )
  );
  LUT4 #(
    .INIT ( 16'h0E0F ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In32  (
    .I0(\lcd_driver/control_fsm/r_cnt [0]),
    .I1(\lcd_driver/control_fsm/r_cnt [1]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In32_382 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In33  (
    .I0(\lcd_driver/control_fsm/r_cnt [11]),
    .I1(\lcd_driver/control_fsm/r_cnt [3]),
    .I2(\lcd_driver/control_fsm/r_cnt [10]),
    .I3(\lcd_driver/control_fsm/r_cnt [0]),
    .I4(\lcd_driver/control_fsm/r_cnt [1]),
    .I5(\lcd_driver/control_fsm/r_cnt [2]),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In33_383 )
  );
  LUT6 #(
    .INIT ( 64'hFFFEFFFEFFFEFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In34  (
    .I0(\lcd_driver/control_fsm/r_cnt [8]),
    .I1(\lcd_driver/control_fsm/r_cnt [9]),
    .I2(\lcd_driver/control_fsm/r_cnt [4]),
    .I3(\lcd_driver/control_fsm/r_cnt [7]),
    .I4(\lcd_driver/control_fsm/r_cnt [6]),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In34_384 )
  );
  LUT3 #(
    .INIT ( 8'hD5 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In35  (
    .I0(\lcd_driver/control_fsm/r_cnt [5]),
    .I1(\lcd_driver/control_fsm/r_cnt [6]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In35_385 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF5554 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In36  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2-In33_383 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2-In34_384 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2-In35_385 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd2-In32_382 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In36_386 )
  );
  LUT6 #(
    .INIT ( 64'h111F333F1F1F3F3F ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In37  (
    .I0(\lcd_driver/control_fsm/r_cnt [6]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>2 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>1_231 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>2 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In37_387 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In38  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In38_388 )
  );
  LUT6 #(
    .INIT ( 64'h5555444455550040 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In39  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2-In38_388 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd2-In36_386 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd2-In37_387 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In39_389 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In310  (
    .I0(\lcd_driver/control_fsm/r_cnt [2]),
    .I1(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In310_390 )
  );
  LUT6 #(
    .INIT ( 64'h7575555575775557 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In311  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd2-In310_390 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In311_391 )
  );
  LUT6 #(
    .INIT ( 64'hFAFAFAFAFAD8FA50 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In315  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2-In31_381 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2-In311_391 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd2-In314_392 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd2-In39_389 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In3 )
  );
  LUT5 #(
    .INIT ( 32'h0000A0C0 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>261  (
    .I0(\time_keeper/time_ss/second_digit/o_q [3]),
    .I1(\time_keeper/time_mm/first_digit/o_q [3]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>262  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\time_keeper/time_hh/first_digit/o_q [3]),
    .I2(\time_keeper/time_mm/second_digit/o_q [3]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>261_394 )
  );
  LUT5 #(
    .INIT ( 32'h0000A0C0 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241  (
    .I0(\time_keeper/time_ss/second_digit/o_q [2]),
    .I1(\time_keeper/time_mm/first_digit/o_q [2]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_395 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>242  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\time_keeper/time_hh/first_digit/o_q [2]),
    .I2(\time_keeper/time_mm/second_digit/o_q [2]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>242_396 )
  );
  LUT6 #(
    .INIT ( 64'hBBBB3333AABA0030 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>243  (
    .I0(\lcd_driver/control_fsm/o_val_2_65 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>242_396 ),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_228 ),
    .I5(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_395 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>243_397 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA888 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>245  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I1(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>244_398 ),
    .I2(\time_keeper/time_ss/first_digit/o_q [2]),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>243_397 ),
    .O(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h0000A0C0 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/first_digit/o_q [1]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_399 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\time_keeper/time_hh/first_digit/o_q [1]),
    .I2(\time_keeper/time_mm/second_digit/o_q [1]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>223_400 )
  );
  LUT6 #(
    .INIT ( 64'hBBBB3333AABA0030 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>223  (
    .I0(\lcd_driver/control_fsm/o_val_1_64 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>223_400 ),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_228 ),
    .I5(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_399 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>224_401 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFA888 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I1(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_402 ),
    .I2(\time_keeper/time_ss/first_digit/o_q [1]),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>224_401 ),
    .O(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<1> )
  );
  IBUF   i_reset_btn_IBUF (
    .I(i_reset_btn),
    .O(i_reset_btn_IBUF_1)
  );
  IBUF   i_wr_btn_IBUF (
    .I(i_wr_btn),
    .O(i_wr_btn_IBUF_2)
  );
  IBUF   i_val_inc_btn_IBUF (
    .I(i_val_inc_btn),
    .O(i_val_inc_btn_IBUF_3)
  );
  IBUF   i_val_dec_btn_IBUF (
    .I(i_val_dec_btn),
    .O(i_val_dec_btn_IBUF_4)
  );
  IBUF   i_sel_inc_btn_IBUF (
    .I(i_sel_inc_btn),
    .O(i_sel_inc_btn_IBUF_5)
  );
  IBUF   i_sel_dec_btn_IBUF (
    .I(i_sel_dec_btn),
    .O(i_sel_dec_btn_IBUF_6)
  );
  OBUF   o_d_7_OBUF (
    .I(\lcd_driver/d_output/o_q [7]),
    .O(o_d[7])
  );
  OBUF   o_d_6_OBUF (
    .I(\lcd_driver/d_output/o_q [6]),
    .O(o_d[6])
  );
  OBUF   o_d_5_OBUF (
    .I(\lcd_driver/d_output/o_q [5]),
    .O(o_d[5])
  );
  OBUF   o_d_4_OBUF (
    .I(\lcd_driver/d_output/o_q [4]),
    .O(o_d[4])
  );
  OBUF   o_d_3_OBUF (
    .I(\lcd_driver/d_output/o_q [3]),
    .O(o_d[3])
  );
  OBUF   o_d_2_OBUF (
    .I(\lcd_driver/d_output/o_q [2]),
    .O(o_d[2])
  );
  OBUF   o_d_1_OBUF (
    .I(\lcd_driver/d_output/o_q [1]),
    .O(o_d[1])
  );
  OBUF   o_d_0_OBUF (
    .I(\lcd_driver/d_output/o_q [0]),
    .O(o_d[0])
  );
  OBUF   o_rs_OBUF (
    .I(\lcd_driver/rs_e_output/o_rs_45 ),
    .O(o_rs)
  );
  OBUF   o_e_OBUF (
    .I(\lcd_driver/rs_e_output/o_e_46 ),
    .O(o_e)
  );
  OBUF   w_wr_OBUF (
    .I(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(w_wr)
  );
  OBUF   o_hz_OBUF (
    .I(\time_keeper/time_ss/first_digit/o_q [0]),
    .O(o_hz)
  );
  FDS   \lcd_driver/lcd_pulse_gen/o_update_pulse  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/lcd_pulse_gen/o_update_pulse_glue_rst_422 ),
    .S(\lcd_driver/lcd_pulse_gen/i_clock_pulse_i_inc_pulse_OR_71_o_70 ),
    .Q(\lcd_driver/lcd_pulse_gen/o_update_pulse_60 )
  );
  FDR   \lcd_driver/rs_e_output/o_e  (
    .C(i_clk_BUFGP_0),
    .D(\lcd_driver/rs_e_output/o_e_glue_set_423 ),
    .R(w_reset_n),
    .Q(\lcd_driver/rs_e_output/o_e_46 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<11>_rt  (
    .I0(\pulse_gen/r_cnt_f [11]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<11>_rt_424 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<10>_rt  (
    .I0(\pulse_gen/r_cnt_f [10]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<10>_rt_425 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<9>_rt  (
    .I0(\pulse_gen/r_cnt_f [9]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<9>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<8>_rt  (
    .I0(\pulse_gen/r_cnt_f [8]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<8>_rt_427 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<7>_rt  (
    .I0(\pulse_gen/r_cnt_f [7]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<7>_rt_428 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<6>_rt  (
    .I0(\pulse_gen/r_cnt_f [6]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<6>_rt_429 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<5>_rt  (
    .I0(\pulse_gen/r_cnt_f [5]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<5>_rt_430 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<4>_rt  (
    .I0(\pulse_gen/r_cnt_f [4]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<4>_rt_431 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<3>_rt  (
    .I0(\pulse_gen/r_cnt_f [3]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<3>_rt_432 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<2>_rt  (
    .I0(\pulse_gen/r_cnt_f [2]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<2>_rt_433 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_cy<1>_rt  (
    .I0(\pulse_gen/r_cnt_f [1]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<1>_rt_434 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \pulse_gen/Maccum_r_cnt_f_xor<12>_rt  (
    .I0(\pulse_gen/r_cnt_f [12]),
    .O(\pulse_gen/Maccum_r_cnt_f_xor<12>_rt_435 )
  );
  LUT6 #(
    .INIT ( 64'h2000A0A020002000 ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o11  (
    .I0(\pulse_gen/o_pulse_f_1_463 ),
    .I1(\btn_debouncer/val_dec_btn/dff_pq1/o_q_52 ),
    .I2(\wr_sel_control/wr_control/p2t/o_q_1_462 ),
    .I3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_53 ),
    .I4(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I5(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .O(\time_keeper/w_ena_pm_i_reset_OR_64_o1 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_ss/second_digit/_n0046_SW1  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_ss/second_digit/o_q [0]),
    .O(N16)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0100000000 ))
  \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable1  (
    .I0(N10),
    .I1(N16),
    .I2(\time_keeper/w_inc ),
    .I3(\time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o ),
    .I4(\time_keeper/time_ss/w_roll_lth ),
    .I5(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_mm/second_digit/_n0046_SW1  (
    .I0(\time_keeper/time_mm/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(N18)
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0100000000 ))
  \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable1  (
    .I0(N18),
    .I1(N12),
    .I2(\time_keeper/w_inc ),
    .I3(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ),
    .I4(\time_keeper/time_mm/w_roll_lth ),
    .I5(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable )
  );
  LUT4 #(
    .INIT ( 16'hAA2A ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o1_SW0  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/o_pulse_n_9 ),
    .I2(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .I3(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hAAAA22220AAA0A0A ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o1_SW1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_ss/first_digit/o_roll_low_145 ),
    .I2(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .I3(\pulse_gen/o_pulse_n_9 ),
    .I4(\wr_sel_control/sel_control/sel/o_q [0]),
    .I5(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(N23)
  );
  LUT5 #(
    .INIT ( 32'hAA222A22 ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o1_SW2  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .I2(\pulse_gen/o_pulse_n_9 ),
    .I3(\wr_sel_control/sel_control/sel/o_q [0]),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'h2722277733333333 ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o1  (
    .I0(\wr_sel_control/sel_control/sel/o_q [1]),
    .I1(N22),
    .I2(N24),
    .I3(w_val_inc_pulse),
    .I4(N23),
    .I5(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o )
  );
  FD   \time_keeper/time_ss/second_digit/o_q_2  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_ss/second_digit/o_q_2_rstpot_441 ),
    .Q(\time_keeper/time_ss/second_digit/o_q [2])
  );
  FD   \time_keeper/time_mm/second_digit/o_q_2  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_mm/second_digit/o_q_2_rstpot_442 ),
    .Q(\time_keeper/time_mm/second_digit/o_q [2])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_ss/second_digit/o_q_1_rstpot  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .I2(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .I3(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/second_digit/o_q_1_rstpot_443 )
  );
  FD   \time_keeper/time_ss/second_digit/o_q_1  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_ss/second_digit/o_q_1_rstpot_443 ),
    .Q(\time_keeper/time_ss/second_digit/o_q [1])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_mm/second_digit/o_q_1_rstpot  (
    .I0(\time_keeper/time_mm/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .I2(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .I3(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/second_digit/o_q_1_rstpot_444 )
  );
  FD   \time_keeper/time_mm/second_digit/o_q_1  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_mm/second_digit/o_q_1_rstpot_444 ),
    .Q(\time_keeper/time_mm/second_digit/o_q [1])
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF14114414 ))
  \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1  (
    .I0(\time_keeper/time_ss/w_roll_lth ),
    .I1(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> ),
    .I2(\time_keeper/time_ss/second_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I5(\time_keeper/time_ss/second_digit/_n0046_181 ),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_179 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF14114414 ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1  (
    .I0(\time_keeper/time_mm/w_roll_lth ),
    .I1(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> ),
    .I2(\time_keeper/time_mm/second_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I5(\time_keeper/time_mm/second_digit/_n0046_201 ),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_199 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF14114414 ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1  (
    .I0(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .I1(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> ),
    .I2(\time_keeper/time_hh/first_digit/o_q [2]),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I5(\time_keeper/time_hh/first_digit/_n0046_212 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_216 )
  );
  LUT5 #(
    .INIT ( 32'h08FE00FA ))
  \time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1>11  (
    .I0(\time_keeper/time_ss/first_digit/o_q [1]),
    .I1(\time_keeper/time_ss/first_digit/o_q [0]),
    .I2(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .O(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> )
  );
  LUT5 #(
    .INIT ( 32'h08FE00FA ))
  \time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1>11  (
    .I0(\time_keeper/time_mm/first_digit/o_q [1]),
    .I1(\time_keeper/time_mm/first_digit/o_q [0]),
    .I2(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .O(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> )
  );
  LUT6 #(
    .INIT ( 64'h00000000FF69AAAA ))
  \time_keeper/time_ss/second_digit/o_q_2_rstpot  (
    .I0(\time_keeper/time_ss/second_digit/o_q [2]),
    .I1(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I2(\time_keeper/w_inc ),
    .I3(\time_keeper/time_ss/w_roll_lth ),
    .I4(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .I5(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/second_digit/o_q_2_rstpot_441 )
  );
  LUT6 #(
    .INIT ( 64'h00000000FF69AAAA ))
  \time_keeper/time_mm/second_digit/o_q_2_rstpot  (
    .I0(\time_keeper/time_mm/second_digit/o_q [2]),
    .I1(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I2(\time_keeper/w_inc ),
    .I3(\time_keeper/time_mm/w_roll_lth ),
    .I4(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .I5(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/second_digit/o_q_2_rstpot_442 )
  );
  LUT5 #(
    .INIT ( 32'hFFFFEFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0  (
    .I0(\lcd_driver/control_fsm/r_cnt [3]),
    .I1(\lcd_driver/control_fsm/r_cnt [10]),
    .I2(\lcd_driver/control_fsm/r_cnt [4]),
    .I3(\lcd_driver/control_fsm/r_cnt [2]),
    .I4(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N29)
  );
  LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [8]),
    .I1(\lcd_driver/control_fsm/r_cnt [11]),
    .I2(\lcd_driver/control_fsm/r_cnt [9]),
    .I3(\lcd_driver/control_fsm/r_cnt [7]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>2 ),
    .I5(N29),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o )
  );
  LUT5 #(
    .INIT ( 32'hFEFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0  (
    .I0(\lcd_driver/control_fsm/r_cnt [3]),
    .I1(\lcd_driver/control_fsm/r_cnt [10]),
    .I2(\lcd_driver/control_fsm/r_cnt [4]),
    .I3(\lcd_driver/control_fsm/r_cnt [2]),
    .I4(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N31)
  );
  LUT6 #(
    .INIT ( 64'h0000000010000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [7]),
    .I1(\lcd_driver/control_fsm/r_cnt [0]),
    .I2(\lcd_driver/control_fsm/r_cnt [1]),
    .I3(\lcd_driver/control_fsm/r_cnt [6]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ),
    .I5(N31),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o )
  );
  LUT6 #(
    .INIT ( 64'hF737F7F7FF3FFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW0  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'hAA20AA22AA00AA02 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In14  (
    .I0(\pulse_gen/o_pulse_vf_7 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5-In12_350 ),
    .I4(N33),
    .I5(N34),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In15_351 )
  );
  LUT5 #(
    .INIT ( 32'hAAAA80AA ))
  \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable1  (
    .I0(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .I1(\time_keeper/w_inc ),
    .I2(\time_keeper/time_hh/o_roll_162 ),
    .I3(i_reset_btn_IBUF_1),
    .I4(\time_keeper/time_hh/first_digit/_n0046_212 ),
    .O(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF6AC0A903 ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1  (
    .I0(\time_keeper/time_ss/first_digit/o_q [3]),
    .I1(\time_keeper/time_ss/first_digit/o_q [2]),
    .I2(\time_keeper/w_inc ),
    .I3(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .I4(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I5(\time_keeper/time_ss/first_digit/_n0046 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_167 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF6AC0A903 ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1  (
    .I0(\time_keeper/time_mm/first_digit/o_q [3]),
    .I1(\time_keeper/time_mm/first_digit/o_q [2]),
    .I2(\time_keeper/w_inc ),
    .I3(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .I4(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I5(\time_keeper/time_mm/first_digit/_n0046 ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1_187 )
  );
  LUT5 #(
    .INIT ( 32'h0FF0D00D ))
  \time_keeper/time_hh/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT31  (
    .I0(\time_keeper/time_hh/first_digit/o_roll_low_225 ),
    .I1(\time_keeper/time_hh/second_digit/o_q_10 ),
    .I2(\time_keeper/time_hh/first_digit/o_q [2]),
    .I3(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> ),
    .I4(\time_keeper/w_inc ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h99999199AAAAA0AA ))
  \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3>1  (
    .I0(\time_keeper/time_ss/second_digit/o_q [3]),
    .I1(w_val_inc_pulse),
    .I2(\time_keeper/time_ss/second_digit/o_q [1]),
    .I3(\time_keeper/time_ss/second_digit/o_q [0]),
    .I4(\time_keeper/time_ss/second_digit/o_q [2]),
    .I5(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> )
  );
  LUT6 #(
    .INIT ( 64'h99999199AAAAA0AA ))
  \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3>1  (
    .I0(\time_keeper/time_mm/second_digit/o_q [3]),
    .I1(w_val_inc_pulse),
    .I2(\time_keeper/time_mm/second_digit/o_q [1]),
    .I3(\time_keeper/time_mm/second_digit/o_q [0]),
    .I4(\time_keeper/time_mm/second_digit/o_q [2]),
    .I5(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> )
  );
  LUT6 #(
    .INIT ( 64'h99999199AAAAA0AA ))
  \time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3>1  (
    .I0(\time_keeper/time_hh/first_digit/o_q [3]),
    .I1(w_val_inc_pulse),
    .I2(\time_keeper/time_hh/first_digit/o_q [1]),
    .I3(\time_keeper/time_hh/first_digit/o_q [0]),
    .I4(\time_keeper/time_hh/first_digit/o_q [2]),
    .I5(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<3> )
  );
  LUT6 #(
    .INIT ( 64'hAA6AAAA9AAAAAA99 ))
  \time_keeper/time_ss/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT31  (
    .I0(\time_keeper/time_ss/first_digit/o_q [2]),
    .I1(\time_keeper/time_ss/first_digit/o_q [1]),
    .I2(\time_keeper/time_ss/first_digit/o_q [0]),
    .I3(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hAA6AAAA9AAAAAA99 ))
  \time_keeper/time_mm/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT31  (
    .I0(\time_keeper/time_mm/first_digit/o_q [2]),
    .I1(\time_keeper/time_mm/first_digit/o_q [1]),
    .I2(\time_keeper/time_mm/first_digit/o_q [0]),
    .I3(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \time_keeper/time_ss/w_roll_lth1  (
    .I0(\time_keeper/time_ss/second_digit/o_q [3]),
    .I1(\time_keeper/time_ss/second_digit/o_q [2]),
    .I2(\time_keeper/time_ss/second_digit/o_q [1]),
    .I3(\time_keeper/time_ss/second_digit/o_q [0]),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I5(w_val_inc_pulse),
    .O(\time_keeper/time_ss/w_roll_lth )
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \time_keeper/time_mm/w_roll_lth1  (
    .I0(\time_keeper/time_mm/second_digit/o_q [3]),
    .I1(\time_keeper/time_mm/second_digit/o_q [2]),
    .I2(\time_keeper/time_mm/second_digit/o_q [1]),
    .I3(\time_keeper/time_mm/second_digit/o_q [0]),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I5(w_val_inc_pulse),
    .O(\time_keeper/time_mm/w_roll_lth )
  );
  LUT6 #(
    .INIT ( 64'hFDFFFDFFFFFFFDFF ))
  \time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_B11  (
    .I0(\time_keeper/time_ss/first_digit/o_q [3]),
    .I1(\time_keeper/time_ss/first_digit/o_q [2]),
    .I2(\time_keeper/time_ss/first_digit/o_q [1]),
    .I3(\time_keeper/time_ss/first_digit/o_q [0]),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I5(w_val_inc_pulse),
    .O(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> )
  );
  LUT6 #(
    .INIT ( 64'hFDFFFDFFFFFFFDFF ))
  \time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_B11  (
    .I0(\time_keeper/time_mm/first_digit/o_q [3]),
    .I1(\time_keeper/time_mm/first_digit/o_q [2]),
    .I2(\time_keeper/time_mm/first_digit/o_q [1]),
    .I3(\time_keeper/time_mm/first_digit/o_q [0]),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I5(w_val_inc_pulse),
    .O(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> )
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFEF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW1  (
    .I0(\lcd_driver/control_fsm/r_cnt [11]),
    .I1(\lcd_driver/control_fsm/r_cnt [3]),
    .I2(\lcd_driver/control_fsm/r_cnt [7]),
    .I3(\lcd_driver/control_fsm/r_cnt [10]),
    .I4(\lcd_driver/control_fsm/r_cnt [2]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h0000040000000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [9]),
    .I1(\lcd_driver/control_fsm/r_cnt [8]),
    .I2(\lcd_driver/control_fsm/r_cnt [4]),
    .I3(\lcd_driver/control_fsm/r_cnt [5]),
    .I4(N36),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>2 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o )
  );
  LUT5 #(
    .INIT ( 32'hCACCAAAA ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o1_SW1  (
    .I0(\time_keeper/time_mm/first_digit/o_roll_high_150 ),
    .I1(\time_keeper/time_mm/first_digit/o_roll_low_151 ),
    .I2(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I3(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'hFF755555FF555555 ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\wr_sel_control/sel_control/sel/o_q [1]),
    .I2(\wr_sel_control/sel_control/sel/o_q [0]),
    .I3(\time_keeper/w_ena_mm_i_reset_OR_57_o1 ),
    .I4(N38),
    .I5(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .O(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o )
  );
  LUT6 #(
    .INIT ( 64'h0000010000000000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In5  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/r_cnt [0]),
    .I2(\lcd_driver/control_fsm/r_cnt [6]),
    .I3(\lcd_driver/control_fsm/r_cnt [5]),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In5_363 )
  );
  LUT3 #(
    .INIT ( 8'hEF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_SW0  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/r_cnt [0]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .O(N44)
  );
  LUT6 #(
    .INIT ( 64'hF0F00020F0F00000 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In13  (
    .I0(\lcd_driver/control_fsm/r_cnt [6]),
    .I1(\lcd_driver/control_fsm/r_cnt [5]),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(N44),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd4-In12_355 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>2 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In13_356 )
  );
  LUT5 #(
    .INIT ( 32'hEFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1  (
    .I0(\lcd_driver/control_fsm/r_cnt [7]),
    .I1(\lcd_driver/control_fsm/r_cnt [10]),
    .I2(\lcd_driver/control_fsm/r_cnt [0]),
    .I3(\lcd_driver/control_fsm/r_cnt [1]),
    .I4(\lcd_driver/control_fsm/r_cnt [6]),
    .O(N46)
  );
  LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [3]),
    .I1(\lcd_driver/control_fsm/r_cnt [4]),
    .I2(\lcd_driver/control_fsm/r_cnt [2]),
    .I3(\lcd_driver/control_fsm/r_cnt [5]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ),
    .I5(N46),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o )
  );
  LUT5 #(
    .INIT ( 32'hFFFF7FFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0  (
    .I0(\lcd_driver/control_fsm/r_cnt [7]),
    .I1(\lcd_driver/control_fsm/r_cnt [6]),
    .I2(\lcd_driver/control_fsm/r_cnt [1]),
    .I3(\lcd_driver/control_fsm/r_cnt [0]),
    .I4(\lcd_driver/control_fsm/r_cnt [10]),
    .O(N48)
  );
  LUT6 #(
    .INIT ( 64'h0000000000200000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [3]),
    .I1(\lcd_driver/control_fsm/r_cnt [4]),
    .I2(\lcd_driver/control_fsm/r_cnt [2]),
    .I3(\lcd_driver/control_fsm/r_cnt [5]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>3 ),
    .I5(N48),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o )
  );
  LUT3 #(
    .INIT ( 8'hBF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_SW0  (
    .I0(\lcd_driver/control_fsm/r_cnt [10]),
    .I1(\lcd_driver/control_fsm/r_cnt [4]),
    .I2(\lcd_driver/control_fsm/r_cnt [2]),
    .O(N50)
  );
  LUT6 #(
    .INIT ( 64'h02CE020202020202 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In15  (
    .I0(\lcd_driver/lcd_pulse_gen/o_update_pulse_60 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(N50),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>1 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In15_357 )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \time_keeper/w_inc1_SW0  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_ss/second_digit/o_q [0]),
    .O(N52)
  );
  LUT6 #(
    .INIT ( 64'h5555757555555575 ))
  \time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_ss/second_digit/o_q [3]),
    .I2(\time_keeper/time_ss/second_digit/o_q [2]),
    .I3(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I4(N52),
    .I5(w_val_inc_pulse),
    .O(\time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \time_keeper/w_inc1_SW1  (
    .I0(\time_keeper/time_mm/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(N54)
  );
  LUT6 #(
    .INIT ( 64'h5555757555555575 ))
  \time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_mm/second_digit/o_q [3]),
    .I2(\time_keeper/time_mm/second_digit/o_q [2]),
    .I3(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I4(N54),
    .I5(w_val_inc_pulse),
    .O(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o )
  );
  LUT6 #(
    .INIT ( 64'h0100000000000000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/r_cnt [0]),
    .I2(\lcd_driver/control_fsm/r_cnt [6]),
    .I3(\lcd_driver/control_fsm/r_cnt [5]),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>2 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>1_238 ),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_B11_SW0  (
    .I0(\time_keeper/time_ss/second_digit/o_q [2]),
    .I1(\time_keeper/time_ss/second_digit/o_q [3]),
    .O(N56)
  );
  LUT6 #(
    .INIT ( 64'h00000000AA62AA99 ))
  \time_keeper/time_ss/second_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT21  (
    .I0(\time_keeper/time_ss/second_digit/o_q [1]),
    .I1(\time_keeper/time_ss/second_digit/o_q [0]),
    .I2(N56),
    .I3(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/time_ss/w_roll_lth ),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_B11_SW0  (
    .I0(\time_keeper/time_mm/second_digit/o_q [2]),
    .I1(\time_keeper/time_mm/second_digit/o_q [3]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h00000000AA62AA99 ))
  \time_keeper/time_mm/second_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT21  (
    .I0(\time_keeper/time_mm/second_digit/o_q [1]),
    .I1(\time_keeper/time_mm/second_digit/o_q [0]),
    .I2(N58),
    .I3(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I4(\time_keeper/w_inc ),
    .I5(\time_keeper/time_mm/w_roll_lth ),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h75 ))
  \time_keeper/w_inc1  (
    .I0(\wr_sel_control/wr_control/p2t/o_q_2_470 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I2(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .O(\time_keeper/w_inc )
  );
  LUT5 #(
    .INIT ( 32'h20220000 ))
  \time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o1  (
    .I0(\time_keeper/time_hh/first_digit/o_roll_low_225 ),
    .I1(\time_keeper/time_hh/second_digit/o_q_10 ),
    .I2(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I3(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .O(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o )
  );
  LUT6 #(
    .INIT ( 64'hFF75FF5555555555 ))
  \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable1  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\wr_sel_control/sel_control/sel/o_q [1]),
    .I2(\wr_sel_control/sel_control/sel/o_q [0]),
    .I3(\time_keeper/w_ena_mm_i_reset_OR_57_o1 ),
    .I4(\time_keeper/w_ena_pm_i_reset_OR_64_o1 ),
    .I5(\time_keeper/time_mm/first_digit/_n0046 ),
    .O(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable )
  );
  MUXF7   \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1  (
    .I0(N60),
    .I1(N61),
    .S(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o ),
    .O(N34)
  );
  LUT5 #(
    .INIT ( 32'hAAEAAAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1_F  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ),
    .O(N60)
  );
  LUT6 #(
    .INIT ( 64'hAAEAFAEAAAAAFAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1_G  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ),
    .O(N61)
  );
  LUT3 #(
    .INIT ( 8'hA2 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse_glue_rst  (
    .I0(\lcd_driver/lcd_pulse_gen/o_update_pulse_60 ),
    .I1(\pulse_gen/o_pulse_vf_7 ),
    .I2(\lcd_driver/lcd_pulse_gen/i_clock_pulse_i_inc_pulse_OR_71_o_70 ),
    .O(\lcd_driver/lcd_pulse_gen/o_update_pulse_glue_rst_422 )
  );
  LUT2 #(
    .INIT ( 4'h4 ))
  \time_keeper/time_hh/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT21_SW0  (
    .I0(\time_keeper/time_hh/first_digit/o_q [2]),
    .I1(\time_keeper/time_hh/first_digit/o_q [3]),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'h00AA002600AA0099 ))
  \time_keeper/time_hh/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT21  (
    .I0(\time_keeper/time_hh/first_digit/o_q [1]),
    .I1(\time_keeper/time_hh/first_digit/o_q [0]),
    .I2(N62),
    .I3(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .I4(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I5(\time_keeper/w_inc ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hA6A9AAA5 ))
  \time_keeper/time_ss/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT21  (
    .I0(\time_keeper/time_ss/first_digit/o_q [1]),
    .I1(\time_keeper/time_ss/first_digit/o_q [0]),
    .I2(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'hA6A9AAA5 ))
  \time_keeper/time_mm/first_digit/Mmux_o_q[3]_i_in[3]_mux_12_OUT21  (
    .I0(\time_keeper/time_mm/first_digit/o_q [1]),
    .I1(\time_keeper/time_mm/first_digit/o_q [0]),
    .I2(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> ),
    .I3(\time_keeper/w_inc ),
    .I4(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_B<0> ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  LUT5 #(
    .INIT ( 32'h00041014 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In2  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In2_360 )
  );
  LUT6 #(
    .INIT ( 64'h0E0FFEEF0E0FEEEF ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2211  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_228 )
  );
  LUT4 #(
    .INIT ( 16'hB04F ))
  \time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0>1  (
    .I0(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I2(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I3(\time_keeper/time_ss/first_digit/o_q [0]),
    .O(\time_keeper/time_ss/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> )
  );
  LUT4 #(
    .INIT ( 16'hB04F ))
  \time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0>1  (
    .I0(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I2(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I3(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF0100000000 ))
  \wr_sel_control/sel_control/sel/Reset_OR_DriverANDClockEnable1  (
    .I0(\wr_sel_control/sel_control/sel/o_q [1]),
    .I1(\wr_sel_control/sel_control/sel/o_q [0]),
    .I2(w_sel_inc_pulse),
    .I3(\wr_sel_control/sel_control/i_reset_w_roll_htl_OR_68_o ),
    .I4(\wr_sel_control/sel_control/w_roll_lth ),
    .I5(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .O(\wr_sel_control/sel_control/sel/Reset_OR_DriverANDClockEnable )
  );
  LUT4 #(
    .INIT ( 16'h5D55 ))
  \pulse_gen/r_cnt_f_val2  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/r_cnt_f_val11_341 ),
    .I2(\pulse_gen/r_cnt_f [10]),
    .I3(\pulse_gen/r_cnt_f_val12_342 ),
    .O(\pulse_gen/r_cnt_f_val )
  );
  LUT5 #(
    .INIT ( 32'h00000004 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22311  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 )
  );
  LUT3 #(
    .INIT ( 8'h7F ))
  \pulse_gen/Maccum_r_cnt_n_xor<2>111  (
    .I0(\pulse_gen/r_cnt_n [0]),
    .I1(\pulse_gen/o_pulse_f_8 ),
    .I2(\pulse_gen/r_cnt_n [1]),
    .O(\pulse_gen/Maccum_r_cnt_n_xor<2>11 )
  );
  LUT6 #(
    .INIT ( 64'h8888888088888888 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>244  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\lcd_driver/control_fsm/o_val_2_65 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>244_398 )
  );
  LUT6 #(
    .INIT ( 64'h8888888088888888 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>224  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I1(\lcd_driver/control_fsm/o_val_1_64 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd1_323 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_402 )
  );
  LUT5 #(
    .INIT ( 32'h55D55555 ))
  \pulse_gen/Mcount_r_cnt_vf_val2  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\pulse_gen/r_cnt_vf [3]),
    .I2(\pulse_gen/r_cnt_vf [2]),
    .I3(\pulse_gen/r_cnt_vf [0]),
    .I4(\pulse_gen/r_cnt_vf [1]),
    .O(\pulse_gen/Mcount_r_cnt_vf_val )
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \pulse_gen/Maccum_r_cnt_n_xor<1>11  (
    .I0(\pulse_gen/r_cnt_n [1]),
    .I1(\pulse_gen/r_cnt_n [0]),
    .I2(\pulse_gen/o_pulse_f_8 ),
    .O(\pulse_gen/Result<1>2 )
  );
  LUT5 #(
    .INIT ( 32'h7F2A2A2A ))
  \lcd_driver/rs_e_output/o_e_glue_set  (
    .I0(\lcd_driver/rs_e_output/o_e_46 ),
    .I1(\lcd_driver/rs_e_output/r_cnt [1]),
    .I2(\lcd_driver/rs_e_output/r_cnt [0]),
    .I3(\lcd_driver/control_fsm/o_e_trigger_61 ),
    .I4(\pulse_gen/o_pulse_vf_7 ),
    .O(\lcd_driver/rs_e_output/o_e_glue_set_423 )
  );
  LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \pulse_gen/Maccum_r_cnt_n_xor<4>11  (
    .I0(\pulse_gen/r_cnt_n [4]),
    .I1(\pulse_gen/r_cnt_n [0]),
    .I2(\pulse_gen/o_pulse_f_8 ),
    .I3(\pulse_gen/r_cnt_n [1]),
    .I4(\pulse_gen/r_cnt_n [3]),
    .I5(\pulse_gen/r_cnt_n [2]),
    .O(\pulse_gen/Result<4>1 )
  );
  LUT5 #(
    .INIT ( 32'h6AAAAAAA ))
  \pulse_gen/Maccum_r_cnt_n_xor<3>11  (
    .I0(\pulse_gen/r_cnt_n [3]),
    .I1(\pulse_gen/r_cnt_n [0]),
    .I2(\pulse_gen/o_pulse_f_8 ),
    .I3(\pulse_gen/r_cnt_n [1]),
    .I4(\pulse_gen/r_cnt_n [2]),
    .O(\pulse_gen/Result<3>2 )
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \pulse_gen/Maccum_r_cnt_n_xor<2>12  (
    .I0(\pulse_gen/r_cnt_n [2]),
    .I1(\pulse_gen/r_cnt_n [0]),
    .I2(\pulse_gen/o_pulse_f_8 ),
    .I3(\pulse_gen/r_cnt_n [1]),
    .O(\pulse_gen/Result<2>2 )
  );
  LUT4 #(
    .INIT ( 16'hB04F ))
  \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0>1  (
    .I0(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I2(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I3(\time_keeper/time_ss/second_digit/o_q [0]),
    .O(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> )
  );
  LUT4 #(
    .INIT ( 16'hB04F ))
  \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0>1  (
    .I0(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I2(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I3(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> )
  );
  LUT4 #(
    .INIT ( 16'hB04F ))
  \time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0>1  (
    .I0(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I2(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I3(\time_keeper/time_hh/first_digit/o_q [0]),
    .O(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_lut<0> )
  );
  LUT6 #(
    .INIT ( 64'h55D5555555555555 ))
  \wr_sel_control/sel_control/sel/_n00371  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .I2(\pulse_gen/o_pulse_f_8 ),
    .I3(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ),
    .I4(\wr_sel_control/sel_control/sel/o_q [1]),
    .I5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\wr_sel_control/sel_control/sel/_n0037 )
  );
  LUT5 #(
    .INIT ( 32'hF880FAA0 ))
  \time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1>11  (
    .I0(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I2(\time_keeper/time_ss/second_digit/o_q [1]),
    .I3(\time_keeper/time_ss/second_digit/o_q [0]),
    .I4(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .O(\time_keeper/time_ss/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> )
  );
  LUT5 #(
    .INIT ( 32'hF880FAA0 ))
  \time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1>11  (
    .I0(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I2(\time_keeper/time_mm/second_digit/o_q [1]),
    .I3(\time_keeper/time_mm/second_digit/o_q [0]),
    .I4(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .O(\time_keeper/time_mm/second_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> )
  );
  LUT5 #(
    .INIT ( 32'hF880FAA0 ))
  \time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1>11  (
    .I0(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I2(\time_keeper/time_hh/first_digit/o_q [1]),
    .I3(\time_keeper/time_hh/first_digit/o_q [0]),
    .I4(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .O(\time_keeper/time_hh/first_digit/Mmux_o_q[3]_o_q[3]_mux_11_OUT_rs_cy<1> )
  );
  LUT6 #(
    .INIT ( 64'h5D55DDDD00000000 ))
  \time_keeper/time_hh/first_digit/_n00371  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_hh/o_roll_162 ),
    .I2(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I3(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I4(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/_n0037 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<0>  (
    .I0(\lcd_driver/control_fsm/r_cnt [0]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<1>  (
    .I0(\lcd_driver/control_fsm/r_cnt [1]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<2>  (
    .I0(\lcd_driver/control_fsm/r_cnt [2]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<3>  (
    .I0(\lcd_driver/control_fsm/r_cnt [3]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<4>  (
    .I0(\lcd_driver/control_fsm/r_cnt [4]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<5>  (
    .I0(\lcd_driver/control_fsm/r_cnt [5]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<6>  (
    .I0(\lcd_driver/control_fsm/r_cnt [6]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<7>  (
    .I0(\lcd_driver/control_fsm/r_cnt [7]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<8>  (
    .I0(\lcd_driver/control_fsm/r_cnt [8]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<9>  (
    .I0(\lcd_driver/control_fsm/r_cnt [9]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<10>  (
    .I0(\lcd_driver/control_fsm/r_cnt [10]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10])
  );
  LUT6 #(
    .INIT ( 64'hAAAAA8AAAAAAAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<11>  (
    .I0(\lcd_driver/control_fsm/r_cnt [11]),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [11])
  );
  LUT5 #(
    .INIT ( 32'hFFFFFFDF ))
  \lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv1  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv )
  );
  LUT4 #(
    .INIT ( 16'h9699 ))
  \wr_sel_control/sel_control/sel/Mmux_o_q[3]_i_in[3]_mux_12_OUT21  (
    .I0(\wr_sel_control/sel_control/sel/o_q [1]),
    .I1(\wr_sel_control/sel_control/sel/o_q [0]),
    .I2(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_50 ),
    .I3(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 ),
    .O(\wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h40004040FFFFFFFF ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1  (
    .I0(\time_keeper/time_hh/second_digit/o_q_10 ),
    .I1(\wr_sel_control/wr_control/p2t/o_q_36 ),
    .I2(\time_keeper/time_hh/first_digit/o_roll_low_225 ),
    .I3(\btn_debouncer/val_inc_btn/dff_pq1/o_q_54 ),
    .I4(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 ),
    .I5(\time_keeper/time_hh/first_digit/o_q [0]),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_215 )
  );
  FDE   \wr_sel_control/wr_control/p2t/o_q_1  (
    .C(i_clk_BUFGP_0),
    .CE(\wr_sel_control/wr_control/w_ena_p2t_i_reset_OR_65_o ),
    .D(\wr_sel_control/wr_control/i_reset_o_toggle_AND_42_o ),
    .Q(\wr_sel_control/wr_control/p2t/o_q_1_462 )
  );
  FDR   \pulse_gen/o_pulse_f_1  (
    .C(i_clk_BUFGP_0),
    .D(\pulse_gen/r_cnt_f_val1 ),
    .R(w_reset_n),
    .Q(\pulse_gen/o_pulse_f_1_463 )
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_mm/first_digit/o_q_2_rstpot  (
    .I0(\time_keeper/time_mm/first_digit/o_q [2]),
    .I1(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .I2(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .I3(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/first_digit/o_q_2_rstpot_464 )
  );
  FD   \time_keeper/time_mm/first_digit/o_q_2  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_mm/first_digit/o_q_2_rstpot_464 ),
    .Q(\time_keeper/time_mm/first_digit/o_q [2])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_mm/first_digit/o_q_1_rstpot  (
    .I0(\time_keeper/time_mm/first_digit/o_q [1]),
    .I1(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .I2(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .I3(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/first_digit/o_q_1_rstpot_465 )
  );
  FD   \time_keeper/time_mm/first_digit/o_q_1  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_mm/first_digit/o_q_1_rstpot_465 ),
    .Q(\time_keeper/time_mm/first_digit/o_q [1])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_hh/first_digit/o_q_1_rstpot  (
    .I0(\time_keeper/time_hh/first_digit/o_q [1]),
    .I1(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .I2(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .I3(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_hh/first_digit/o_q_1_rstpot_466 )
  );
  FD   \time_keeper/time_hh/first_digit/o_q_1  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_hh/first_digit/o_q_1_rstpot_466 ),
    .Q(\time_keeper/time_hh/first_digit/o_q [1])
  );
  LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_hh/first_digit/o_q_2_rstpot  (
    .I0(\time_keeper/time_hh/first_digit/o_q [2]),
    .I1(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .I2(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .I3(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_hh/first_digit/o_q_2_rstpot_467 )
  );
  FD   \time_keeper/time_hh/first_digit/o_q_2  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_hh/first_digit/o_q_2_rstpot_467 ),
    .Q(\time_keeper/time_hh/first_digit/o_q [2])
  );
  FD   \time_keeper/time_ss/first_digit/o_q_2  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_ss/first_digit/o_q_2_rstpot_468 ),
    .Q(\time_keeper/time_ss/first_digit/o_q [2])
  );
  FD   \time_keeper/time_ss/first_digit/o_q_1  (
    .C(i_clk_BUFGP_0),
    .D(\time_keeper/time_ss/first_digit/o_q_1_rstpot_469 ),
    .Q(\time_keeper/time_ss/first_digit/o_q [1])
  );
  LUT5 #(
    .INIT ( 32'h0C0CAC0C ))
  \time_keeper/time_ss/first_digit/o_q_1_rstpot  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_ss/first_digit/o_q [1]),
    .I2(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .I3(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .I4(\time_keeper/time_ss/first_digit/_n0046 ),
    .O(\time_keeper/time_ss/first_digit/o_q_1_rstpot_469 )
  );
  LUT5 #(
    .INIT ( 32'h0C0CAC0C ))
  \time_keeper/time_ss/first_digit/o_q_2_rstpot  (
    .I0(i_reset_btn_IBUF_1),
    .I1(\time_keeper/time_ss/first_digit/o_q [2]),
    .I2(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .I3(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .I4(\time_keeper/time_ss/first_digit/_n0046 ),
    .O(\time_keeper/time_ss/first_digit/o_q_2_rstpot_468 )
  );
  FDE   \wr_sel_control/wr_control/p2t/o_q_2  (
    .C(i_clk_BUFGP_0),
    .CE(\wr_sel_control/wr_control/w_ena_p2t_i_reset_OR_65_o ),
    .D(\wr_sel_control/wr_control/i_reset_o_toggle_AND_42_o ),
    .Q(\wr_sel_control/wr_control/p2t/o_q_2_470 )
  );
  MUXF7   \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>265  (
    .I0(N64),
    .I1(N65),
    .S(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/o_val[3]_o_val[3]_mux_98_OUT<3> )
  );
  LUT5 #(
    .INIT ( 32'hFFF2F2F2 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>265_F  (
    .I0(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>261_394 ),
    .I1(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .I2(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26 ),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_228 ),
    .I4(\lcd_driver/control_fsm/o_val_3_66 ),
    .O(N64)
  );
  LUT6 #(
    .INIT ( 64'hFFFFAA80AA80AA80 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>265_G  (
    .I0(\lcd_driver/control_fsm/o_val_3_66 ),
    .I1(\lcd_driver/control_fsm/state<5>4 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_228 ),
    .I4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ),
    .I5(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(N65)
  );
  MUXF7   \lcd_driver/control_fsm/state_FSM_FFd4-In17  (
    .I0(N66),
    .I1(N67),
    .S(\lcd_driver/control_fsm/state_FSM_FFd4-In15_357 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In17_358 )
  );
  LUT6 #(
    .INIT ( 64'h0404040404440404 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In17_F  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o ),
    .I5(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(N66)
  );
  LUT4 #(
    .INIT ( 16'h1055 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In17_G  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/state_FSM_FFd3_321 ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd2_322 ),
    .I3(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .O(N67)
  );
  MUXF7   \lcd_driver/control_fsm/state_FSM_FFd2-In314  (
    .I0(N68),
    .I1(N69),
    .S(\lcd_driver/control_fsm/state_FSM_FFd4_320 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In314_392 )
  );
  LUT6 #(
    .INIT ( 64'h2FAF2AAAFFFF2AAA ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In314_F  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/r_cnt [2]),
    .I2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>1 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>2 ),
    .I4(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>2 ),
    .O(N68)
  );
  LUT5 #(
    .INIT ( 32'h2A7A2F7F ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In314_G  (
    .I0(\lcd_driver/control_fsm/state_FSM_FFd5_319 ),
    .I1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o ),
    .I2(\lcd_driver/control_fsm/state_FSM_FFd6_318 ),
    .I3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ),
    .I4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o ),
    .O(N69)
  );
  BUFGP   i_clk_BUFGP (
    .I(i_clk),
    .O(i_clk_BUFGP_0)
  );
  INV   w_reset_n1_INV_0 (
    .I(i_reset_btn_IBUF_1),
    .O(w_reset_n)
  );
  INV   \pulse_gen/Mcount_r_cnt_vf_xor<0>11_INV_0  (
    .I(\pulse_gen/r_cnt_vf [0]),
    .O(\pulse_gen/Result [0])
  );
  INV   \lcd_driver/rs_e_output/Madd_r_cnt[1]_GND_18_o_add_2_OUT_xor<0>11_INV_0  (
    .I(\lcd_driver/rs_e_output/r_cnt [0]),
    .O(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> )
  );
  INV   \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_INV_0  (
    .I(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  INV   \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_INV_0  (
    .I(\time_keeper/time_ss/second_digit/o_q [0]),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  INV   \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_INV_0  (
    .I(\time_keeper/time_ss/first_digit/o_q [0]),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  INV   \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1_INV_0  (
    .I(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  INV   \wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<0>1_INV_0  (
    .I(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\wr_sel_control/sel_control/sel/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/val_dec_btn/dff_pq0/Mshreg_o_q  (
    .A0(\wr_sel_control/sel_control/sel/o_q [2]),
    .A1(\wr_sel_control/sel_control/sel/o_q [2]),
    .A2(\wr_sel_control/sel_control/sel/o_q [2]),
    .A3(\wr_sel_control/sel_control/sel/o_q [2]),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .CLK(i_clk_BUFGP_0),
    .D(i_val_dec_btn_IBUF_4),
    .Q(\btn_debouncer/val_dec_btn/dff_pq0/Mshreg_o_q_477 ),
    .Q15(\NLW_btn_debouncer/val_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  FDE   \btn_debouncer/val_dec_btn/dff_pq0/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/val_dec_btn/dff_pq0/Mshreg_o_q_477 ),
    .Q(\btn_debouncer/val_dec_btn/dff_pq0/o_q_53 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q  (
    .A0(\wr_sel_control/sel_control/sel/o_q [2]),
    .A1(\wr_sel_control/sel_control/sel/o_q [2]),
    .A2(\wr_sel_control/sel_control/sel/o_q [2]),
    .A3(\wr_sel_control/sel_control/sel/o_q [2]),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .CLK(i_clk_BUFGP_0),
    .D(i_sel_dec_btn_IBUF_6),
    .Q(\btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_478 ),
    .Q15(\NLW_btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  FDE   \btn_debouncer/sel_dec_btn/dff_pq0/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_478 ),
    .Q(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_49 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q  (
    .A0(\wr_sel_control/sel_control/sel/o_q [2]),
    .A1(\wr_sel_control/sel_control/sel/o_q [2]),
    .A2(\wr_sel_control/sel_control/sel/o_q [2]),
    .A3(\wr_sel_control/sel_control/sel/o_q [2]),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .CLK(i_clk_BUFGP_0),
    .D(i_sel_inc_btn_IBUF_5),
    .Q(\btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_479 ),
    .Q15(\NLW_btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  FDE   \btn_debouncer/sel_inc_btn/dff_pq0/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_479 ),
    .Q(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_51 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/val_inc_btn/dff_pq0/Mshreg_o_q  (
    .A0(\wr_sel_control/sel_control/sel/o_q [2]),
    .A1(\wr_sel_control/sel_control/sel/o_q [2]),
    .A2(\wr_sel_control/sel_control/sel/o_q [2]),
    .A3(\wr_sel_control/sel_control/sel/o_q [2]),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .CLK(i_clk_BUFGP_0),
    .D(i_val_inc_btn_IBUF_3),
    .Q(\btn_debouncer/val_inc_btn/dff_pq0/Mshreg_o_q_480 ),
    .Q15(\NLW_btn_debouncer/val_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  FDE   \btn_debouncer/val_inc_btn/dff_pq0/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/val_inc_btn/dff_pq0/Mshreg_o_q_480 ),
    .Q(\btn_debouncer/val_inc_btn/dff_pq0/o_q_55 )
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q  (
    .A0(\wr_sel_control/sel_control/sel/o_q [2]),
    .A1(\wr_sel_control/sel_control/sel/o_q [2]),
    .A2(\wr_sel_control/sel_control/sel/o_q [2]),
    .A3(\wr_sel_control/sel_control/sel/o_q [2]),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .CLK(i_clk_BUFGP_0),
    .D(i_wr_btn_IBUF_2),
    .Q(\btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_481 ),
    .Q15(\NLW_btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  FDE   \btn_debouncer/wr_btn/dff_pq0/o_q  (
    .C(i_clk_BUFGP_0),
    .CE(\pulse_gen/o_pulse_f_8 ),
    .D(\btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_481 ),
    .Q(\btn_debouncer/wr_btn/dff_pq0/o_q_57 )
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

