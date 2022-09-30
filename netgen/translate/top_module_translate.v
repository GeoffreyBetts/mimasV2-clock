////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: top_module_translate.v
// /___/   /\     Timestamp: Fri Sep 30 11:16:36 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -filter E:/Xilinx/projects/mimasV2-clock/iseconfig/filter.filter -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim top_module.ngd top_module_translate.v 
// Device	: 6slx9csg324-2
// Input file	: top_module.ngd
// Output file	: E:\Xilinx\projects\mimasV2-clock\netgen\translate\top_module_translate.v
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
  wire i_clk_BUFGP;
  wire i_reset_btn_IBUF_4;
  wire i_wr_btn_IBUF_5;
  wire i_val_inc_btn_IBUF_6;
  wire i_val_dec_btn_IBUF_7;
  wire i_sel_inc_btn_IBUF_8;
  wire i_sel_dec_btn_IBUF_9;
  wire \pulse_gen/o_pulse_vf_10 ;
  wire \pulse_gen/o_pulse_f_11 ;
  wire \pulse_gen/o_pulse_n_12 ;
  wire \time_keeper/time_hh/second_digit/o_q_13 ;
  wire \time_keeper/time_pm/o_q ;
  wire \btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ;
  wire \btn_debouncer/val_dec_btn/o_pulse1_FRB_35 ;
  wire \wr_sel_control/wr_control/p2t/o_q_38 ;
  wire \lcd_driver/rs_e_output/o_rs_47 ;
  wire \lcd_driver/rs_e_output/o_e_48 ;
  wire w_reset_n;
  wire w_wr_btn;
  wire w_val_inc_btn;
  wire w_val_dec_btn;
  wire w_sel_inc_btn;
  wire w_sel_dec_btn;
  wire \btn_debouncer/sel_dec_btn/dff_pq1/o_q_55 ;
  wire \btn_debouncer/sel_dec_btn/dff_pq0/o_q_56 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq1/o_q_57 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/o_q_58 ;
  wire \btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ;
  wire \btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ;
  wire \btn_debouncer/val_dec_btn/dff_ms0/o_q_61 ;
  wire \btn_debouncer/val_inc_btn/dff_pq1/o_q_62 ;
  wire \btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ;
  wire \btn_debouncer/val_inc_btn/dff_ms0/o_q_64 ;
  wire \btn_debouncer/wr_btn/dff_pq1/o_q_65 ;
  wire \btn_debouncer/wr_btn/dff_pq0/o_q_66 ;
  wire \lcd_driver/lcd_pulse_gen/o_update_pulse_67 ;
  wire \lcd_driver/control_fsm/o_e_trigger_68 ;
  wire \lcd_driver/control_fsm/o_data_69 ;
  wire \lcd_driver/control_fsm/o_val_0 ;
  wire \lcd_driver/control_fsm/o_val_1 ;
  wire \lcd_driver/control_fsm/o_val_2 ;
  wire \lcd_driver/control_fsm/o_val_3 ;
  wire \lcd_driver/control_fsm/o_sel_0_74 ;
  wire \lcd_driver/control_fsm/o_sel_1_75 ;
  wire \lcd_driver/control_fsm/o_sel_2_76 ;
  wire \wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ;
  wire \pulse_gen/Mcount_r_cnt_vf_val1 ;
  wire \pulse_gen/r_cnt_n_val1_79 ;
  wire \pulse_gen/r_cnt_f_val1 ;
  wire \pulse_gen/Result<6>1_104 ;
  wire \pulse_gen/Result<5>1_105 ;
  wire \pulse_gen/Result<4>1 ;
  wire \pulse_gen/Result<3>2 ;
  wire \pulse_gen/r_cnt_n_val ;
  wire \pulse_gen/Result<3>1 ;
  wire \pulse_gen/Result<2>1 ;
  wire \pulse_gen/Result<1>1 ;
  wire \pulse_gen/Result<0>1 ;
  wire \pulse_gen/r_cnt_f_val ;
  wire \pulse_gen/Mcount_r_cnt_vf_val ;
  wire \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_bdd0 ;
  wire \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_bdd0 ;
  wire \time_keeper/time_ss/first_digit/o_roll_high_144 ;
  wire \time_keeper/time_ss/first_digit/o_roll_low_145 ;
  wire \time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o ;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o ;
  wire \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o ;
  wire \time_keeper/time_ss/w_roll_lth ;
  wire \time_keeper/time_mm/first_digit/o_roll_high_150 ;
  wire \time_keeper/time_mm/first_digit/o_roll_low_151 ;
  wire \time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ;
  wire \time_keeper/time_mm/w_ena2_i_reset_OR_47_o ;
  wire \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o ;
  wire \time_keeper/time_mm/w_roll_lth ;
  wire \time_keeper/i_reset_o_pm_AND_39_o ;
  wire \time_keeper/w_inc ;
  wire \time_keeper/w_ena_pm_i_reset_OR_64_o ;
  wire \time_keeper/w_ena_hh_i_reset_OR_63_o ;
  wire \time_keeper/w_ena_mm_i_reset_OR_57_o ;
  wire \time_keeper/w_ena_ss_i_reset_OR_56_o ;
  wire \time_keeper/time_hh/o_roll_162 ;
  wire \time_keeper/time_mm/o_roll_163 ;
  wire \time_keeper/time_ss/o_roll_164 ;
  wire \time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_mm/second_digit/_n0037 ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ;
  wire \time_keeper/time_hh/first_digit/_n0037 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ;
  wire \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ;
  wire \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ;
  wire \time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ;
  wire \time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o ;
  wire \time_keeper/time_hh/w_ena2_i_reset_OR_61_o ;
  wire \time_keeper/time_hh/i_reset_o_roll_OR_60_o ;
  wire \time_keeper/time_hh/first_digit/o_roll_low_199 ;
  wire \time_keeper/time_hh/first_digit/o_roll_high_200 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In21 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_202 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_203 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_204 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_205 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_210 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ;
  wire \lcd_driver/control_fsm/state<5>4 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_214 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB_215 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_216 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_217 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_218 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_220 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB_221 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_222 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In121 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1_225 ;
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
  wire \lcd_driver/control_fsm/_n0483_inv ;
  wire \lcd_driver/control_fsm/_n0366_inv ;
  wire \lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o ;
  wire \lcd_driver/control_fsm/_n0293 ;
  wire \lcd_driver/control_fsm/_n0291 ;
  wire \lcd_driver/control_fsm/_n0289 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_286 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_287 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_288 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_289 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_290 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1_291 ;
  wire \lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ;
  wire \lcd_driver/rs_e_output/_n0030_inv ;
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
  wire \lcd_driver/lcd_pulse_gen/_n00111 ;
  wire N2;
  wire \pulse_gen/r_cnt_f_val11_308 ;
  wire \pulse_gen/r_cnt_f_val12_309 ;
  wire N4;
  wire N6;
  wire N8;
  wire N10;
  wire N12;
  wire N14;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o1 ;
  wire \time_keeper/time_ss/w_ena2_i_reset_OR_47_o11_317 ;
  wire N16;
  wire \time_keeper/w_ena_hh_i_reset_OR_63_o1 ;
  wire \time_keeper/w_ena_mm_i_reset_OR_57_o2 ;
  wire N20;
  wire N24;
  wire N26;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In1_324 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In2_325 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In3_326 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In4_327 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In5_328 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In6_329 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In7_330 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6-In8_331 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22_332 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_333 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24_334 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_335 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_336 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In31_337 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In32_338 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB_339 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In37_340 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In39_341 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In310_342 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In311_343 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB_344 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In317_345 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In31_346 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In33_347 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3-In34_348 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In11_349 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In12_350 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In15_351 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In16_352 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5-In17_353 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In31_354 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd1-In32_355 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In11_356 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In12_357 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In15_358 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In16_359 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In17_360 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4-In18_361 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_363 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_364 ;
  wire \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28 ;
  wire NlwRenamedSig_IO_i_reset_btn;
  wire NlwRenamedSig_IO_i_wr_btn;
  wire NlwRenamedSig_IO_i_val_inc_btn;
  wire NlwRenamedSig_IO_i_val_dec_btn;
  wire NlwRenamedSig_IO_i_sel_inc_btn;
  wire NlwRenamedSig_IO_i_sel_dec_btn;
  wire \lcd_driver/rs_e_output/o_e_glue_set_385 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<11>_rt_386 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<10>_rt_387 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<9>_rt_388 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<8>_rt_389 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<7>_rt_390 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<6>_rt_391 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<5>_rt_392 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<4>_rt_393 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<3>_rt_394 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<2>_rt_395 ;
  wire \pulse_gen/Maccum_r_cnt_f_cy<1>_rt_396 ;
  wire \pulse_gen/Maccum_r_cnt_f_xor<12>_rt_397 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB_398 ;
  wire N30;
  wire N31;
  wire N36;
  wire N38;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_403 ;
  wire N42;
  wire N43;
  wire N45;
  wire N46;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB_408 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB_409 ;
  wire \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB_410 ;
  wire \time_keeper/time_ss/second_digit/o_q_0_rstpot_411 ;
  wire N54;
  wire N55;
  wire N56;
  wire N57;
  wire N58;
  wire N59;
  wire N60;
  wire \lcd_driver/control_fsm/o_val_3_BRB0_419 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB1_420 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB2_421 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB3_422 ;
  wire N65;
  wire \lcd_driver/control_fsm/o_val_2_BRB1_424 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB2_425 ;
  wire N69;
  wire N70;
  wire \lcd_driver/control_fsm/o_val_1_BRB1_428 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB0_429 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB1_430 ;
  wire N78;
  wire \lcd_driver/control_fsm/o_val_0_BRB3_432 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB4_433 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB0_434 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB1_435 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB2_436 ;
  wire \time_keeper/time_mm/second_digit/o_q_0_BRB3_437 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB_438 ;
  wire N87;
  wire N89;
  wire N93;
  wire N94;
  wire N96;
  wire \pulse_gen/r_cnt_n_2_rstpot_444 ;
  wire \pulse_gen/r_cnt_n_1_rstpot_445 ;
  wire \pulse_gen/r_cnt_n_0_rstpot_446 ;
  wire N98;
  wire N100;
  wire N101;
  wire N102;
  wire N103;
  wire N104;
  wire N105;
  wire N106;
  wire N107;
  wire N108;
  wire \lcd_driver/control_fsm/o_val_3_BRB5_457 ;
  wire \lcd_driver/control_fsm/o_val_3_BRB9_458 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB5_459 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB6_460 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB7_461 ;
  wire \lcd_driver/control_fsm/o_val_2_BRB9_462 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB2_463 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB6_464 ;
  wire \lcd_driver/control_fsm/o_val_1_BRB8_465 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB5_466 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB7_467 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB9_468 ;
  wire \lcd_driver/control_fsm/o_val_0_BRB10_469 ;
  wire \wr_sel_control/wr_control/p2t/o_q_rstpot_470 ;
  wire \time_keeper/time_ss/first_digit/o_roll_high_rstpot_471 ;
  wire \time_keeper/time_mm/first_digit/o_roll_high_rstpot_472 ;
  wire \time_keeper/time_hh/first_digit/o_roll_high_rstpot_473 ;
  wire \time_keeper/time_hh/second_digit/o_q_rstpot_474 ;
  wire \lcd_driver/control_fsm/o_sel_2_rstpot_475 ;
  wire \lcd_driver/rs_e_output/o_rs_rstpot_476 ;
  wire \lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_477 ;
  wire \wr_sel_control/sel_control/sel/o_q_1_rstpot1_478 ;
  wire \wr_sel_control/sel_control/sel/o_q_0_rstpot1_479 ;
  wire N143;
  wire N144;
  wire N145;
  wire N146;
  wire N147;
  wire N148;
  wire N149;
  wire N150;
  wire \time_keeper/time_pm/o_q_BRB0_488 ;
  wire \time_keeper/time_pm/o_q_BRB1_489 ;
  wire \time_keeper/time_pm/o_q_BRB2_490 ;
  wire N154;
  wire N156;
  wire N158;
  wire N160;
  wire N162;
  wire N164;
  wire N166;
  wire N168;
  wire N173;
  wire N175;
  wire N176;
  wire N177;
  wire N178;
  wire N179;
  wire N180;
  wire N182;
  wire N184;
  wire N186;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_1_509 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_1_510 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_1_511 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_1_512 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_1_513 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_2_514 ;
  wire \btn_debouncer/val_inc_btn/o_pulse1_FRB_1_515 ;
  wire \time_keeper/time_hh/first_digit/o_roll_low_rstpot_516 ;
  wire \time_keeper/time_hh/first_digit/o_q_0_rstpot_517 ;
  wire \time_keeper/time_hh/first_digit/o_q_3_rstpot_518 ;
  wire \time_keeper/time_hh/first_digit/o_q_1_rstpot_519 ;
  wire \time_keeper/time_hh/first_digit/o_q_2_rstpot_520 ;
  wire \time_keeper/time_mm/first_digit/o_q_2_rstpot_521 ;
  wire \time_keeper/time_mm/first_digit/o_q_1_rstpot_522 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_2_523 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_2_524 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_2_525 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_2_526 ;
  wire \pulse_gen/o_pulse_f_1_527 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd3_3_528 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd2_3_529 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd4_3_530 ;
  wire \pulse_gen/o_pulse_f_2_531 ;
  wire \time_keeper/time_ss/first_digit/o_q_2_rstpot_532 ;
  wire \time_keeper/time_ss/first_digit/o_q_1_rstpot_533 ;
  wire \time_keeper/time_ss/second_digit/o_q_2_rstpot_534 ;
  wire \time_keeper/time_ss/second_digit/o_q_1_rstpot_535 ;
  wire \time_keeper/time_mm/second_digit/o_q_2_rstpot_536 ;
  wire \time_keeper/time_mm/second_digit/o_q_1_rstpot_537 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd6_3_538 ;
  wire \lcd_driver/control_fsm/state_FSM_FFd5_3_539 ;
  wire \wr_sel_control/wr_control/p2t/o_q_1_540 ;
  wire N188;
  wire N189;
  wire N190;
  wire N191;
  wire N192;
  wire N193;
  wire N194;
  wire N195;
  wire N196;
  wire N197;
  wire N198;
  wire N199;
  wire N200;
  wire N201;
  wire \lcd_driver/rs_e_output/o_rs_1_555 ;
  wire \lcd_driver/rs_e_output/o_e_1_556 ;
  wire \wr_sel_control/wr_control/p2t/o_q_2_557 ;
  wire \time_keeper/time_ss/first_digit/o_q_0_1_558 ;
  wire \btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_559 ;
  wire \btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_560 ;
  wire \btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_561 ;
  wire \i_clk_BUFGP/IBUFG_2 ;
  wire GND;
  wire VCC;
  wire \NLW_btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire \NLW_btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED ;
  wire [3 : 0] \time_keeper/time_hh/first_digit/o_q ;
  wire [7 : 7] w_mm;
  wire [2 : 0] \time_keeper/time_mm/second_digit/o_q ;
  wire [3 : 0] \time_keeper/time_mm/first_digit/o_q ;
  wire [3 : 0] \time_keeper/time_ss/first_digit/o_q ;
  wire [2 : 0] \time_keeper/time_ss/second_digit/o_q ;
  wire [1 : 0] \wr_sel_control/sel_control/sel/o_q ;
  wire [7 : 0] \lcd_driver/d_output/o_q ;
  wire [11 : 0] \pulse_gen/Maccum_r_cnt_f_cy ;
  wire [0 : 0] \pulse_gen/Maccum_r_cnt_f_lut ;
  wire [3 : 0] \pulse_gen/r_cnt_vf ;
  wire [6 : 0] \pulse_gen/r_cnt_n ;
  wire [12 : 0] \pulse_gen/Result ;
  wire [12 : 0] \pulse_gen/r_cnt_f ;
  wire [11 : 0] \lcd_driver/control_fsm/Mcount_r_cnt_lut ;
  wire [10 : 0] \lcd_driver/control_fsm/Mcount_r_cnt_cy ;
  wire [11 : 0] \lcd_driver/control_fsm/r_cnt ;
  wire [1 : 0] \lcd_driver/rs_e_output/r_cnt ;
  assign
    NlwRenamedSig_IO_i_reset_btn = i_reset_btn,
    NlwRenamedSig_IO_i_wr_btn = i_wr_btn,
    NlwRenamedSig_IO_i_val_inc_btn = i_val_inc_btn,
    NlwRenamedSig_IO_i_val_dec_btn = i_val_dec_btn,
    NlwRenamedSig_IO_i_sel_inc_btn = i_sel_inc_btn,
    NlwRenamedSig_IO_i_sel_dec_btn = i_sel_dec_btn;
  X_ZERO   XST_GND (
    .O(w_mm[7])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_dec_btn/dff_pq1/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_56 ),
    .O(\btn_debouncer/sel_dec_btn/dff_pq1/o_q_55 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_inc_btn/dff_pq1/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_58 ),
    .O(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_57 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/dff_ms0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(w_val_dec_btn),
    .O(\btn_debouncer/val_dec_btn/dff_ms0/o_q_61 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/dff_pq0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/val_dec_btn/dff_ms0/o_q_61 ),
    .O(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/dff_pq1/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .O(\btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/dff_ms0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(w_val_inc_btn),
    .O(\btn_debouncer/val_inc_btn/dff_ms0/o_q_64 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/dff_pq0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/val_inc_btn/dff_ms0/o_q_64 ),
    .O(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/dff_pq1/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .O(\btn_debouncer/val_inc_btn/dff_pq1/o_q_62 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/wr_btn/dff_pq1/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/wr_btn/dff_pq0/o_q_66 ),
    .O(\btn_debouncer/wr_btn/dff_pq1/o_q_65 ),
    .SET(GND),
    .RST(GND)
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<12>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [11]),
    .I1(\pulse_gen/Maccum_r_cnt_f_xor<12>_rt_397 ),
    .O(\pulse_gen/Result [12])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<11>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [10]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<11>_rt_386 ),
    .O(\pulse_gen/Result [11])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<11>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [10]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<11>_rt_386 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [11])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<10>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [9]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<10>_rt_387 ),
    .O(\pulse_gen/Result [10])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<10>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [9]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<10>_rt_387 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [10])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<9>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [8]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<9>_rt_388 ),
    .O(\pulse_gen/Result [9])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<9>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [8]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<9>_rt_388 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [9])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<8>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [7]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<8>_rt_389 ),
    .O(\pulse_gen/Result [8])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<8>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [7]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<8>_rt_389 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [8])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<7>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [6]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<7>_rt_390 ),
    .O(\pulse_gen/Result [7])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<7>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [6]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<7>_rt_390 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [7])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<6>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [5]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<6>_rt_391 ),
    .O(\pulse_gen/Result [6])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<6>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [5]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<6>_rt_391 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [6])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<5>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [4]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<5>_rt_392 ),
    .O(\pulse_gen/Result [5])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<5>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [4]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<5>_rt_392 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [5])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<4>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [3]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<4>_rt_393 ),
    .O(\pulse_gen/Result [4])
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<4>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [3]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<4>_rt_393 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [4])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<3>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [2]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<3>_rt_394 ),
    .O(\pulse_gen/Result<3>1 )
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<3>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [2]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<3>_rt_394 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [3])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<2>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [1]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<2>_rt_395 ),
    .O(\pulse_gen/Result<2>1 )
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<2>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [1]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<2>_rt_395 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [2])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<1>  (
    .I0(\pulse_gen/Maccum_r_cnt_f_cy [0]),
    .I1(\pulse_gen/Maccum_r_cnt_f_cy<1>_rt_396 ),
    .O(\pulse_gen/Result<1>1 )
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<1>  (
    .IB(\pulse_gen/Maccum_r_cnt_f_cy [0]),
    .IA(w_mm[7]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_cy<1>_rt_396 ),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [1])
  );
  X_XOR2   \pulse_gen/Maccum_r_cnt_f_xor<0>  (
    .I0(w_mm[7]),
    .I1(\pulse_gen/Maccum_r_cnt_f_lut [0]),
    .O(\pulse_gen/Result<0>1 )
  );
  X_MUX2   \pulse_gen/Maccum_r_cnt_f_cy<0>  (
    .IB(w_mm[7]),
    .IA(\pulse_gen/r_cnt_f [0]),
    .SEL(\pulse_gen/Maccum_r_cnt_f_lut [0]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy [0])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pulse_gen/Maccum_r_cnt_f_lut<0>  (
    .ADR0(\pulse_gen/r_cnt_f [0]),
    .ADR1(\pulse_gen/o_pulse_vf_10 ),
    .O(\pulse_gen/Maccum_r_cnt_f_lut [0])
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_5  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<5>1_105 ),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .O(\pulse_gen/r_cnt_n [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_4  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<4>1 ),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .O(\pulse_gen/r_cnt_n [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_6  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<6>1_104 ),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .O(\pulse_gen/r_cnt_n [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_3  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<3>2 ),
    .SRST(\pulse_gen/r_cnt_n_val ),
    .O(\pulse_gen/r_cnt_n [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_12  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [12]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_11  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [11]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_10  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [10]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_9  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [9]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_8  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [8]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_6  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [6]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_5  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [5]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_7  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [7]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_4  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [4]),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_3  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<3>1 ),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_2  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<2>1 ),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_1  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<1>1 ),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_3  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [3]),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .O(\pulse_gen/r_cnt_vf [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_f_0  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result<0>1 ),
    .SRST(\pulse_gen/r_cnt_f_val ),
    .O(\pulse_gen/r_cnt_f [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_2  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [2]),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .O(\pulse_gen/r_cnt_vf [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_1  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [1]),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .O(\pulse_gen/r_cnt_vf [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_vf_0  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Result [0]),
    .SRST(\pulse_gen/Mcount_r_cnt_vf_val ),
    .O(\pulse_gen/r_cnt_vf [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_n  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_val1_79 ),
    .SRST(w_reset_n),
    .O(\pulse_gen/o_pulse_n_12 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_f  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_f_val1 ),
    .SRST(w_reset_n),
    .O(\pulse_gen/o_pulse_f_11 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_vf  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/Mcount_r_cnt_vf_val1 ),
    .SRST(w_reset_n),
    .O(\pulse_gen/o_pulse_vf_10 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/o_roll  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_ss/o_roll_164 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/o_roll  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_mm/o_roll_163 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_3  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_ss/first_digit/o_q [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_0  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_ss/first_digit/o_q [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \time_keeper/time_ss/first_digit/o_roll_low  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .SSET(w_reset_n),
    .O(\time_keeper/time_ss/first_digit/o_roll_low_145 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_3  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .I(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_mm/first_digit/o_q [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_0  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .I(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_mm/first_digit/o_q [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \time_keeper/time_mm/first_digit/o_roll_low  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .I(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .SSET(w_reset_n),
    .O(\time_keeper/time_mm/first_digit/o_roll_low_151 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/o_roll  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_hh/o_roll_162 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_11  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [11]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_10  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [10]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_9  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [9]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_8  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [8]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_7  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [7]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_6  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [6]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_5  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [5]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_4  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [4]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_3  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [3]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_2  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [2]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_1  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt_0  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd1-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<11>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [10]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [11]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt11 )
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<10>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [9]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt10 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<10>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [9]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [10])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<9>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [8]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt9 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<9>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [8]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [9])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<8>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [7]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt8 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<8>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [7]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [8])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<7>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [6]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt7 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<7>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [6]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [7])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<6>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [5]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt6 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<6>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [5]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [6])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<5>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [4]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt5 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<5>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [4]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [5])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<4>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [3]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt4 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<4>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [3]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [4])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<3>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [2]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt3 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<3>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [2]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [3])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<2>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [1]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt2 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<2>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [1]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [2])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<1>  (
    .I0(\lcd_driver/control_fsm/Mcount_r_cnt_cy [0]),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt1 )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<1>  (
    .IB(\lcd_driver/control_fsm/Mcount_r_cnt_cy [0]),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [1])
  );
  X_XOR2   \lcd_driver/control_fsm/Mcount_r_cnt_xor<0>  (
    .I0(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ),
    .I1(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt )
  );
  X_MUX2   \lcd_driver/control_fsm/Mcount_r_cnt_cy<0>  (
    .IB(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv ),
    .IA(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_cy [0])
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_e_trigger  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o ),
    .O(\lcd_driver/control_fsm/o_e_trigger_68 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_sel_1  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .I(\lcd_driver/control_fsm/_n0291 ),
    .O(\lcd_driver/control_fsm/o_sel_1_75 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_sel_0  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .I(\lcd_driver/control_fsm/_n0293 ),
    .O(\lcd_driver/control_fsm/o_sel_0_74 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_data  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0366_inv ),
    .I(\lcd_driver/control_fsm/_n0289 ),
    .O(\lcd_driver/control_fsm/o_data_69 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/r_cnt_1  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/rs_e_output/_n0030_inv ),
    .I(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> ),
    .SRST(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ),
    .O(\lcd_driver/rs_e_output/r_cnt [1]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/r_cnt_0  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/rs_e_output/_n0030_inv ),
    .I(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> ),
    .SRST(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable ),
    .O(\lcd_driver/rs_e_output/r_cnt [0]),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_7  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> ),
    .O(\lcd_driver/d_output/o_q [7]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_6  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> ),
    .O(\lcd_driver/d_output/o_q [6]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_5  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> ),
    .O(\lcd_driver/d_output/o_q [5]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_4  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> ),
    .O(\lcd_driver/d_output/o_q [4]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_3  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> ),
    .O(\lcd_driver/d_output/o_q [3]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_2  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> ),
    .O(\lcd_driver/d_output/o_q [2]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_1  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> ),
    .O(\lcd_driver/d_output/o_q [1]),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/d_output/o_q_0  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> ),
    .O(\lcd_driver/d_output/o_q [0]),
    .SET(GND),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \btn_debouncer/val_dec_btn/o_pulse1  (
    .ADR0(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .ADR1(\btn_debouncer/val_dec_btn/dff_ms0/o_q_61 ),
    .O(N54)
  );
  X_LUT2 #(
    .INIT ( 4'h4 ))
  \btn_debouncer/val_inc_btn/o_pulse1  (
    .ADR0(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .ADR1(\btn_debouncer/val_inc_btn/dff_ms0/o_q_64 ),
    .O(N55)
  );
  X_LUT6 #(
    .INIT ( 64'h0808AA08FFFFFFFF ))
  \wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o1  (
    .ADR0(\pulse_gen/o_pulse_f_11 ),
    .ADR1(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_58 ),
    .ADR2(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_57 ),
    .ADR3(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_56 ),
    .ADR4(\btn_debouncer/sel_dec_btn/dff_pq1/o_q_55 ),
    .ADR5(i_reset_btn_IBUF_4),
    .O(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o )
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \pulse_gen/Mcount_r_cnt_vf_val111  (
    .ADR0(\pulse_gen/r_cnt_vf [0]),
    .ADR1(\pulse_gen/r_cnt_vf [1]),
    .ADR2(\pulse_gen/r_cnt_vf [2]),
    .ADR3(\pulse_gen/r_cnt_vf [3]),
    .O(\pulse_gen/Mcount_r_cnt_vf_val1 )
  );
  X_LUT5 #(
    .INIT ( 32'h55D55555 ))
  \pulse_gen/Mcount_r_cnt_vf_val21  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\pulse_gen/r_cnt_vf [2]),
    .ADR2(\pulse_gen/r_cnt_vf [1]),
    .ADR3(\pulse_gen/r_cnt_vf [0]),
    .ADR4(\pulse_gen/r_cnt_vf [3]),
    .O(\pulse_gen/Mcount_r_cnt_vf_val )
  );
  X_LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \pulse_gen/Result<4>11  (
    .ADR0(\pulse_gen/r_cnt_n [4]),
    .ADR1(\pulse_gen/r_cnt_n [2]),
    .ADR2(\pulse_gen/r_cnt_n [0]),
    .ADR3(\pulse_gen/r_cnt_n [3]),
    .ADR4(\pulse_gen/r_cnt_n [1]),
    .ADR5(\pulse_gen/o_pulse_f_11 ),
    .O(\pulse_gen/Result<4>1 )
  );
  X_LUT5 #(
    .INIT ( 32'h78F0F0F0 ))
  \pulse_gen/Result<3>21  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(\pulse_gen/r_cnt_n [3]),
    .ADR3(\pulse_gen/r_cnt_n [1]),
    .ADR4(\pulse_gen/o_pulse_f_11 ),
    .O(\pulse_gen/Result<3>2 )
  );
  X_LUT3 #(
    .INIT ( 8'h6A ))
  \pulse_gen/Mcount_r_cnt_vf_xor<2>11  (
    .ADR0(\pulse_gen/r_cnt_vf [2]),
    .ADR1(\pulse_gen/r_cnt_vf [0]),
    .ADR2(\pulse_gen/r_cnt_vf [1]),
    .O(\pulse_gen/Result [2])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \pulse_gen/Mcount_r_cnt_vf_xor<3>11  (
    .ADR0(\pulse_gen/r_cnt_vf [3]),
    .ADR1(\pulse_gen/r_cnt_vf [0]),
    .ADR2(\pulse_gen/r_cnt_vf [1]),
    .ADR3(\pulse_gen/r_cnt_vf [2]),
    .O(\pulse_gen/Result [3])
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \pulse_gen/Mcount_r_cnt_vf_xor<1>11  (
    .ADR0(\pulse_gen/r_cnt_vf [1]),
    .ADR1(\pulse_gen/r_cnt_vf [0]),
    .O(\pulse_gen/Result [1])
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \time_keeper/w_inc11  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/w_inc )
  );
  X_LUT5 #(
    .INIT ( 32'h00000100 ))
  \time_keeper/time_mm/w_roll_lth11  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/w_roll_lth )
  );
  X_LUT5 #(
    .INIT ( 32'h00010000 ))
  \time_keeper/time_ss/w_roll_lth11  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(\time_keeper/time_ss/w_roll_lth )
  );
  X_LUT6 #(
    .INIT ( 64'h5D555D5D55555555 ))
  \time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o11  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o )
  );
  X_LUT6 #(
    .INIT ( 64'h5D5555555D555D55 ))
  \time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o11  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(\time_keeper/time_ss/i_reset_w_roll_htl_OR_46_o )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \time_keeper/time_mm/second_digit/_n00371  (
    .ADR0(\time_keeper/time_mm/i_reset_w_roll_htl_OR_46_o ),
    .ADR1(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/_n0037 )
  );
  X_LUT6 #(
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
    .INIT ( 64'h0100000000000001 ))
  \time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR3(\time_keeper/w_inc ),
    .ADR4(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR5(\time_keeper/time_hh/second_digit/o_q_13 ),
    .O(\time_keeper/time_hh/o_q[7]_o_q[7]_OR_62_o )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In211  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In21 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>111  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \lcd_driver/control_fsm/state<5>41  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .O(\lcd_driver/control_fsm/state<5>4 )
  );
  X_LUT4 #(
    .INIT ( 16'h0004 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .O(N100)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000100000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [11]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [9]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1_225 )
  );
  X_LUT3 #(
    .INIT ( 8'h02 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .O(N101)
  );
  X_LUT4 #(
    .INIT ( 16'h4000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .O(N56)
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .O(N59)
  );
  X_LUT5 #(
    .INIT ( 32'h00000020 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .O(N60)
  );
  X_LUT3 #(
    .INIT ( 8'h04 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N57)
  );
  X_LUT5 #(
    .INIT ( 32'h02200202 ))
  \lcd_driver/control_fsm/state__n02911  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/_n0291 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFEFFFEFFEEFFEF ))
  \lcd_driver/control_fsm/_n0483_inv1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/_n0483_inv )
  );
  X_LUT6 #(
    .INIT ( 64'h333255553332555E ))
  \lcd_driver/control_fsm/Mmux_state[5]_PWR_17_o_MUX_197_o11  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state[5]_PWR_17_o_MUX_197_o )
  );
  X_LUT6 #(
    .INIT ( 64'h1111111511111114 ))
  \lcd_driver/control_fsm/_n0366_inv1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/_n0366_inv )
  );
  X_LUT5 #(
    .INIT ( 32'hFEEEEEEE ))
  \lcd_driver/control_fsm/state__n02891  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .O(\lcd_driver/control_fsm/_n0289 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFF8288 ))
  \lcd_driver/control_fsm/state__n02931  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .O(\lcd_driver/control_fsm/_n0293 )
  );
  X_LUT4 #(
    .INIT ( 16'h5D55 ))
  \lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable1  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\pulse_gen/o_pulse_vf_10 ),
    .ADR2(\lcd_driver/rs_e_output/o_e_1_556 ),
    .ADR3(\lcd_driver/control_fsm/o_e_trigger_68 ),
    .O(\lcd_driver/rs_e_output/Reset_OR_DriverANDClockEnable )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \lcd_driver/rs_e_output/_n0030_inv1  (
    .ADR0(\pulse_gen/o_pulse_vf_10 ),
    .ADR1(\lcd_driver/control_fsm/o_e_trigger_68 ),
    .ADR2(\lcd_driver/rs_e_output/o_e_1_556 ),
    .O(\lcd_driver/rs_e_output/_n0030_inv )
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \lcd_driver/rs_e_output/Madd_r_cnt[1]_GND_18_o_add_2_OUT_xor<1>11  (
    .ADR0(\lcd_driver/rs_e_output/r_cnt [1]),
    .ADR1(\lcd_driver/rs_e_output/r_cnt [0]),
    .O(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<1> )
  );
  X_LUT5 #(
    .INIT ( 32'h66647720 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2>1  (
    .ADR0(\lcd_driver/control_fsm/o_data_69 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_1_75 ),
    .ADR3(\lcd_driver/control_fsm/o_val_2 ),
    .ADR4(\lcd_driver/control_fsm/o_sel_2_76 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<2> )
  );
  X_LUT5 #(
    .INIT ( 32'h36B477A0 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0>1  (
    .ADR0(\lcd_driver/control_fsm/o_data_69 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_1_75 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0 ),
    .ADR4(\lcd_driver/control_fsm/o_sel_2_76 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<0> )
  );
  X_LUT6 #(
    .INIT ( 64'h227522FD727072F8 ))
  \lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3>1  (
    .ADR0(\lcd_driver/control_fsm/o_data_69 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR2(\lcd_driver/control_fsm/o_val_3 ),
    .ADR3(\lcd_driver/control_fsm/o_sel_1_75 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0 ),
    .ADR5(\lcd_driver/control_fsm/o_sel_2_76 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<3> )
  );
  X_LUT6 #(
    .INIT ( 64'h11AF00A033AF22A0 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT21  (
    .ADR0(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_1_75 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_2_76 ),
    .ADR3(\lcd_driver/control_fsm/o_data_69 ),
    .ADR4(\lcd_driver/control_fsm/o_val_1 ),
    .ADR5(\lcd_driver/control_fsm/o_val_0 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<1> )
  );
  X_LUT4 #(
    .INIT ( 16'h5510 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT61  (
    .ADR0(\lcd_driver/control_fsm/o_sel_1_75 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_2_76 ),
    .ADR3(\lcd_driver/control_fsm/o_data_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<5> )
  );
  X_LUT5 #(
    .INIT ( 32'h991C331C ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT51  (
    .ADR0(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_1_75 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_2_76 ),
    .ADR3(\lcd_driver/control_fsm/o_data_69 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<4> )
  );
  X_LUT4 #(
    .INIT ( 16'hBA10 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT71  (
    .ADR0(\lcd_driver/control_fsm/o_data_69 ),
    .ADR1(\lcd_driver/control_fsm/o_sel_2_76 ),
    .ADR2(\lcd_driver/control_fsm/o_sel_0_74 ),
    .ADR3(\lcd_driver/control_fsm/o_sel_1_75 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<6> )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \lcd_driver/d_output/Mmux_o_q[7]_o_q[7]_mux_27_OUT81  (
    .ADR0(\lcd_driver/control_fsm/o_sel_2_76 ),
    .ADR1(\lcd_driver/control_fsm/o_data_69 ),
    .O(\lcd_driver/d_output/o_q[7]_o_q[7]_mux_27_OUT<7> )
  );
  X_LUT5 #(
    .INIT ( 32'hCF45FFFF ))
  \lcd_driver/lcd_pulse_gen/_n001111  (
    .ADR0(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .ADR1(\btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .ADR3(\btn_debouncer/val_inc_btn/dff_pq1/o_q_62 ),
    .ADR4(\pulse_gen/o_pulse_f_11 ),
    .O(\lcd_driver/lcd_pulse_gen/_n00111 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \pulse_gen/r_cnt_n_val1_SW0  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .O(N2)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000008000 ))
  \pulse_gen/r_cnt_n_val1  (
    .ADR0(\pulse_gen/r_cnt_n [3]),
    .ADR1(\pulse_gen/r_cnt_n [5]),
    .ADR2(\pulse_gen/r_cnt_n [4]),
    .ADR3(\pulse_gen/r_cnt_n [6]),
    .ADR4(\pulse_gen/r_cnt_n [1]),
    .ADR5(N2),
    .O(\pulse_gen/r_cnt_n_val1_79 )
  );
  X_LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \pulse_gen/r_cnt_f_val11  (
    .ADR0(\pulse_gen/r_cnt_f [0]),
    .ADR1(\pulse_gen/r_cnt_f [12]),
    .ADR2(\pulse_gen/r_cnt_f [11]),
    .ADR3(\pulse_gen/r_cnt_f [9]),
    .ADR4(\pulse_gen/r_cnt_f [3]),
    .ADR5(\pulse_gen/r_cnt_f [1]),
    .O(\pulse_gen/r_cnt_f_val11_308 )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \pulse_gen/r_cnt_f_val12  (
    .ADR0(\pulse_gen/r_cnt_f [4]),
    .ADR1(\pulse_gen/r_cnt_f [2]),
    .ADR2(\pulse_gen/r_cnt_f [5]),
    .ADR3(\pulse_gen/r_cnt_f [6]),
    .ADR4(\pulse_gen/r_cnt_f [7]),
    .ADR5(\pulse_gen/r_cnt_f [8]),
    .O(\pulse_gen/r_cnt_f_val12_309 )
  );
  X_LUT3 #(
    .INIT ( 8'h08 ))
  \pulse_gen/r_cnt_f_val13  (
    .ADR0(\pulse_gen/r_cnt_f_val11_308 ),
    .ADR1(\pulse_gen/r_cnt_f_val12_309 ),
    .ADR2(\pulse_gen/r_cnt_f [10]),
    .O(\pulse_gen/r_cnt_f_val1 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \pulse_gen/Result<6>1_SW0  (
    .ADR0(\pulse_gen/r_cnt_n [3]),
    .ADR1(\pulse_gen/r_cnt_n [2]),
    .ADR2(\pulse_gen/r_cnt_n [0]),
    .O(N4)
  );
  X_LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \pulse_gen/Result<6>1  (
    .ADR0(\pulse_gen/r_cnt_n [6]),
    .ADR1(\pulse_gen/o_pulse_f_11 ),
    .ADR2(\pulse_gen/r_cnt_n [5]),
    .ADR3(\pulse_gen/r_cnt_n [4]),
    .ADR4(\pulse_gen/r_cnt_n [1]),
    .ADR5(N4),
    .O(\pulse_gen/Result<6>1_104 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \pulse_gen/Result<5>1_SW0  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .O(N6)
  );
  X_LUT6 #(
    .INIT ( 64'h6AAAAAAAAAAAAAAA ))
  \pulse_gen/Result<5>1  (
    .ADR0(\pulse_gen/r_cnt_n [5]),
    .ADR1(\pulse_gen/o_pulse_f_11 ),
    .ADR2(\pulse_gen/r_cnt_n [4]),
    .ADR3(\pulse_gen/r_cnt_n [1]),
    .ADR4(\pulse_gen/r_cnt_n [3]),
    .ADR5(N6),
    .O(\pulse_gen/Result<5>1_105 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o2_SW0  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .O(N8)
  );
  X_LUT6 #(
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
  X_LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o2_SW0  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [1]),
    .O(N10)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFF7FFF ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o2  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR5(N10),
    .O(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_bdd0 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o1_SW0  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(N12)
  );
  X_LUT6 #(
    .INIT ( 64'h0000F0FF0100F1FF ))
  \time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o1  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR4(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o_bdd0 ),
    .ADR5(N12),
    .O(\time_keeper/time_mm/o_q[7]_o_q[7]_OR_55_o )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFE ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o1_SW0  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/first_digit/o_q [1]),
    .O(N14)
  );
  X_LUT6 #(
    .INIT ( 64'h4545454545454575 ))
  \time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o1  (
    .ADR0(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o_bdd0 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR5(N14),
    .O(\time_keeper/time_ss/o_q[7]_o_q[7]_OR_55_o )
  );
  X_LUT6 #(
    .INIT ( 64'hFF00FF00FF00FF80 ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o11  (
    .ADR0(\time_keeper/time_ss/first_digit/o_roll_low_145 ),
    .ADR1(\btn_debouncer/val_dec_btn/o_pulse1_FRB_35 ),
    .ADR2(\pulse_gen/o_pulse_f_2_531 ),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_515 ),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o1 )
  );
  X_LUT6 #(
    .INIT ( 64'hFDF55D555D555D55 ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o13  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .ADR3(\pulse_gen/o_pulse_n_12 ),
    .ADR4(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o1 ),
    .ADR5(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o11_317 ),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o )
  );
  X_LUT3 #(
    .INIT ( 8'hFD ))
  \time_keeper/w_ena_ss_i_reset_OR_56_o1_SW0  (
    .ADR0(\pulse_gen/o_pulse_f_2_531 ),
    .ADR1(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(N16)
  );
  X_LUT6 #(
    .INIT ( 64'h5555F5F5FFDDF5F5 ))
  \time_keeper/w_ena_ss_i_reset_OR_56_o1  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\btn_debouncer/val_dec_btn/o_pulse1_FRB_35 ),
    .ADR2(\pulse_gen/o_pulse_n_12 ),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .ADR5(N16),
    .O(\time_keeper/w_ena_ss_i_reset_OR_56_o )
  );
  X_LUT6 #(
    .INIT ( 64'hFDDDDDDD75555555 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .ADR2(\pulse_gen/o_pulse_n_12 ),
    .ADR3(\time_keeper/time_ss/o_roll_164 ),
    .ADR4(\time_keeper/time_mm/o_roll_163 ),
    .ADR5(\time_keeper/w_ena_hh_i_reset_OR_63_o1 ),
    .O(\time_keeper/w_ena_hh_i_reset_OR_63_o )
  );
  X_LUT5 #(
    .INIT ( 32'hFDDD7555 ))
  \time_keeper/w_ena_mm_i_reset_OR_57_o22  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR2(\time_keeper/time_ss/o_roll_164 ),
    .ADR3(\pulse_gen/o_pulse_n_12 ),
    .ADR4(\time_keeper/w_ena_mm_i_reset_OR_57_o2 ),
    .O(\time_keeper/w_ena_mm_i_reset_OR_57_o )
  );
  X_LUT6 #(
    .INIT ( 64'h5555555700000000 ))
  \time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable1  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .ADR3(N10),
    .ADR4(\time_keeper/w_inc ),
    .ADR5(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .O(\time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable1_SW0  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [0]),
    .O(N20)
  );
  X_LUT6 #(
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
  X_LUT6 #(
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
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable1_SW0  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [0]),
    .O(N26)
  );
  X_LUT6 #(
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
  X_LUT5 #(
    .INIT ( 32'hC400FFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\pulse_gen/o_pulse_vf_10 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In1_324 )
  );
  X_LUT6 #(
    .INIT ( 64'h17379FBF5777DFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In3  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In3_326 )
  );
  X_LUT6 #(
    .INIT ( 64'hCF0F000000A00000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In4  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_205 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In4_327 )
  );
  X_LUT6 #(
    .INIT ( 64'h00000088F0F00000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In6  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_204 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_203 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_202 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In6_329 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In7  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In7_330 )
  );
  X_LUT6 #(
    .INIT ( 64'hCCCCCCCC44444000 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In8  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\pulse_gen/o_pulse_vf_10 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6-In7_330 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6-In6_329 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6-In5_328 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6-In4_327 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In8_331 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFF5F5FFFFD555 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In9  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6-In3_326 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6-In8_331 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6-In2_325 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In )
  );
  X_LUT5 #(
    .INIT ( 32'h44400400 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [1]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22_332 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [1]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_333 )
  );
  X_LUT5 #(
    .INIT ( 32'h44400400 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [2]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24_334 )
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>242  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [2]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_335 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFF550455045504 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>243  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB2_421 ),
    .ADR1(\lcd_driver/control_fsm/o_val_2_BRB5_459 ),
    .ADR2(\lcd_driver/control_fsm/o_val_2_BRB6_460 ),
    .ADR3(\lcd_driver/control_fsm/o_val_2_BRB7_461 ),
    .ADR4(\lcd_driver/control_fsm/o_val_3_BRB0_419 ),
    .ADR5(\lcd_driver/control_fsm/o_val_2_BRB9_462 ),
    .O(N70)
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>244  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB5_457 ),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB0_429 ),
    .ADR2(\lcd_driver/control_fsm/o_val_2_BRB9_462 ),
    .O(N69)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFAA80 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>245  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB2_421 ),
    .ADR1(\lcd_driver/control_fsm/o_val_2_BRB1_424 ),
    .ADR2(\lcd_driver/control_fsm/o_val_2_BRB2_425 ),
    .ADR3(N69),
    .ADR4(N70),
    .O(\lcd_driver/control_fsm/o_val_2 )
  );
  X_LUT6 #(
    .INIT ( 64'h1000555510001000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>261  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6-In21 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .ADR5(\time_keeper/time_hh/first_digit/o_q [3]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_336 )
  );
  X_LUT5 #(
    .INIT ( 32'hFF808080 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>262  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB5_457 ),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB0_429 ),
    .ADR2(\lcd_driver/control_fsm/o_val_3_BRB1_420 ),
    .ADR3(\lcd_driver/control_fsm/o_val_2_BRB2_425 ),
    .ADR4(\lcd_driver/control_fsm/o_val_3_BRB9_458 ),
    .O(N65)
  );
  X_LUT5 #(
    .INIT ( 32'hFFF88F88 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>263  (
    .ADR0(\lcd_driver/control_fsm/o_val_3_BRB0_419 ),
    .ADR1(\lcd_driver/control_fsm/o_val_3_BRB1_420 ),
    .ADR2(\lcd_driver/control_fsm/o_val_3_BRB2_421 ),
    .ADR3(\lcd_driver/control_fsm/o_val_3_BRB3_422 ),
    .ADR4(N65),
    .O(\lcd_driver/control_fsm/o_val_3 )
  );
  X_LUT6 #(
    .INIT ( 64'h8A8A2A2AA8AA2028 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In31  (
    .ADR0(\pulse_gen/o_pulse_vf_10 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In31_337 )
  );
  X_LUT4 #(
    .INIT ( 16'h0E0F ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In32  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [0]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [1]),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In32_338 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In33  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N107)
  );
  X_LUT6 #(
    .INIT ( 64'h000055FF3F3F7FFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In37  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_204 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_220 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_203 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In37_340 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In310  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In310_342 )
  );
  X_LUT6 #(
    .INIT ( 64'h44450001FFFFFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In311  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_205 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2-In310_342 ),
    .ADR5(\pulse_gen/o_pulse_vf_10 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In311_343 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFAAFFAAFDA8F5A0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In318  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2-In311_343 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2-In31_337 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2-In317_345 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2-In39_341 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In3 )
  );
  X_LUT4 #(
    .INIT ( 16'h43FF ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In31  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\pulse_gen/o_pulse_vf_10 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In31_346 )
  );
  X_LUT4 #(
    .INIT ( 16'h1000 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In34  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_222 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In34_348 )
  );
  X_LUT5 #(
    .INIT ( 32'h3C003CF2 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In11  (
    .ADR0(\lcd_driver/lcd_pulse_gen/o_update_pulse_67 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In11_349 )
  );
  X_LUT6 #(
    .INIT ( 64'h044004FF04400440 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In12  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5-In11_349 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In12_350 )
  );
  X_LUT3 #(
    .INIT ( 8'hF1 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In15  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In16_352 )
  );
  X_LUT6 #(
    .INIT ( 64'h500033335F0F3F3F ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In16  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_218 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In17_353 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA8A8A8 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In17  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5-In121 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5-In16_352 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5-In17_353 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5-In15_351 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In1 )
  );
  X_LUT6 #(
    .INIT ( 64'h0040400000004000 ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In31  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\pulse_gen/o_pulse_vf_10 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In31_354 )
  );
  X_LUT4 #(
    .INIT ( 16'h1500 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In11  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In11_356 )
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In12  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In12_357 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFB3B3FFCCB380 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In16  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4-In12_357 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4-In11_356 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4-In15_358 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In16_359 )
  );
  X_LUT6 #(
    .INIT ( 64'h888800808A8A0A8A ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In17  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_202 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In17_360 )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In18  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In18_361 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFAAA8AAA8AAA8 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In19  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5-In121 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4-In18_361 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4-In17_360 ),
    .ADR4(\pulse_gen/o_pulse_vf_10 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4-In16_359 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In1 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFBA2AFFFEAFEF ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 )
  );
  X_LUT3 #(
    .INIT ( 8'h10 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_363 )
  );
  X_LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR5(\time_keeper/time_hh/first_digit/o_q [0]),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_364 )
  );
  X_LUT6 #(
    .INIT ( 64'h00000C00AA00AA00 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24  (
    .ADR0(\lcd_driver/control_fsm/o_val_0_BRB10_469 ),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB9_468 ),
    .ADR2(\lcd_driver/control_fsm/o_val_0_BRB7_467 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0_BRB5_466 ),
    .ADR4(\lcd_driver/control_fsm/o_val_0_BRB0_429 ),
    .ADR5(\lcd_driver/control_fsm/o_val_3_BRB2_421 ),
    .O(N78)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFF888 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>27  (
    .ADR0(\lcd_driver/control_fsm/o_val_0_BRB4_433 ),
    .ADR1(\lcd_driver/control_fsm/o_val_0_BRB3_432 ),
    .ADR2(\lcd_driver/control_fsm/o_val_0_BRB1_430 ),
    .ADR3(\lcd_driver/control_fsm/o_val_0_BRB0_429 ),
    .ADR4(N78),
    .O(\lcd_driver/control_fsm/o_val_0 )
  );
  X_BUF   i_reset_btn_IBUF (
    .I(NlwRenamedSig_IO_i_reset_btn),
    .O(i_reset_btn_IBUF_4)
  );
  X_BUF   i_wr_btn_IBUF (
    .I(NlwRenamedSig_IO_i_wr_btn),
    .O(i_wr_btn_IBUF_5)
  );
  X_BUF   i_val_inc_btn_IBUF (
    .I(NlwRenamedSig_IO_i_val_inc_btn),
    .O(i_val_inc_btn_IBUF_6)
  );
  X_BUF   i_val_dec_btn_IBUF (
    .I(NlwRenamedSig_IO_i_val_dec_btn),
    .O(i_val_dec_btn_IBUF_7)
  );
  X_BUF   i_sel_inc_btn_IBUF (
    .I(NlwRenamedSig_IO_i_sel_inc_btn),
    .O(i_sel_inc_btn_IBUF_8)
  );
  X_BUF   i_sel_dec_btn_IBUF (
    .I(NlwRenamedSig_IO_i_sel_dec_btn),
    .O(i_sel_dec_btn_IBUF_9)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_e  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_e_glue_set_385 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/rs_e_output/o_e_48 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<11>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [11]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<11>_rt_386 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<10>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [10]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<10>_rt_387 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<9>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [9]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<9>_rt_388 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<8>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [8]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<8>_rt_389 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<7>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [7]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<7>_rt_390 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<6>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [6]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<6>_rt_391 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<5>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [5]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<5>_rt_392 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<4>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [4]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<4>_rt_393 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<3>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [3]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<3>_rt_394 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<2>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [2]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<2>_rt_395 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_cy<1>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [1]),
    .O(\pulse_gen/Maccum_r_cnt_f_cy<1>_rt_396 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \pulse_gen/Maccum_r_cnt_f_xor<12>_rt  (
    .ADR0(\pulse_gen/r_cnt_f [12]),
    .O(\pulse_gen/Maccum_r_cnt_f_xor<12>_rt_397 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N58)
  );
  X_LUT6 #(
    .INIT ( 64'hFF5FFFFF335FFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_205 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_202 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(N30)
  );
  X_LUT6 #(
    .INIT ( 64'hF0F0F0F020300010 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In14  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_222 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(\pulse_gen/o_pulse_vf_10 ),
    .ADR3(N30),
    .ADR4(N31),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5-In12_350 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In15_351 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFBFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In312  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .O(N102)
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o<11>1_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [4]),
    .O(N36)
  );
  X_LUT4 #(
    .INIT ( 16'hFFEF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>3_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [0]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [1]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N38)
  );
  X_LUT6 #(
    .INIT ( 64'hFF03FFFF5503FFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In32  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_220 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_222 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\pulse_gen/o_pulse_vf_10 ),
    .ADR5(N38),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In32_355 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(N103)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_403 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_216 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o )
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB_398 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_3_528 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_3_529 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_3_530 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [4]),
    .O(N42)
  );
  X_LUT5 #(
    .INIT ( 32'h00002000 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1_SW1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB_215 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_3_530 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_3_528 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_3_539 ),
    .O(N43)
  );
  X_LUT6 #(
    .INIT ( 64'hFF88FF08FF80FF00 ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In13_SW1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_214 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_216 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR4(N43),
    .ADR5(N42),
    .O(N31)
  );
  X_LUT4 #(
    .INIT ( 16'h0200 ))
  \time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .ADR1(\time_keeper/time_hh/second_digit/o_q_13 ),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o )
  );
  X_LUT4 #(
    .INIT ( 16'hD5DD ))
  \time_keeper/time_hh/i_reset_o_roll_OR_60_o1  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_hh/o_roll_162 ),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(\time_keeper/time_hh/i_reset_o_roll_OR_60_o )
  );
  X_LUT6 #(
    .INIT ( 64'hCFCFCFEFCFCFCFCF ))
  \time_keeper/time_ss/w_ena2_i_reset_OR_47_o12  (
    .ADR0(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .ADR1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_62 ),
    .ADR2(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR5(\pulse_gen/o_pulse_f_2_531 ),
    .O(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o11_317 )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAA8088AAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In32_SW0  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3-In31_346 ),
    .O(N45)
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAA822282A2 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In32_SW1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd3-In31_346 ),
    .O(N46)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFA8FFFFA8A8A8 ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In35  (
    .ADR0(\pulse_gen/o_pulse_vf_10 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3-In33_347 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3-In34_348 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o ),
    .ADR4(N46),
    .ADR5(N45),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In3 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFF7FFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N104)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000400000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB_408 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_216 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_22_o )
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFF7 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N108)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000400 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB_409 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [9]),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o )
  );
  X_LUT3 #(
    .INIT ( 8'hEF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N105)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000040000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>3  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB_410 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB_221 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/second_digit/o_q_0  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/second_digit/o_q_0_rstpot_411 ),
    .O(\time_keeper/time_ss/second_digit/o_q [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h5410 ))
  \time_keeper/time_mm/second_digit/o_q_0_rstpot  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q_0_BRB0_434 ),
    .ADR1(\time_keeper/time_mm/second_digit/o_q_0_BRB1_435 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q_0_BRB2_436 ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q_0_BRB3_437 ),
    .O(\time_keeper/time_mm/second_digit/o_q [0])
  );
  X_LUT6 #(
    .INIT ( 64'h000000008A880000 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o11  (
    .ADR0(\pulse_gen/o_pulse_f_1_527 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_515 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ),
    .ADR3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .ADR4(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\time_keeper/w_ena_hh_i_reset_OR_63_o1 )
  );
  X_LUT6 #(
    .INIT ( 64'h0F00040000000000 ))
  \time_keeper/w_ena_mm_i_reset_OR_57_o21  (
    .ADR0(\btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ),
    .ADR1(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_515 ),
    .ADR5(\pulse_gen/o_pulse_f_11 ),
    .O(\time_keeper/w_ena_mm_i_reset_OR_57_o2 )
  );
  X_LUT6 #(
    .INIT ( 64'h7555FF5500000000 ))
  \time_keeper/time_hh/first_digit/_n00371  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\btn_debouncer/val_inc_btn/dff_pq1/o_q_62 ),
    .ADR2(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .ADR3(\time_keeper/time_hh/o_roll_162 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/_n0037 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_dec_btn/o_pulse1_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(N54),
    .O(\btn_debouncer/val_dec_btn/o_pulse1_FRB_35 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/o_pulse1_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(N55),
    .O(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N56),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>11_FRB_214 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N57),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_FRB_215 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N58),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW0_FRB_398 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N59),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_216 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N60),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_FRB_221 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB0  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_210 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB0_419 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB1  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/o_val_3 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB1_420 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB2  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB2_421 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB3  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_336 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB3_422 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB1  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\time_keeper/time_ss/first_digit/o_q [2]),
    .O(\lcd_driver/control_fsm/o_val_2_BRB1_424 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB2  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB2_425 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB1  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\time_keeper/time_ss/first_digit/o_q [1]),
    .O(\lcd_driver/control_fsm/o_val_1_BRB1_428 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB0  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB0_429 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB1  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB1_430 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB3  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/o_val_0 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB3_432 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB4  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB4_433 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB0  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/_n0037 ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB0_434 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB1_435 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB2_436 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_0_BRB3  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .O(\time_keeper/time_mm/second_digit/o_q_0_BRB3_437 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFFD ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .O(N106)
  );
  X_LUT4 #(
    .INIT ( 16'hFDFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_34_o<11>1_SW1  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR1(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N87)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFAAAAFFFF8088 ))
  \lcd_driver/control_fsm/state_FSM_FFd1-In33  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR2(N87),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>1_225 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1-In31_354 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd1-In32_355 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd1-In3 )
  );
  X_LUT5 #(
    .INIT ( 32'h01010030 ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In5  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In5_328 )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA2AAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<0>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [0]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [0])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA2AAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<1>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [1]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [1])
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFDFF00000000 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<2>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt [2]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [2])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAAA2AAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<3>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [3]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [3])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<4>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [4]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [4])
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFDFF00000000 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<5>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt [5]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [5])
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFBFF00000000 ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<6>  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_3_538 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_3_539 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_3_528 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_3_530 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt [6]),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [6])
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFDFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o<11>1_SW0  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>31_FRB_216 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR2(\lcd_driver/control_fsm/r_cnt [2]),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/r_cnt [5]),
    .O(N89)
  );
  X_LUT6 #(
    .INIT ( 64'h0C0FFFFF080FFFFF ))
  \lcd_driver/control_fsm/state_FSM_FFd5-In1211  (
    .ADR0(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_403 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR4(\pulse_gen/o_pulse_vf_10 ),
    .ADR5(N89),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5-In121 )
  );
  X_LUT6 #(
    .INIT ( 64'h000A000A200A000A ))
  \lcd_driver/control_fsm/state_FSM_FFd3-In33  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_403 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(N89),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3-In33_347 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o14_SW0  (
    .ADR0(\time_keeper/time_mm/first_digit/o_roll_high_150 ),
    .ADR1(\time_keeper/time_ss/o_roll_164 ),
    .ADR2(\pulse_gen/o_pulse_n_12 ),
    .O(N93)
  );
  X_LUT6 #(
    .INIT ( 64'hCCCC0A0000000000 ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o14_SW1  (
    .ADR0(\time_keeper/time_mm/first_digit/o_roll_low_151 ),
    .ADR1(\time_keeper/time_mm/first_digit/o_roll_high_150 ),
    .ADR2(\btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ),
    .ADR3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_515 ),
    .ADR5(\pulse_gen/o_pulse_f_2_531 ),
    .O(N94)
  );
  X_LUT6 #(
    .INIT ( 64'h75FF755555FF5555 ))
  \time_keeper/time_mm/w_ena2_i_reset_OR_47_o14  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .ADR4(N93),
    .ADR5(N94),
    .O(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o )
  );
  X_LUT4 #(
    .INIT ( 16'h7555 ))
  \pulse_gen/r_cnt_f_val2  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\pulse_gen/r_cnt_f [10]),
    .ADR2(\pulse_gen/r_cnt_f_val11_308 ),
    .ADR3(\pulse_gen/r_cnt_f_val12_309 ),
    .O(\pulse_gen/r_cnt_f_val )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<7>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [7]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_3_529 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [7])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<8>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [8]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [8])
  );
  X_LUT5 #(
    .INIT ( 32'hFFFFFFDF ))
  \lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv1  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd5_1_510 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_1_512 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_1_511 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_1_509 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_1_513 ),
    .O(\lcd_driver/control_fsm/state[5]_GND_17_o_equal_50_o_inv )
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<9>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [9]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [9])
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<10>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [10]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [10])
  );
  X_LUT5 #(
    .INIT ( 32'hFFFF5410 ))
  \time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable1_SW0  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q_0_BRB0_434 ),
    .ADR1(\time_keeper/time_mm/second_digit/o_q_0_BRB1_435 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q_0_BRB2_436 ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q_0_BRB3_437 ),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [2]),
    .O(N24)
  );
  X_LUT6 #(
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
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA8AAAA ))
  \lcd_driver/control_fsm/state_FSM_FFd6-In2  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(N96),
    .ADR2(N36),
    .ADR3(\lcd_driver/control_fsm/r_cnt [9]),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6-In1_324 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6-In2_325 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_2  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_2_rstpot_444 ),
    .O(\pulse_gen/r_cnt_n [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_1  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_1_rstpot_445 ),
    .O(\pulse_gen/r_cnt_n [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \pulse_gen/r_cnt_n_0  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_n_0_rstpot_446 ),
    .O(\pulse_gen/r_cnt_n [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h00006AAA ))
  \pulse_gen/r_cnt_n_2_rstpot  (
    .ADR0(\pulse_gen/r_cnt_n [2]),
    .ADR1(\pulse_gen/r_cnt_n [1]),
    .ADR2(\pulse_gen/r_cnt_n [0]),
    .ADR3(\pulse_gen/o_pulse_f_11 ),
    .ADR4(\pulse_gen/r_cnt_n_val ),
    .O(\pulse_gen/r_cnt_n_2_rstpot_444 )
  );
  X_LUT4 #(
    .INIT ( 16'h1444 ))
  \pulse_gen/r_cnt_n_1_rstpot  (
    .ADR0(\pulse_gen/r_cnt_n_val ),
    .ADR1(\pulse_gen/r_cnt_n [1]),
    .ADR2(\pulse_gen/r_cnt_n [0]),
    .ADR3(\pulse_gen/o_pulse_f_11 ),
    .O(\pulse_gen/r_cnt_n_1_rstpot_445 )
  );
  X_LUT3 #(
    .INIT ( 8'h14 ))
  \pulse_gen/r_cnt_n_0_rstpot  (
    .ADR0(\pulse_gen/r_cnt_n_val ),
    .ADR1(\pulse_gen/r_cnt_n [0]),
    .ADR2(\pulse_gen/o_pulse_f_11 ),
    .O(\pulse_gen/r_cnt_n_0_rstpot_446 )
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \pulse_gen/r_cnt_n_val1_SW1  (
    .ADR0(\pulse_gen/r_cnt_n [3]),
    .ADR1(\pulse_gen/r_cnt_n [1]),
    .O(N98)
  );
  X_LUT6 #(
    .INIT ( 64'h555555555555D555 ))
  \pulse_gen/r_cnt_n_val2  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\pulse_gen/r_cnt_n [6]),
    .ADR2(\pulse_gen/r_cnt_n [5]),
    .ADR3(\pulse_gen/r_cnt_n [4]),
    .ADR4(N98),
    .ADR5(N2),
    .O(\pulse_gen/r_cnt_n_val )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N100),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_12_o<11>21_FRB_203 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N101),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N102),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB_344 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N103),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_SW1_FRB_403 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N104),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_SW0_FRB_408 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N105),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_SW0_FRB_410 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N106),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB_438 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N107),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB_339 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N108),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o<11>11_SW0_FRB_409 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB5  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/state<5>4 ),
    .O(\lcd_driver/control_fsm/o_val_3_BRB5_457 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_3_BRB9  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(\lcd_driver/control_fsm/o_val_3_BRB9_458 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB5  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>241_335 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB5_459 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB6  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>11 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB6_460 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB7  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>24_334 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB7_461 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_2_BRB9  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/o_val_2 ),
    .O(\lcd_driver/control_fsm/o_val_2_BRB9_462 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB2  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>222_333 ),
    .O(\lcd_driver/control_fsm/o_val_1_BRB2_463 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB6  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22_332 ),
    .O(\lcd_driver/control_fsm/o_val_1_BRB6_464 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_1_BRB8  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/o_val_1 ),
    .O(\lcd_driver/control_fsm/o_val_1_BRB8_465 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB5  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>21_363 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB5_466 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB7  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB7_467 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB9  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB9_468 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_val_0_BRB10  (
    .CLK(i_clk_BUFGP),
    .CE(\lcd_driver/control_fsm/_n0483_inv ),
    .I(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>23_364 ),
    .O(\lcd_driver/control_fsm/o_val_0_BRB10_469 ),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \wr_sel_control/wr_control/p2t/o_q  (
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/wr_control/p2t/o_q_rstpot_470 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_38 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \time_keeper/time_pm/o_q_rstpot  (
    .ADR0(\time_keeper/time_pm/o_q_BRB0_488 ),
    .ADR1(\time_keeper/time_pm/o_q_BRB1_489 ),
    .ADR2(\time_keeper/time_pm/o_q_BRB2_490 ),
    .O(\time_keeper/time_pm/o_q )
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \time_keeper/time_ss/first_digit/o_roll_high_rstpot  (
    .ADR0(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .ADR1(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .ADR2(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .O(\time_keeper/time_ss/first_digit/o_roll_high_rstpot_471 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_roll_high  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_roll_high_rstpot_471 ),
    .O(\time_keeper/time_ss/first_digit/o_roll_high_144 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \time_keeper/time_mm/first_digit/o_roll_high_rstpot  (
    .ADR0(\time_keeper/time_mm/first_digit/o_roll_high_150 ),
    .ADR1(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .ADR2(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .O(\time_keeper/time_mm/first_digit/o_roll_high_rstpot_472 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_roll_high  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_roll_high_rstpot_472 ),
    .O(\time_keeper/time_mm/first_digit/o_roll_high_150 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hCA ))
  \time_keeper/time_hh/first_digit/o_roll_high_rstpot  (
    .ADR0(\time_keeper/time_hh/first_digit/o_roll_high_200 ),
    .ADR1(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o ),
    .ADR2(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .O(\time_keeper/time_hh/first_digit/o_roll_high_rstpot_473 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_roll_high  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_roll_high_rstpot_473 ),
    .O(\time_keeper/time_hh/first_digit/o_roll_high_200 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/second_digit/o_q  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/second_digit/o_q_rstpot_474 ),
    .O(\time_keeper/time_hh/second_digit/o_q_13 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/o_sel_2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/o_sel_2_rstpot_475 ),
    .O(\lcd_driver/control_fsm/o_sel_2_76 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_rs  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_rs_rstpot_476 ),
    .O(\lcd_driver/rs_e_output/o_rs_47 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_477 ),
    .O(\lcd_driver/lcd_pulse_gen/o_update_pulse_67 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \wr_sel_control/sel_control/sel/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/sel_control/sel/o_q_1_rstpot1_478 ),
    .O(\wr_sel_control/sel_control/sel/o_q [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \wr_sel_control/sel_control/sel/o_q_0  (
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/sel_control/sel/o_q_0_rstpot1_479 ),
    .O(\wr_sel_control/sel_control/sel/o_q [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAAAA8AAAAA ))
  \lcd_driver/control_fsm/Mcount_r_cnt_lut<11>  (
    .ADR0(\lcd_driver/control_fsm/r_cnt [11]),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/Mcount_r_cnt_lut [11])
  );
  X_LUT3 #(
    .INIT ( 8'h2C ))
  \time_keeper/time_hh/second_digit/o_q_rstpot  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_hh/second_digit/o_q_13 ),
    .ADR2(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o ),
    .O(\time_keeper/time_hh/second_digit/o_q_rstpot_474 )
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N143),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_202 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N144),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_222 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N145),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_FRB_204 ),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N146),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_217 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N147),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21_FRB_220 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N148),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_218 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N149),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_205 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_vf_10 ),
    .I(N150),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1_FRB_206 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_pm/o_q_BRB0  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/w_ena_pm_i_reset_OR_64_o ),
    .O(\time_keeper/time_pm/o_q_BRB0_488 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_pm/o_q_BRB1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_pm/o_q ),
    .O(\time_keeper/time_pm/o_q_BRB1_489 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_pm/o_q_BRB2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/i_reset_o_pm_AND_39_o ),
    .O(\time_keeper/time_pm/o_q_BRB2_490 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT3 #(
    .INIT ( 8'h20 ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In15_SW0  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_3_529 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_3_530 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_FRB_205 ),
    .O(N154)
  );
  X_LUT6 #(
    .INIT ( 64'h0000FFFF0000C0CA ))
  \lcd_driver/control_fsm/state_FSM_FFd4-In15  (
    .ADR0(\lcd_driver/lcd_pulse_gen/o_update_pulse_67 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1_FRB_222 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(N154),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4-In15_358 )
  );
  X_LUT4 #(
    .INIT ( 16'hFBFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(N156)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .ADR4(N56),
    .ADR5(N156),
    .O(N143)
  );
  X_LUT4 #(
    .INIT ( 16'hFFFD ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(N158)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000010000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>2  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .ADR4(N56),
    .ADR5(N158),
    .O(N149)
  );
  X_LUT4 #(
    .INIT ( 16'hFF7F ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(N160)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000020000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_32_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .ADR4(N56),
    .ADR5(N160),
    .O(N144)
  );
  X_LUT3 #(
    .INIT ( 8'hEF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .O(N162)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000100000 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>21  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .ADR5(N162),
    .O(N147)
  );
  X_LUT5 #(
    .INIT ( 32'hDFFFFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW2  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .O(N164)
  );
  X_LUT5 #(
    .INIT ( 32'hFFFBFFFF ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_10_o<11>11_SW3  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt5 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt6 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt1 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .O(N166)
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>21_SW0  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt2 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .O(N168)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .ADR4(N164),
    .ADR5(N168),
    .O(N148)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000002 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_28_o<11>1  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .ADR4(N166),
    .ADR5(N168),
    .O(N150)
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAA222AAAAA ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW0_G  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\pulse_gen/o_pulse_n_12 ),
    .ADR2(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .ADR3(\time_keeper/time_hh/o_roll_162 ),
    .ADR4(\time_keeper/time_mm/o_roll_163 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(N173)
  );
  X_LUT6 #(
    .INIT ( 64'hAAAAAAAA222AAAAA ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW1_G  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\pulse_gen/o_pulse_n_12 ),
    .ADR2(\time_keeper/time_hh/first_digit/o_roll_high_200 ),
    .ADR3(\time_keeper/time_hh/o_roll_162 ),
    .ADR4(\time_keeper/time_mm/o_roll_163 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(N175)
  );
  X_LUT4 #(
    .INIT ( 16'hFD55 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW2_F  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .ADR2(\time_keeper/time_hh/o_roll_162 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(N176)
  );
  X_LUT6 #(
    .INIT ( 64'hFFDDFFDDF5D55555 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW2_G  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .ADR2(\time_keeper/time_mm/o_roll_163 ),
    .ADR3(\time_keeper/time_hh/o_roll_162 ),
    .ADR4(\pulse_gen/o_pulse_n_12 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(N177)
  );
  X_LUT4 #(
    .INIT ( 16'hFD55 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW3_F  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_hh/first_digit/o_roll_high_200 ),
    .ADR2(\time_keeper/time_hh/o_roll_162 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(N178)
  );
  X_LUT6 #(
    .INIT ( 64'hFFDDFFDDF5D55555 ))
  \time_keeper/w_ena_hh_i_reset_OR_63_o12_SW3_G  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_hh/first_digit/o_roll_high_200 ),
    .ADR2(\time_keeper/time_mm/o_roll_163 ),
    .ADR3(\time_keeper/time_hh/o_roll_162 ),
    .ADR4(\pulse_gen/o_pulse_n_12 ),
    .ADR5(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(N179)
  );
  X_MUX2   \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11  (
    .IA(N180),
    .IB(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .O(N145)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_16_o<11>11_F  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N180)
  );
  X_MUX2   \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11  (
    .IA(N182),
    .IB(w_mm[7]),
    .SEL(\lcd_driver/control_fsm/Mcount_r_cnt11 ),
    .O(N146)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000040 ))
  \lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_F  (
    .ADR0(\lcd_driver/control_fsm/Mcount_r_cnt4 ),
    .ADR1(\lcd_driver/control_fsm/Mcount_r_cnt3 ),
    .ADR2(\lcd_driver/control_fsm/Mcount_r_cnt7 ),
    .ADR3(\lcd_driver/control_fsm/Mcount_r_cnt8 ),
    .ADR4(\lcd_driver/control_fsm/Mcount_r_cnt9 ),
    .ADR5(\lcd_driver/control_fsm/Mcount_r_cnt10 ),
    .O(N182)
  );
  X_LUT5 #(
    .INIT ( 32'h88882888 ))
  \wr_sel_control/wr_control/p2t/o_q_rstpot  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR2(\pulse_gen/o_pulse_f_11 ),
    .ADR3(\btn_debouncer/wr_btn/dff_pq0/o_q_66 ),
    .ADR4(\btn_debouncer/wr_btn/dff_pq1/o_q_65 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_rstpot_470 )
  );
  X_LUT5 #(
    .INIT ( 32'hEAAA2AAA ))
  \lcd_driver/rs_e_output/o_rs_rstpot  (
    .ADR0(\lcd_driver/rs_e_output/o_rs_1_555 ),
    .ADR1(i_reset_btn_IBUF_4),
    .ADR2(\pulse_gen/o_pulse_vf_10 ),
    .ADR3(\lcd_driver/control_fsm/o_e_trigger_68 ),
    .ADR4(\lcd_driver/control_fsm/o_data_69 ),
    .O(\lcd_driver/rs_e_output/o_rs_rstpot_476 )
  );
  X_LUT6 #(
    .INIT ( 64'h7775FFF52220FAF0 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\lcd_driver/lcd_pulse_gen/_n00111 ),
    .ADR2(\lcd_driver/lcd_pulse_gen/o_update_pulse_67 ),
    .ADR3(N184),
    .ADR4(\pulse_gen/o_pulse_vf_10 ),
    .ADR5(\pulse_gen/o_pulse_n_12 ),
    .O(\lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_477 )
  );
  X_LUT2 #(
    .INIT ( 4'h1 ))
  \lcd_driver/control_fsm/o_sel_2_rstpot_SW0  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(N186)
  );
  X_LUT6 #(
    .INIT ( 64'hAABA8ABABABABAAA ))
  \lcd_driver/control_fsm/o_sel_2_rstpot  (
    .ADR0(\lcd_driver/control_fsm/o_sel_2_76 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR2(N186),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .O(\lcd_driver/control_fsm/o_sel_2_rstpot_475 )
  );
  X_LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  X_LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  X_LUT6 #(
    .INIT ( 64'h0100010000010100 ))
  \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_44_o )
  );
  X_LUT6 #(
    .INIT ( 64'h5545FFED5545FFCD ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2211  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>221_210 )
  );
  X_LUT5 #(
    .INIT ( 32'h00010000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>22311  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>2231 )
  );
  X_LUT4 #(
    .INIT ( 16'h028A ))
  \time_keeper/i_reset_o_pm_AND_39_o1  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_pm/o_q_BRB0_488 ),
    .ADR2(\time_keeper/time_pm/o_q_BRB1_489 ),
    .ADR3(\time_keeper/time_pm/o_q_BRB2_490 ),
    .O(\time_keeper/i_reset_o_pm_AND_39_o )
  );
  X_LUT6 #(
    .INIT ( 64'h6868AA68AAAAA9AA ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>11  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR5(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 )
  );
  X_LUT6 #(
    .INIT ( 64'h2DD220D22DD22DD2 ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .ADR4(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_ss/first_digit/o_q [3]),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT5 #(
    .INIT ( 32'h2FD0FD02 ))
  \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT6 #(
    .INIT ( 64'h0200020000020200 ))
  \time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .ADR1(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_ss/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  X_LUT6 #(
    .INIT ( 64'h6868AA68AAAAA9AA ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>11  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR5(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 )
  );
  X_LUT6 #(
    .INIT ( 64'h2DD220D22DD22DD2 ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR5(\time_keeper/time_mm/first_digit/o_q [3]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT5 #(
    .INIT ( 32'h2FD0FD02 ))
  \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT6 #(
    .INIT ( 64'h0200020000020200 ))
  \time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  X_LUT6 #(
    .INIT ( 64'h0200020000020200 ))
  \time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR3(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o )
  );
  X_LUT5 #(
    .INIT ( 32'h57555555 ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_hh/second_digit/o_q_13 ),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR4(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_LUT6 #(
    .INIT ( 64'h000000006AA96A6A ))
  \time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR2(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR4(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR5(\time_keeper/time_hh/w_carry_low_o_q[4]_AND_35_o ),
    .O(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT5 #(
    .INIT ( 32'h7F2A2A2A ))
  \lcd_driver/rs_e_output/o_e_glue_set  (
    .ADR0(\lcd_driver/rs_e_output/o_e_1_556 ),
    .ADR1(\lcd_driver/rs_e_output/r_cnt [1]),
    .ADR2(\lcd_driver/rs_e_output/r_cnt [0]),
    .ADR3(\lcd_driver/control_fsm/o_e_trigger_68 ),
    .ADR4(\pulse_gen/o_pulse_vf_10 ),
    .O(\lcd_driver/rs_e_output/o_e_glue_set_385 )
  );
  X_LUT5 #(
    .INIT ( 32'h0808AA08 ))
  \lcd_driver/lcd_pulse_gen/o_update_pulse_rstpot_SW0  (
    .ADR0(\pulse_gen/o_pulse_f_11 ),
    .ADR1(\btn_debouncer/val_inc_btn/dff_pq0/o_q_63 ),
    .ADR2(\btn_debouncer/val_inc_btn/dff_pq1/o_q_62 ),
    .ADR3(\btn_debouncer/val_dec_btn/dff_pq0/o_q_60 ),
    .ADR4(\btn_debouncer/val_dec_btn/dff_pq1/o_q_59 ),
    .O(N184)
  );
  X_LUT3 #(
    .INIT ( 8'h64 ))
  \wr_sel_control/sel_control/sel/o_q_0_rstpot1  (
    .ADR0(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .ADR1(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR2(i_reset_btn_IBUF_4),
    .O(\wr_sel_control/sel_control/sel/o_q_0_rstpot1_479 )
  );
  X_LUT5 #(
    .INIT ( 32'h2FD0FD02 ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [1]),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT5 #(
    .INIT ( 32'h3C33C2CC ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR2(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR3(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR4(\time_keeper/time_mm/second_digit/o_q [0]),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT5 #(
    .INIT ( 32'h2FD0FD02 ))
  \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2>1  (
    .ADR0(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR1(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR2(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR3(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [1]),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> )
  );
  X_LUT5 #(
    .INIT ( 32'h66966686 ))
  \time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1>1  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR2(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR4(\time_keeper/time_ss/second_digit/o_q [2]),
    .O(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> )
  );
  X_LUT4 #(
    .INIT ( 16'hFF27 ))
  \time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q_0_BRB1_435 ),
    .ADR1(\time_keeper/time_mm/second_digit/o_q_0_BRB3_437 ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q_0_BRB2_436 ),
    .ADR3(\time_keeper/time_mm/second_digit/o_q_0_BRB0_434 ),
    .O(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_LUT6 #(
    .INIT ( 64'hDD005D805588D508 ))
  \wr_sel_control/sel_control/sel/o_q_1_rstpot1  (
    .ADR0(\wr_sel_control/sel_control/w_ena_sel_i_reset_OR_69_o ),
    .ADR1(i_reset_btn_IBUF_4),
    .ADR2(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_58 ),
    .ADR3(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR4(\btn_debouncer/sel_inc_btn/dff_pq1/o_q_57 ),
    .ADR5(\wr_sel_control/sel_control/sel/o_q [0]),
    .O(\wr_sel_control/sel_control/sel/o_q_1_rstpot1_478 )
  );
  X_LUT3 #(
    .INIT ( 8'h2C ))
  \time_keeper/time_ss/second_digit/o_q_0_rstpot  (
    .ADR0(i_reset_btn_IBUF_4),
    .ADR1(\time_keeper/time_ss/second_digit/o_q [0]),
    .ADR2(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .O(\time_keeper/time_ss/second_digit/o_q_0_rstpot_411 )
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_1_509 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_1_510 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_1_511 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_1_512 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_1_513 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2_2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_2_514 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/val_inc_btn/o_pulse1_FRB_1  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(N55),
    .O(\btn_debouncer/val_inc_btn/o_pulse1_FRB_1_515 ),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'hFFD8 ))
  \time_keeper/time_hh/first_digit/o_roll_low_rstpot  (
    .ADR0(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR1(\time_keeper/time_hh/first_digit/o_q[3]_o_q[3]_OR_45_o ),
    .ADR2(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .ADR3(\time_keeper/time_hh/first_digit/_n0037 ),
    .O(\time_keeper/time_hh/first_digit/o_roll_low_rstpot_516 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_roll_low  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_roll_low_rstpot_516 ),
    .O(\time_keeper/time_hh/first_digit/o_roll_low_199 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_hh/first_digit/o_q_0_rstpot  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [0]),
    .ADR1(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .ADR2(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR3(\time_keeper/time_hh/first_digit/_n0037 ),
    .O(\time_keeper/time_hh/first_digit/o_q_0_rstpot_517 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_0  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_0_rstpot_517 ),
    .O(\time_keeper/time_hh/first_digit/o_q [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_hh/first_digit/o_q_3_rstpot  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [3]),
    .ADR1(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR2(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<3>1 ),
    .ADR3(\time_keeper/time_hh/first_digit/_n0037 ),
    .O(\time_keeper/time_hh/first_digit/o_q_3_rstpot_518 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_3  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_3_rstpot_518 ),
    .O(\time_keeper/time_hh/first_digit/o_q [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_hh/first_digit/o_q_1_rstpot  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [1]),
    .ADR1(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR2(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR3(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_hh/first_digit/o_q_1_rstpot_519 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_1_rstpot_519 ),
    .O(\time_keeper/time_hh/first_digit/o_q [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_hh/first_digit/o_q_2_rstpot  (
    .ADR0(\time_keeper/time_hh/first_digit/o_q [2]),
    .ADR1(\time_keeper/w_ena_hh_i_reset_OR_63_o ),
    .ADR2(\time_keeper/time_hh/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR3(\time_keeper/time_hh/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_hh/first_digit/o_q_2_rstpot_520 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_hh/first_digit/o_q_2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_hh/first_digit/o_q_2_rstpot_520 ),
    .O(\time_keeper/time_hh/first_digit/o_q [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_mm/first_digit/o_q_2_rstpot  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR2(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .ADR3(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/first_digit/o_q_2_rstpot_521 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q_2_rstpot_521 ),
    .O(\time_keeper/time_mm/first_digit/o_q [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_mm/first_digit/o_q_1_rstpot  (
    .ADR0(\time_keeper/time_mm/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR2(\time_keeper/w_ena_mm_i_reset_OR_57_o ),
    .ADR3(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/first_digit/o_q_1_rstpot_522 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/first_digit/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/first_digit/o_q_1_rstpot_522 ),
    .O(\time_keeper/time_mm/first_digit/o_q [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5_2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_2_523 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6_2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_2_524 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3_2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_2_525 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4_2  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_2_526 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_f_1  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_f_val1 ),
    .SRST(w_reset_n),
    .O(\pulse_gen/o_pulse_f_1_527 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd3_3  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd3-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd3_3_528 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd2_3  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd2-In3 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2_3_529 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd4_3  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd4-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd4_3_530 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \pulse_gen/o_pulse_f_2  (
    .CLK(i_clk_BUFGP),
    .I(\pulse_gen/r_cnt_f_val1 ),
    .SRST(w_reset_n),
    .O(\pulse_gen/o_pulse_f_2_531 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_ss/first_digit/o_q_2_rstpot  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR2(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .ADR3(\time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/first_digit/o_q_2_rstpot_532 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q_2_rstpot_532 ),
    .O(\time_keeper/time_ss/first_digit/o_q [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_ss/first_digit/o_q_1_rstpot  (
    .ADR0(\time_keeper/time_ss/first_digit/o_q [1]),
    .ADR1(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR2(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .ADR3(\time_keeper/time_ss/first_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/first_digit/o_q_1_rstpot_533 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/first_digit/o_q_1_rstpot_533 ),
    .O(\time_keeper/time_ss/first_digit/o_q [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_ss/second_digit/o_q_2_rstpot  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR2(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .ADR3(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/second_digit/o_q_2_rstpot_534 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/second_digit/o_q_2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/second_digit/o_q_2_rstpot_534 ),
    .O(\time_keeper/time_ss/second_digit/o_q [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00CA ))
  \time_keeper/time_ss/second_digit/o_q_1_rstpot  (
    .ADR0(\time_keeper/time_ss/second_digit/o_q [1]),
    .ADR1(\time_keeper/time_ss/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR2(\time_keeper/time_ss/w_ena2_i_reset_OR_47_o ),
    .ADR3(\time_keeper/time_ss/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_ss/second_digit/o_q_1_rstpot_535 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/second_digit/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_ss/second_digit/o_q_1_rstpot_535 ),
    .O(\time_keeper/time_ss/second_digit/o_q [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_mm/second_digit/o_q_2_rstpot  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [2]),
    .ADR1(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<2> ),
    .ADR3(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/second_digit/o_q_2_rstpot_536 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_2  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q_2_rstpot_536 ),
    .O(\time_keeper/time_mm/second_digit/o_q [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT4 #(
    .INIT ( 16'h00E2 ))
  \time_keeper/time_mm/second_digit/o_q_1_rstpot  (
    .ADR0(\time_keeper/time_mm/second_digit/o_q [1]),
    .ADR1(\time_keeper/time_mm/w_ena2_i_reset_OR_47_o ),
    .ADR2(\time_keeper/time_mm/second_digit/o_q[3]_i_in[3]_mux_12_OUT<1> ),
    .ADR3(\time_keeper/time_mm/second_digit/Reset_OR_DriverANDClockEnable ),
    .O(\time_keeper/time_mm/second_digit/o_q_1_rstpot_537 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_mm/second_digit/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\time_keeper/time_mm/second_digit/o_q_1_rstpot_537 ),
    .O(\time_keeper/time_mm/second_digit/o_q [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b1 ))
  \lcd_driver/control_fsm/state_FSM_FFd6_3  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd6-In ),
    .SSET(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd6_3_538 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SRST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/control_fsm/state_FSM_FFd5_3  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/control_fsm/state_FSM_FFd5-In1 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/control_fsm/state_FSM_FFd5_3_539 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \wr_sel_control/wr_control/p2t/o_q_1  (
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/wr_control/p2t/o_q_rstpot_470 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_1_540 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_MUX2   \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225  (
    .IA(N188),
    .IB(N189),
    .SEL(\lcd_driver/control_fsm/o_val_3_BRB2_421 ),
    .O(\lcd_driver/control_fsm/o_val_1 )
  );
  X_LUT5 #(
    .INIT ( 32'hFFF2F2F2 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_F  (
    .ADR0(\lcd_driver/control_fsm/o_val_1_BRB2_463 ),
    .ADR1(\lcd_driver/control_fsm/o_val_2_BRB6_460 ),
    .ADR2(\lcd_driver/control_fsm/o_val_1_BRB6_464 ),
    .ADR3(\lcd_driver/control_fsm/o_val_3_BRB0_419 ),
    .ADR4(\lcd_driver/control_fsm/o_val_1_BRB8_465 ),
    .O(N188)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFAA80AA80AA80 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>225_G  (
    .ADR0(\lcd_driver/control_fsm/o_val_1_BRB8_465 ),
    .ADR1(\lcd_driver/control_fsm/o_val_3_BRB5_457 ),
    .ADR2(\lcd_driver/control_fsm/o_val_0_BRB0_429 ),
    .ADR3(\lcd_driver/control_fsm/o_val_3_BRB0_419 ),
    .ADR4(\lcd_driver/control_fsm/o_val_2_BRB2_425 ),
    .ADR5(\lcd_driver/control_fsm/o_val_1_BRB1_428 ),
    .O(N189)
  );
  X_MUX2   \time_keeper/w_ena_pm_i_reset_OR_64_o23  (
    .IA(N190),
    .IB(N191),
    .SEL(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(\time_keeper/w_ena_pm_i_reset_OR_64_o )
  );
  X_LUT5 #(
    .INIT ( 32'h8000FFFF ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o23_F  (
    .ADR0(\time_keeper/time_hh/o_roll_162 ),
    .ADR1(\time_keeper/time_mm/o_roll_163 ),
    .ADR2(\pulse_gen/o_pulse_n_12 ),
    .ADR3(\time_keeper/time_ss/o_roll_164 ),
    .ADR4(i_reset_btn_IBUF_4),
    .O(N190)
  );
  X_LUT6 #(
    .INIT ( 64'h80808000FFFFFFFF ))
  \time_keeper/w_ena_pm_i_reset_OR_64_o23_G  (
    .ADR0(\pulse_gen/o_pulse_f_11 ),
    .ADR1(\wr_sel_control/sel_control/sel/o_q [0]),
    .ADR2(\wr_sel_control/sel_control/sel/o_q [1]),
    .ADR3(\btn_debouncer/val_dec_btn/o_pulse1_FRB_35 ),
    .ADR4(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR5(i_reset_btn_IBUF_4),
    .O(N191)
  );
  X_MUX2   \lcd_driver/control_fsm/state_FSM_FFd2-In317  (
    .IA(N192),
    .IB(N193),
    .SEL(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In317_345 )
  );
  X_LUT6 #(
    .INIT ( 64'h02228AAA4666CEEE ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In317_F  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_217 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_26_o ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_24_o<11>4_FRB_202 ),
    .O(N192)
  );
  X_LUT6 #(
    .INIT ( 64'h51FB55FBFBFBFFFB ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In317_G  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR1(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>11_FRB_217 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd2-In312_FRB_344 ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .ADR4(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_18_o<11>21_FRB_219 ),
    .ADR5(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_30_o<11>1_FRB_218 ),
    .O(N193)
  );
  X_MUX2   \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26  (
    .IA(N194),
    .IB(N195),
    .SEL(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .O(\lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>28 )
  );
  X_LUT5 #(
    .INIT ( 32'h02024202 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_F  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\time_keeper/time_hh/second_digit/o_q_13 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd1_291 ),
    .O(N194)
  );
  X_LUT6 #(
    .INIT ( 64'h1010100000100000 ))
  \lcd_driver/control_fsm/Mmux_o_val[3]_o_val[3]_mux_98_OUT<0>26_G  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd2_290 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR3(\time_keeper/time_pm/o_q_BRB0_488 ),
    .ADR4(\time_keeper/time_pm/o_q_BRB1_489 ),
    .ADR5(\time_keeper/time_pm/o_q_BRB2_490 ),
    .O(N195)
  );
  X_MUX2   \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1  (
    .IA(N196),
    .IB(N197),
    .SEL(\time_keeper/w_inc ),
    .O(\time_keeper/time_hh/w_ena2_i_reset_OR_61_o )
  );
  X_LUT6 #(
    .INIT ( 64'hA820B931EC64FD75 ))
  \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1_F  (
    .ADR0(\time_keeper/w_ena_hh_i_reset_OR_63_o1 ),
    .ADR1(\time_keeper/time_ss/o_roll_164 ),
    .ADR2(N176),
    .ADR3(N177),
    .ADR4(i_reset_btn_IBUF_4),
    .ADR5(N173),
    .O(N196)
  );
  X_LUT6 #(
    .INIT ( 64'hA820B931EC64FD75 ))
  \time_keeper/time_hh/w_ena2_i_reset_OR_61_o1_G  (
    .ADR0(\time_keeper/w_ena_hh_i_reset_OR_63_o1 ),
    .ADR1(\time_keeper/time_ss/o_roll_164 ),
    .ADR2(N178),
    .ADR3(N179),
    .ADR4(i_reset_btn_IBUF_4),
    .ADR5(N175),
    .O(N197)
  );
  X_MUX2   \lcd_driver/control_fsm/state_FSM_FFd2-In39  (
    .IA(N198),
    .IB(N199),
    .SEL(\lcd_driver/control_fsm/state_FSM_FFd6_286 ),
    .O(\lcd_driver/control_fsm/state_FSM_FFd2-In39_341 )
  );
  X_LUT6 #(
    .INIT ( 64'h5555555555555445 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In39_F  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2-In33_FRB_339 ),
    .ADR2(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR3(\lcd_driver/control_fsm/r_cnt [6]),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd2-In36_SW0_FRB_438 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2-In32_338 ),
    .O(N198)
  );
  X_LUT6 #(
    .INIT ( 64'h5555555545444444 ))
  \lcd_driver/control_fsm/state_FSM_FFd2-In39_G  (
    .ADR0(\lcd_driver/control_fsm/state_FSM_FFd3_289 ),
    .ADR1(\lcd_driver/control_fsm/state_FSM_FFd2-In37_340 ),
    .ADR2(\lcd_driver/control_fsm/r_cnt[11]_GND_17_o_equal_14_o ),
    .ADR3(\lcd_driver/control_fsm/state_FSM_FFd4_288 ),
    .ADR4(\lcd_driver/control_fsm/state_FSM_FFd5_287 ),
    .ADR5(\lcd_driver/control_fsm/state_FSM_FFd2-In32_338 ),
    .O(N199)
  );
  X_MUX2   \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable1  (
    .IA(N200),
    .IB(N201),
    .SEL(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .O(\time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable )
  );
  X_LUT6 #(
    .INIT ( 64'h00000002FFFFFFFF ))
  \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable1_G  (
    .ADR0(\time_keeper/w_ena_mm_i_reset_OR_57_o2 ),
    .ADR1(\time_keeper/time_mm/first_digit/o_q [0]),
    .ADR2(N8),
    .ADR3(\btn_debouncer/val_inc_btn/o_pulse1_FRB_34 ),
    .ADR4(\time_keeper/time_mm/first_digit/o_q [3]),
    .ADR5(i_reset_btn_IBUF_4),
    .O(N201)
  );
  X_INV   w_reset_n1_INV_0 (
    .I(i_reset_btn_IBUF_4),
    .O(w_reset_n)
  );
  X_INV   w_wr_btn1_INV_0 (
    .I(i_wr_btn_IBUF_5),
    .O(w_wr_btn)
  );
  X_INV   w_val_inc_btn1_INV_0 (
    .I(i_val_inc_btn_IBUF_6),
    .O(w_val_inc_btn)
  );
  X_INV   w_val_dec_btn1_INV_0 (
    .I(i_val_dec_btn_IBUF_7),
    .O(w_val_dec_btn)
  );
  X_INV   w_sel_inc_btn1_INV_0 (
    .I(i_sel_inc_btn_IBUF_8),
    .O(w_sel_inc_btn)
  );
  X_INV   w_sel_dec_btn1_INV_0 (
    .I(i_sel_dec_btn_IBUF_9),
    .O(w_sel_dec_btn)
  );
  X_INV   \pulse_gen/Mcount_r_cnt_vf_xor<0>11_INV_0  (
    .I(\pulse_gen/r_cnt_vf [0]),
    .O(\pulse_gen/Result [0])
  );
  X_INV   \time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11_INV_0  (
    .I(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .O(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_INV   \time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>11_INV_0  (
    .I(\time_keeper/time_mm/first_digit/o_q [0]),
    .O(\time_keeper/time_mm/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 )
  );
  X_INV   \lcd_driver/rs_e_output/Madd_r_cnt[1]_GND_18_o_add_2_OUT_xor<0>11_INV_0  (
    .I(\lcd_driver/rs_e_output/r_cnt [0]),
    .O(\lcd_driver/rs_e_output/r_cnt[1]_GND_18_o_add_2_OUT<0> )
  );
  X_INV   \time_keeper/time_mm/first_digit/Reset_OR_DriverANDClockEnable1_F_INV_0  (
    .I(i_reset_btn_IBUF_4),
    .O(N200)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_rs_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_rs_rstpot_476 ),
    .O(\lcd_driver/rs_e_output/o_rs_1_555 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \lcd_driver/rs_e_output/o_e_1  (
    .CLK(i_clk_BUFGP),
    .I(\lcd_driver/rs_e_output/o_e_glue_set_385 ),
    .SRST(w_reset_n),
    .O(\lcd_driver/rs_e_output/o_e_1_556 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \wr_sel_control/wr_control/p2t/o_q_2  (
    .CLK(i_clk_BUFGP),
    .I(\wr_sel_control/wr_control/p2t/o_q_rstpot_470 ),
    .O(\wr_sel_control/wr_control/p2t/o_q_2_557 ),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \time_keeper/time_ss/first_digit/o_q_0_1  (
    .CLK(i_clk_BUFGP),
    .CE(\time_keeper/w_ena_ss_i_reset_OR_56_o ),
    .I(\time_keeper/time_ss/first_digit/o_q[3]_i_in[3]_mux_12_OUT<0>1 ),
    .SRST(w_reset_n),
    .O(\time_keeper/time_ss/first_digit/o_q_0_1_558 ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q  (
    .A0(w_mm[7]),
    .A1(w_mm[7]),
    .A2(w_mm[7]),
    .A3(w_mm[7]),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .CLK(i_clk_BUFGP),
    .D(w_wr_btn),
    .Q(\btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_559 ),
    .Q15(\NLW_btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/wr_btn/dff_pq0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/wr_btn/dff_pq0/Mshreg_o_q_559 ),
    .O(\btn_debouncer/wr_btn/dff_pq0/o_q_66 ),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q  (
    .A0(w_mm[7]),
    .A1(w_mm[7]),
    .A2(w_mm[7]),
    .A3(w_mm[7]),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .CLK(i_clk_BUFGP),
    .D(w_sel_dec_btn),
    .Q(\btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_560 ),
    .Q15(\NLW_btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_dec_btn/dff_pq0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/sel_dec_btn/dff_pq0/Mshreg_o_q_560 ),
    .O(\btn_debouncer/sel_dec_btn/dff_pq0/o_q_56 ),
    .SET(GND),
    .RST(GND)
  );
  X_SRLC16E #(
    .INIT ( 16'h0000 ))
  \btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q  (
    .A0(w_mm[7]),
    .A1(w_mm[7]),
    .A2(w_mm[7]),
    .A3(w_mm[7]),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .CLK(i_clk_BUFGP),
    .D(w_sel_inc_btn),
    .Q(\btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_561 ),
    .Q15(\NLW_btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_Q15_UNCONNECTED )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \btn_debouncer/sel_inc_btn/dff_pq0/o_q  (
    .CLK(i_clk_BUFGP),
    .CE(\pulse_gen/o_pulse_f_11 ),
    .I(\btn_debouncer/sel_inc_btn/dff_pq0/Mshreg_o_q_561 ),
    .O(\btn_debouncer/sel_inc_btn/dff_pq0/o_q_58 ),
    .SET(GND),
    .RST(GND)
  );
  X_IPAD #(
    .LOC ( "D9" ))
  i_clk_555 (
    .PAD(i_clk)
  );
  X_IPAD #(
    .LOC ( "M16" ))
  i_reset_btn_556 (
    .PAD(NlwRenamedSig_IO_i_reset_btn)
  );
  X_IPAD #(
    .LOC ( "L17" ))
  i_wr_btn_557 (
    .PAD(NlwRenamedSig_IO_i_wr_btn)
  );
  X_IPAD #(
    .LOC ( "K18" ))
  i_val_inc_btn_558 (
    .PAD(NlwRenamedSig_IO_i_val_inc_btn)
  );
  X_IPAD #(
    .LOC ( "L18" ))
  i_val_dec_btn_559 (
    .PAD(NlwRenamedSig_IO_i_val_dec_btn)
  );
  X_IPAD #(
    .LOC ( "K17" ))
  i_sel_inc_btn_560 (
    .PAD(NlwRenamedSig_IO_i_sel_inc_btn)
  );
  X_IPAD #(
    .LOC ( "M18" ))
  i_sel_dec_btn_561 (
    .PAD(NlwRenamedSig_IO_i_sel_dec_btn)
  );
  X_OPAD #(
    .LOC ( "U8" ))
  \o_d<7>  (
    .PAD(o_d[7])
  );
  X_OPAD #(
    .LOC ( "V8" ))
  \o_d<6>  (
    .PAD(o_d[6])
  );
  X_OPAD #(
    .LOC ( "R8" ))
  \o_d<5>  (
    .PAD(o_d[5])
  );
  X_OPAD #(
    .LOC ( "T8" ))
  \o_d<4>  (
    .PAD(o_d[4])
  );
  X_OPAD #(
    .LOC ( "R5" ))
  \o_d<3>  (
    .PAD(o_d[3])
  );
  X_OPAD #(
    .LOC ( "T5" ))
  \o_d<2>  (
    .PAD(o_d[2])
  );
  X_OPAD #(
    .LOC ( "T9" ))
  \o_d<1>  (
    .PAD(o_d[1])
  );
  X_OPAD #(
    .LOC ( "V9" ))
  \o_d<0>  (
    .PAD(o_d[0])
  );
  X_OPAD #(
    .LOC ( "U7" ))
  o_rs_570 (
    .PAD(o_rs)
  );
  X_OPAD #(
    .LOC ( "V7" ))
  o_e_571 (
    .PAD(o_e)
  );
  X_OPAD #(
    .LOC ( "P15" ))
  w_wr_572 (
    .PAD(w_wr)
  );
  X_OPAD #(
    .LOC ( "P16" ))
  o_hz_573 (
    .PAD(o_hz)
  );
  X_PU   i_reset_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_reset_btn)
  );
  X_PU   i_wr_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_wr_btn)
  );
  X_PU   i_val_inc_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_val_inc_btn)
  );
  X_PU   i_val_dec_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_val_dec_btn)
  );
  X_PU   i_sel_inc_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_sel_inc_btn)
  );
  X_PU   i_sel_dec_btn_PULLUP (
    .O(NlwRenamedSig_IO_i_sel_dec_btn)
  );
  X_CKBUF   \i_clk_BUFGP/BUFG  (
    .I(\i_clk_BUFGP/IBUFG_2 ),
    .O(i_clk_BUFGP)
  );
  X_CKBUF   \i_clk_BUFGP/IBUFG  (
    .I(i_clk),
    .O(\i_clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   o_d_7_OBUF (
    .I(\lcd_driver/d_output/o_q [7]),
    .O(o_d[7])
  );
  X_OBUF   o_d_6_OBUF (
    .I(\lcd_driver/d_output/o_q [6]),
    .O(o_d[6])
  );
  X_OBUF   o_d_5_OBUF (
    .I(\lcd_driver/d_output/o_q [5]),
    .O(o_d[5])
  );
  X_OBUF   o_d_4_OBUF (
    .I(\lcd_driver/d_output/o_q [4]),
    .O(o_d[4])
  );
  X_OBUF   o_d_3_OBUF (
    .I(\lcd_driver/d_output/o_q [3]),
    .O(o_d[3])
  );
  X_OBUF   o_d_2_OBUF (
    .I(\lcd_driver/d_output/o_q [2]),
    .O(o_d[2])
  );
  X_OBUF   o_d_1_OBUF (
    .I(\lcd_driver/d_output/o_q [1]),
    .O(o_d[1])
  );
  X_OBUF   o_d_0_OBUF (
    .I(\lcd_driver/d_output/o_q [0]),
    .O(o_d[0])
  );
  X_OBUF   o_rs_OBUF (
    .I(\lcd_driver/rs_e_output/o_rs_47 ),
    .O(o_rs)
  );
  X_OBUF   o_e_OBUF (
    .I(\lcd_driver/rs_e_output/o_e_48 ),
    .O(o_e)
  );
  X_OBUF   w_wr_OBUF (
    .I(\wr_sel_control/wr_control/p2t/o_q_38 ),
    .O(w_wr)
  );
  X_OBUF   o_hz_OBUF (
    .I(\time_keeper/time_ss/first_digit/o_q [0]),
    .O(o_hz)
  );
  X_ZERO   NlwBlock_top_module_GND (
    .O(GND)
  );
  X_ONE   NlwBlock_top_module_VCC (
    .O(VCC)
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

