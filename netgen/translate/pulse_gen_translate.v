////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pulse_gen_translate.v
// /___/   /\     Timestamp: Fri Sep 30 09:25:42 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -filter E:/Xilinx/projects/mimasV2-clock/iseconfig/filter.filter -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim pulse_gen.ngd pulse_gen_translate.v 
// Device	: 6slx9csg324-2
// Input file	: pulse_gen.ngd
// Output file	: E:\Xilinx\projects\mimasV2-clock\netgen\translate\pulse_gen_translate.v
// # of Modules	: 1
// Design Name	: pulse_gen
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

module pulse_gen (
  i_clk, i_reset, o_pulse_vf, o_pulse_f, o_pulse_n
);
  input i_clk;
  input i_reset;
  output o_pulse_vf;
  output o_pulse_f;
  output o_pulse_n;
  wire i_clk_BUFGP;
  wire i_reset_IBUF_4;
  wire o_pulse_f_OBUF_5;
  wire o_pulse_n_OBUF_6;
  wire o_pulse_vf_OBUF_7;
  wire \r_cnt_vf[3]_PWR_1_o_equal_2_o ;
  wire GND_1_o_GND_1_o_equal_8_o;
  wire \r_cnt_n[6]_PWR_1_o_equal_4_o ;
  wire N1;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \GND_1_o_GND_1_o_equal_8_o<12>1_64 ;
  wire N5;
  wire \Maccum_r_cnt_f_cy<1>_rt_71 ;
  wire \Maccum_r_cnt_f_cy<2>_rt_72 ;
  wire \Maccum_r_cnt_f_cy<3>_rt_73 ;
  wire \Maccum_r_cnt_f_cy<4>_rt_74 ;
  wire \Maccum_r_cnt_f_cy<5>_rt_75 ;
  wire \Maccum_r_cnt_f_cy<6>_rt_76 ;
  wire \Maccum_r_cnt_f_cy<7>_rt_77 ;
  wire \Maccum_r_cnt_f_cy<8>_rt_78 ;
  wire \Maccum_r_cnt_f_cy<9>_rt_79 ;
  wire \Maccum_r_cnt_f_cy<10>_rt_80 ;
  wire \Maccum_r_cnt_f_cy<11>_rt_81 ;
  wire \Maccum_r_cnt_f_xor<12>_rt_82 ;
  wire N7;
  wire r_cnt_n_1_rstpot_84;
  wire r_cnt_n_2_rstpot_85;
  wire r_cnt_n_6_rstpot_86;
  wire r_cnt_n_5_rstpot_87;
  wire r_cnt_n_0_rstpot_88;
  wire r_cnt_n_3_rstpot_89;
  wire r_cnt_n_4_rstpot_90;
  wire r_cnt_f_0_rstpot_91;
  wire N9;
  wire N11;
  wire N17;
  wire N25;
  wire N26;
  wire r_cnt_vf_0_rstpot_97;
  wire r_cnt_vf_1_rstpot_98;
  wire r_cnt_vf_2_rstpot_99;
  wire r_cnt_vf_3_rstpot_100;
  wire N32;
  wire N33;
  wire r_cnt_f_1_rstpot_103;
  wire r_cnt_f_2_rstpot_104;
  wire r_cnt_f_3_rstpot_105;
  wire r_cnt_f_4_rstpot_106;
  wire r_cnt_f_7_rstpot_107;
  wire r_cnt_f_5_rstpot_108;
  wire r_cnt_f_6_rstpot_109;
  wire r_cnt_f_8_rstpot_110;
  wire r_cnt_f_9_rstpot_111;
  wire r_cnt_f_10_rstpot_112;
  wire r_cnt_f_11_rstpot_113;
  wire r_cnt_f_12_rstpot_114;
  wire N35;
  wire N36;
  wire \i_clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [12 : 0] r_cnt_f;
  wire [6 : 0] r_cnt_n;
  wire [12 : 4] Result;
  wire [4 : 4] Maccum_r_cnt_n_cy;
  wire [3 : 0] r_cnt_vf;
  wire [0 : 0] Maccum_r_cnt_f_lut;
  wire [11 : 0] Maccum_r_cnt_f_cy;
  wire [12 : 12] GND_1_o_GND_1_o_equal_8_o_0;
  X_ZERO   XST_GND (
    .O(N1)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  o_pulse_vf_2 (
    .CLK(i_clk_BUFGP),
    .I(\r_cnt_vf[3]_PWR_1_o_equal_2_o ),
    .SRST(i_reset_IBUF_4),
    .O(o_pulse_vf_OBUF_7),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  o_pulse_f_3 (
    .CLK(i_clk_BUFGP),
    .I(GND_1_o_GND_1_o_equal_8_o),
    .SRST(i_reset_IBUF_4),
    .O(o_pulse_f_OBUF_5),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  o_pulse_n_4 (
    .CLK(i_clk_BUFGP),
    .I(\r_cnt_n[6]_PWR_1_o_equal_4_o ),
    .SRST(i_reset_IBUF_4),
    .O(o_pulse_n_OBUF_6),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_cnt_f_lut<0>  (
    .ADR0(r_cnt_f[0]),
    .ADR1(o_pulse_vf_OBUF_7),
    .O(Maccum_r_cnt_f_lut[0])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<0>  (
    .IB(N1),
    .IA(r_cnt_f[0]),
    .SEL(Maccum_r_cnt_f_lut[0]),
    .O(Maccum_r_cnt_f_cy[0])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<0>  (
    .I0(N1),
    .I1(Maccum_r_cnt_f_lut[0]),
    .O(\Result<0>1 )
  );
  X_MUX2   \Maccum_r_cnt_f_cy<1>  (
    .IB(Maccum_r_cnt_f_cy[0]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<1>_rt_71 ),
    .O(Maccum_r_cnt_f_cy[1])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<1>  (
    .I0(Maccum_r_cnt_f_cy[0]),
    .I1(\Maccum_r_cnt_f_cy<1>_rt_71 ),
    .O(\Result<1>1 )
  );
  X_MUX2   \Maccum_r_cnt_f_cy<2>  (
    .IB(Maccum_r_cnt_f_cy[1]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<2>_rt_72 ),
    .O(Maccum_r_cnt_f_cy[2])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<2>  (
    .I0(Maccum_r_cnt_f_cy[1]),
    .I1(\Maccum_r_cnt_f_cy<2>_rt_72 ),
    .O(\Result<2>1 )
  );
  X_MUX2   \Maccum_r_cnt_f_cy<3>  (
    .IB(Maccum_r_cnt_f_cy[2]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<3>_rt_73 ),
    .O(Maccum_r_cnt_f_cy[3])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<3>  (
    .I0(Maccum_r_cnt_f_cy[2]),
    .I1(\Maccum_r_cnt_f_cy<3>_rt_73 ),
    .O(\Result<3>1 )
  );
  X_MUX2   \Maccum_r_cnt_f_cy<4>  (
    .IB(Maccum_r_cnt_f_cy[3]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<4>_rt_74 ),
    .O(Maccum_r_cnt_f_cy[4])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<4>  (
    .I0(Maccum_r_cnt_f_cy[3]),
    .I1(\Maccum_r_cnt_f_cy<4>_rt_74 ),
    .O(Result[4])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<5>  (
    .IB(Maccum_r_cnt_f_cy[4]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<5>_rt_75 ),
    .O(Maccum_r_cnt_f_cy[5])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<5>  (
    .I0(Maccum_r_cnt_f_cy[4]),
    .I1(\Maccum_r_cnt_f_cy<5>_rt_75 ),
    .O(Result[5])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<6>  (
    .IB(Maccum_r_cnt_f_cy[5]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<6>_rt_76 ),
    .O(Maccum_r_cnt_f_cy[6])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<6>  (
    .I0(Maccum_r_cnt_f_cy[5]),
    .I1(\Maccum_r_cnt_f_cy<6>_rt_76 ),
    .O(Result[6])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<7>  (
    .IB(Maccum_r_cnt_f_cy[6]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<7>_rt_77 ),
    .O(Maccum_r_cnt_f_cy[7])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<7>  (
    .I0(Maccum_r_cnt_f_cy[6]),
    .I1(\Maccum_r_cnt_f_cy<7>_rt_77 ),
    .O(Result[7])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<8>  (
    .IB(Maccum_r_cnt_f_cy[7]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<8>_rt_78 ),
    .O(Maccum_r_cnt_f_cy[8])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<8>  (
    .I0(Maccum_r_cnt_f_cy[7]),
    .I1(\Maccum_r_cnt_f_cy<8>_rt_78 ),
    .O(Result[8])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<9>  (
    .IB(Maccum_r_cnt_f_cy[8]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<9>_rt_79 ),
    .O(Maccum_r_cnt_f_cy[9])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<9>  (
    .I0(Maccum_r_cnt_f_cy[8]),
    .I1(\Maccum_r_cnt_f_cy<9>_rt_79 ),
    .O(Result[9])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<10>  (
    .IB(Maccum_r_cnt_f_cy[9]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<10>_rt_80 ),
    .O(Maccum_r_cnt_f_cy[10])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<10>  (
    .I0(Maccum_r_cnt_f_cy[9]),
    .I1(\Maccum_r_cnt_f_cy<10>_rt_80 ),
    .O(Result[10])
  );
  X_MUX2   \Maccum_r_cnt_f_cy<11>  (
    .IB(Maccum_r_cnt_f_cy[10]),
    .IA(N1),
    .SEL(\Maccum_r_cnt_f_cy<11>_rt_81 ),
    .O(Maccum_r_cnt_f_cy[11])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<11>  (
    .I0(Maccum_r_cnt_f_cy[10]),
    .I1(\Maccum_r_cnt_f_cy<11>_rt_81 ),
    .O(Result[11])
  );
  X_XOR2   \Maccum_r_cnt_f_xor<12>  (
    .I0(Maccum_r_cnt_f_cy[11]),
    .I1(\Maccum_r_cnt_f_xor<12>_rt_82 ),
    .O(Result[12])
  );
  X_LUT4 #(
    .INIT ( 16'h0080 ))
  \r_cnt_vf[3]_PWR_1_o_equal_2_o<3>1  (
    .ADR0(r_cnt_vf[3]),
    .ADR1(r_cnt_vf[2]),
    .ADR2(r_cnt_vf[1]),
    .ADR3(r_cnt_vf[0]),
    .O(\r_cnt_vf[3]_PWR_1_o_equal_2_o )
  );
  X_LUT6 #(
    .INIT ( 64'h0000800000000000 ))
  \GND_1_o_GND_1_o_equal_8_o<12>1  (
    .ADR0(r_cnt_f[9]),
    .ADR1(r_cnt_f[1]),
    .ADR2(r_cnt_f[12]),
    .ADR3(r_cnt_f[11]),
    .ADR4(r_cnt_f[0]),
    .ADR5(r_cnt_f[3]),
    .O(GND_1_o_GND_1_o_equal_8_o_0[12])
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \GND_1_o_GND_1_o_equal_8_o<12>2  (
    .ADR0(r_cnt_f[4]),
    .ADR1(r_cnt_f[2]),
    .ADR2(r_cnt_f[5]),
    .ADR3(r_cnt_f[6]),
    .ADR4(r_cnt_f[7]),
    .ADR5(r_cnt_f[8]),
    .O(\GND_1_o_GND_1_o_equal_8_o<12>1_64 )
  );
  X_LUT3 #(
    .INIT ( 8'h40 ))
  \GND_1_o_GND_1_o_equal_8_o<12>3  (
    .ADR0(r_cnt_f[10]),
    .ADR1(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .ADR2(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .O(GND_1_o_GND_1_o_equal_8_o)
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \r_cnt_n[6]_PWR_1_o_equal_4_o<6>_SW0  (
    .ADR0(r_cnt_n[1]),
    .ADR1(r_cnt_n[2]),
    .O(N5)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000008000 ))
  \r_cnt_n[6]_PWR_1_o_equal_4_o<6>  (
    .ADR0(r_cnt_n[6]),
    .ADR1(r_cnt_n[5]),
    .ADR2(r_cnt_n[4]),
    .ADR3(r_cnt_n[3]),
    .ADR4(r_cnt_n[0]),
    .ADR5(N5),
    .O(\r_cnt_n[6]_PWR_1_o_equal_4_o )
  );
  X_BUF   i_reset_IBUF (
    .I(i_reset),
    .O(i_reset_IBUF_4)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<1>_rt  (
    .ADR0(r_cnt_f[1]),
    .O(\Maccum_r_cnt_f_cy<1>_rt_71 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<2>_rt  (
    .ADR0(r_cnt_f[2]),
    .O(\Maccum_r_cnt_f_cy<2>_rt_72 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<3>_rt  (
    .ADR0(r_cnt_f[3]),
    .O(\Maccum_r_cnt_f_cy<3>_rt_73 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<4>_rt  (
    .ADR0(r_cnt_f[4]),
    .O(\Maccum_r_cnt_f_cy<4>_rt_74 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<5>_rt  (
    .ADR0(r_cnt_f[5]),
    .O(\Maccum_r_cnt_f_cy<5>_rt_75 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<6>_rt  (
    .ADR0(r_cnt_f[6]),
    .O(\Maccum_r_cnt_f_cy<6>_rt_76 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<7>_rt  (
    .ADR0(r_cnt_f[7]),
    .O(\Maccum_r_cnt_f_cy<7>_rt_77 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<8>_rt  (
    .ADR0(r_cnt_f[8]),
    .O(\Maccum_r_cnt_f_cy<8>_rt_78 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<9>_rt  (
    .ADR0(r_cnt_f[9]),
    .O(\Maccum_r_cnt_f_cy<9>_rt_79 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<10>_rt  (
    .ADR0(r_cnt_f[10]),
    .O(\Maccum_r_cnt_f_cy<10>_rt_80 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_cy<11>_rt  (
    .ADR0(r_cnt_f[11]),
    .O(\Maccum_r_cnt_f_cy<11>_rt_81 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'hA ))
  \Maccum_r_cnt_f_xor<12>_rt  (
    .ADR0(r_cnt_f[12]),
    .O(\Maccum_r_cnt_f_xor<12>_rt_82 ),
    .ADR1(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \r_cnt_n[6]_PWR_1_o_equal_4_o<6>_SW1  (
    .ADR0(r_cnt_n[4]),
    .ADR1(r_cnt_n[3]),
    .O(N7)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_1 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_1_rstpot_84),
    .O(r_cnt_n[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_2 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_2_rstpot_85),
    .O(r_cnt_n[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_6 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_6_rstpot_86),
    .O(r_cnt_n[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_5 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_5_rstpot_87),
    .O(r_cnt_n[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_0 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_0_rstpot_88),
    .O(r_cnt_n[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_3 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_3_rstpot_89),
    .O(r_cnt_n[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_n_4 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_n_4_rstpot_90),
    .O(r_cnt_n[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_0 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_0_rstpot_91),
    .O(r_cnt_f[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \Maccum_r_cnt_n_cy<4>11  (
    .ADR0(r_cnt_n[4]),
    .ADR1(r_cnt_n[3]),
    .ADR2(r_cnt_n[2]),
    .ADR3(r_cnt_n[1]),
    .ADR4(r_cnt_n[0]),
    .ADR5(o_pulse_f_OBUF_5),
    .O(Maccum_r_cnt_n_cy[4])
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  r_cnt_n_0_rstpot_SW0 (
    .ADR0(r_cnt_n[6]),
    .ADR1(r_cnt_n[5]),
    .O(N9)
  );
  X_LUT6 #(
    .INIT ( 64'h1414141410141414 ))
  r_cnt_n_0_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(o_pulse_f_OBUF_5),
    .ADR2(r_cnt_n[0]),
    .ADR3(N9),
    .ADR4(N7),
    .ADR5(N5),
    .O(r_cnt_n_0_rstpot_88)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_0_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(\Result<0>1 ),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_0_rstpot_91)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_cnt_n_val1_SW0 (
    .ADR0(r_cnt_n[5]),
    .ADR1(r_cnt_n[0]),
    .O(N11)
  );
  X_LUT2 #(
    .INIT ( 4'h2 ))
  r_cnt_n_val1_SW4 (
    .ADR0(r_cnt_n[6]),
    .ADR1(r_cnt_n[0]),
    .O(N17)
  );
  X_LUT6 #(
    .INIT ( 64'h1111111144440444 ))
  r_cnt_n_5_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_n[5]),
    .ADR2(N7),
    .ADR3(N17),
    .ADR4(N5),
    .ADR5(Maccum_r_cnt_n_cy[4]),
    .O(r_cnt_n_5_rstpot_87)
  );
  X_LUT4 #(
    .INIT ( 16'h7FFF ))
  r_cnt_n_val1_SW9 (
    .ADR0(r_cnt_n[2]),
    .ADR1(r_cnt_n[1]),
    .ADR2(r_cnt_n[0]),
    .ADR3(o_pulse_f_OBUF_5),
    .O(N25)
  );
  X_LUT6 #(
    .INIT ( 64'hF000000088888888 ))
  r_cnt_n_val1_SW10 (
    .ADR0(r_cnt_n[5]),
    .ADR1(r_cnt_n[6]),
    .ADR2(r_cnt_n[2]),
    .ADR3(r_cnt_n[1]),
    .ADR4(o_pulse_f_OBUF_5),
    .ADR5(r_cnt_n[0]),
    .O(N26)
  );
  X_LUT6 #(
    .INIT ( 64'h4404111144441151 ))
  r_cnt_n_3_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_n[3]),
    .ADR2(N7),
    .ADR3(N5),
    .ADR4(N25),
    .ADR5(N26),
    .O(r_cnt_n_3_rstpot_89)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_vf_0 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_vf_0_rstpot_97),
    .O(r_cnt_vf[0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_vf_1 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_vf_1_rstpot_98),
    .O(r_cnt_vf[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_vf_2 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_vf_2_rstpot_99),
    .O(r_cnt_vf[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_vf_3 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_vf_3_rstpot_100),
    .O(r_cnt_vf[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h14440444 ))
  r_cnt_vf_3_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_vf[3]),
    .ADR2(r_cnt_vf[1]),
    .ADR3(r_cnt_vf[2]),
    .ADR4(r_cnt_vf[0]),
    .O(r_cnt_vf_3_rstpot_100)
  );
  X_LUT5 #(
    .INIT ( 32'h11044444 ))
  r_cnt_vf_2_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_vf[2]),
    .ADR2(r_cnt_vf[3]),
    .ADR3(r_cnt_vf[0]),
    .ADR4(r_cnt_vf[1]),
    .O(r_cnt_vf_2_rstpot_99)
  );
  X_LUT5 #(
    .INIT ( 32'h10141414 ))
  r_cnt_vf_1_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_vf[1]),
    .ADR2(r_cnt_vf[0]),
    .ADR3(r_cnt_vf[2]),
    .ADR4(r_cnt_vf[3]),
    .O(r_cnt_vf_1_rstpot_98)
  );
  X_LUT5 #(
    .INIT ( 32'h01111111 ))
  r_cnt_vf_0_rstpot (
    .ADR0(r_cnt_vf[0]),
    .ADR1(i_reset_IBUF_4),
    .ADR2(r_cnt_vf[1]),
    .ADR3(r_cnt_vf[3]),
    .ADR4(r_cnt_vf[2]),
    .O(r_cnt_vf_0_rstpot_97)
  );
  X_LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  r_cnt_n_6_rstpot_SW0 (
    .ADR0(r_cnt_n[3]),
    .ADR1(r_cnt_n[2]),
    .ADR2(r_cnt_n[1]),
    .ADR3(r_cnt_n[0]),
    .ADR4(o_pulse_f_OBUF_5),
    .O(N32)
  );
  X_LUT5 #(
    .INIT ( 32'h80020002 ))
  r_cnt_n_6_rstpot_SW1 (
    .ADR0(r_cnt_n[3]),
    .ADR1(r_cnt_n[2]),
    .ADR2(r_cnt_n[1]),
    .ADR3(r_cnt_n[0]),
    .ADR4(o_pulse_f_OBUF_5),
    .O(N33)
  );
  X_LUT6 #(
    .INIT ( 64'h0444444414445444 ))
  r_cnt_n_6_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_n[6]),
    .ADR2(r_cnt_n[4]),
    .ADR3(r_cnt_n[5]),
    .ADR4(N33),
    .ADR5(N32),
    .O(r_cnt_n_6_rstpot_86)
  );
  X_LUT5 #(
    .INIT ( 32'h14444444 ))
  r_cnt_n_2_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_n[2]),
    .ADR2(r_cnt_n[1]),
    .ADR3(r_cnt_n[0]),
    .ADR4(o_pulse_f_OBUF_5),
    .O(r_cnt_n_2_rstpot_85)
  );
  X_LUT4 #(
    .INIT ( 16'h1444 ))
  r_cnt_n_1_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_n[1]),
    .ADR2(r_cnt_n[0]),
    .ADR3(o_pulse_f_OBUF_5),
    .O(r_cnt_n_1_rstpot_84)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_1 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_1_rstpot_103),
    .O(r_cnt_f[1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_2 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_2_rstpot_104),
    .O(r_cnt_f[2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_3 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_3_rstpot_105),
    .O(r_cnt_f[3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_4 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_4_rstpot_106),
    .O(r_cnt_f[4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_7 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_7_rstpot_107),
    .O(r_cnt_f[7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_5 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_5_rstpot_108),
    .O(r_cnt_f[5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_6 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_6_rstpot_109),
    .O(r_cnt_f[6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_8 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_8_rstpot_110),
    .O(r_cnt_f[8]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_9 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_9_rstpot_111),
    .O(r_cnt_f[9]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_10 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_10_rstpot_112),
    .O(r_cnt_f[10]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_11 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_11_rstpot_113),
    .O(r_cnt_f[11]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  r_cnt_f_12 (
    .CLK(i_clk_BUFGP),
    .I(r_cnt_f_12_rstpot_114),
    .O(r_cnt_f[12]),
    .CE(VCC),
    .SET(GND),
    .RST(GND)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_1_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(\Result<1>1 ),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_1_rstpot_103)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_2_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(\Result<2>1 ),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_2_rstpot_104)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_3_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(\Result<3>1 ),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_3_rstpot_105)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_4_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[4]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_4_rstpot_106)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_5_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[5]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_5_rstpot_108)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_6_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[6]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_6_rstpot_109)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_7_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[7]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_7_rstpot_107)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_8_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[8]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_8_rstpot_110)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_9_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[9]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_9_rstpot_111)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_10_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[10]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_10_rstpot_112)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_11_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[11]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_11_rstpot_113)
  );
  X_LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_12_rstpot (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_f[10]),
    .ADR2(Result[12]),
    .ADR3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .ADR4(\GND_1_o_GND_1_o_equal_8_o<12>1_64 ),
    .O(r_cnt_f_12_rstpot_114)
  );
  X_MUX2   r_cnt_n_4_rstpot (
    .IA(N35),
    .IB(N36),
    .SEL(r_cnt_n[1]),
    .O(r_cnt_n_4_rstpot_90)
  );
  X_LUT6 #(
    .INIT ( 64'h2222022222222222 ))
  r_cnt_n_4_rstpot_F (
    .ADR0(r_cnt_n[4]),
    .ADR1(i_reset_IBUF_4),
    .ADR2(r_cnt_n[3]),
    .ADR3(r_cnt_n[6]),
    .ADR4(r_cnt_n[2]),
    .ADR5(N11),
    .O(N35)
  );
  X_LUT6 #(
    .INIT ( 64'h1444444444444444 ))
  r_cnt_n_4_rstpot_G (
    .ADR0(i_reset_IBUF_4),
    .ADR1(r_cnt_n[4]),
    .ADR2(o_pulse_f_OBUF_5),
    .ADR3(r_cnt_n[2]),
    .ADR4(r_cnt_n[3]),
    .ADR5(r_cnt_n[0]),
    .O(N36)
  );
  X_IPAD   i_clk_115 (
    .PAD(i_clk)
  );
  X_IPAD   i_reset_116 (
    .PAD(i_reset)
  );
  X_OPAD   \o_pulse_vf.PAD  (
    .PAD(o_pulse_vf)
  );
  X_OPAD   \o_pulse_f.PAD  (
    .PAD(o_pulse_f)
  );
  X_OPAD   \o_pulse_n.PAD  (
    .PAD(o_pulse_n)
  );
  X_CKBUF   \i_clk_BUFGP/BUFG  (
    .I(\i_clk_BUFGP/IBUFG_2 ),
    .O(i_clk_BUFGP)
  );
  X_CKBUF   \i_clk_BUFGP/IBUFG  (
    .I(i_clk),
    .O(\i_clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   o_pulse_vf_OBUF (
    .I(o_pulse_vf_OBUF_7),
    .O(o_pulse_vf)
  );
  X_OBUF   o_pulse_f_OBUF (
    .I(o_pulse_f_OBUF_5),
    .O(o_pulse_f)
  );
  X_OBUF   o_pulse_n_OBUF (
    .I(o_pulse_n_OBUF_6),
    .O(o_pulse_n)
  );
  X_ONE   NlwBlock_pulse_gen_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_pulse_gen_GND (
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

