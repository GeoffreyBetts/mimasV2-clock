////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: pulse_gen_synthesis.v
// /___/   /\     Timestamp: Fri Sep 30 09:25:36 2022
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -filter E:/Xilinx/projects/mimasV2-clock/iseconfig/filter.filter -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim pulse_gen.ngc pulse_gen_synthesis.v 
// Device	: xc6slx9-2-csg324
// Input file	: pulse_gen.ngc
// Output file	: E:\Xilinx\projects\mimasV2-clock\netgen\synthesis\pulse_gen_synthesis.v
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
  wire i_clk_BUFGP_0;
  wire i_reset_IBUF_1;
  wire o_pulse_f_OBUF_2;
  wire o_pulse_n_OBUF_3;
  wire o_pulse_vf_OBUF_4;
  wire \r_cnt_vf[3]_PWR_1_o_equal_2_o ;
  wire GND_1_o_GND_1_o_equal_8_o;
  wire \r_cnt_n[6]_PWR_1_o_equal_4_o ;
  wire N1;
  wire \Result<0>1 ;
  wire \Result<1>1 ;
  wire \Result<2>1 ;
  wire \Result<3>1 ;
  wire \GND_1_o_GND_1_o_equal_8_o<12>1_61 ;
  wire N5;
  wire \Maccum_r_cnt_f_cy<1>_rt_68 ;
  wire \Maccum_r_cnt_f_cy<2>_rt_69 ;
  wire \Maccum_r_cnt_f_cy<3>_rt_70 ;
  wire \Maccum_r_cnt_f_cy<4>_rt_71 ;
  wire \Maccum_r_cnt_f_cy<5>_rt_72 ;
  wire \Maccum_r_cnt_f_cy<6>_rt_73 ;
  wire \Maccum_r_cnt_f_cy<7>_rt_74 ;
  wire \Maccum_r_cnt_f_cy<8>_rt_75 ;
  wire \Maccum_r_cnt_f_cy<9>_rt_76 ;
  wire \Maccum_r_cnt_f_cy<10>_rt_77 ;
  wire \Maccum_r_cnt_f_cy<11>_rt_78 ;
  wire \Maccum_r_cnt_f_xor<12>_rt_79 ;
  wire N7;
  wire r_cnt_n_1_rstpot_81;
  wire r_cnt_n_2_rstpot_82;
  wire r_cnt_n_6_rstpot_83;
  wire r_cnt_n_5_rstpot_84;
  wire r_cnt_n_0_rstpot_85;
  wire r_cnt_n_3_rstpot_86;
  wire r_cnt_n_4_rstpot_87;
  wire r_cnt_f_0_rstpot_88;
  wire N9;
  wire N11;
  wire N17;
  wire N25;
  wire N26;
  wire r_cnt_vf_0_rstpot_94;
  wire r_cnt_vf_1_rstpot_95;
  wire r_cnt_vf_2_rstpot_96;
  wire r_cnt_vf_3_rstpot_97;
  wire N32;
  wire N33;
  wire r_cnt_f_1_rstpot_100;
  wire r_cnt_f_2_rstpot_101;
  wire r_cnt_f_3_rstpot_102;
  wire r_cnt_f_4_rstpot_103;
  wire r_cnt_f_7_rstpot_104;
  wire r_cnt_f_5_rstpot_105;
  wire r_cnt_f_6_rstpot_106;
  wire r_cnt_f_8_rstpot_107;
  wire r_cnt_f_9_rstpot_108;
  wire r_cnt_f_10_rstpot_109;
  wire r_cnt_f_11_rstpot_110;
  wire r_cnt_f_12_rstpot_111;
  wire N35;
  wire N36;
  wire [12 : 0] r_cnt_f;
  wire [6 : 0] r_cnt_n;
  wire [12 : 4] Result;
  wire [4 : 4] Maccum_r_cnt_n_cy;
  wire [3 : 0] r_cnt_vf;
  wire [0 : 0] Maccum_r_cnt_f_lut;
  wire [11 : 0] Maccum_r_cnt_f_cy;
  wire [12 : 12] GND_1_o_GND_1_o_equal_8_o_0;
  GND   XST_GND (
    .G(N1)
  );
  FDR   o_pulse_vf_2 (
    .C(i_clk_BUFGP_0),
    .D(\r_cnt_vf[3]_PWR_1_o_equal_2_o ),
    .R(i_reset_IBUF_1),
    .Q(o_pulse_vf_OBUF_4)
  );
  FDR   o_pulse_f_3 (
    .C(i_clk_BUFGP_0),
    .D(GND_1_o_GND_1_o_equal_8_o),
    .R(i_reset_IBUF_1),
    .Q(o_pulse_f_OBUF_2)
  );
  FDR   o_pulse_n_4 (
    .C(i_clk_BUFGP_0),
    .D(\r_cnt_n[6]_PWR_1_o_equal_4_o ),
    .R(i_reset_IBUF_1),
    .Q(o_pulse_n_OBUF_3)
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \Maccum_r_cnt_f_lut<0>  (
    .I0(r_cnt_f[0]),
    .I1(o_pulse_vf_OBUF_4),
    .O(Maccum_r_cnt_f_lut[0])
  );
  MUXCY   \Maccum_r_cnt_f_cy<0>  (
    .CI(N1),
    .DI(r_cnt_f[0]),
    .S(Maccum_r_cnt_f_lut[0]),
    .O(Maccum_r_cnt_f_cy[0])
  );
  XORCY   \Maccum_r_cnt_f_xor<0>  (
    .CI(N1),
    .LI(Maccum_r_cnt_f_lut[0]),
    .O(\Result<0>1 )
  );
  MUXCY   \Maccum_r_cnt_f_cy<1>  (
    .CI(Maccum_r_cnt_f_cy[0]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<1>_rt_68 ),
    .O(Maccum_r_cnt_f_cy[1])
  );
  XORCY   \Maccum_r_cnt_f_xor<1>  (
    .CI(Maccum_r_cnt_f_cy[0]),
    .LI(\Maccum_r_cnt_f_cy<1>_rt_68 ),
    .O(\Result<1>1 )
  );
  MUXCY   \Maccum_r_cnt_f_cy<2>  (
    .CI(Maccum_r_cnt_f_cy[1]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<2>_rt_69 ),
    .O(Maccum_r_cnt_f_cy[2])
  );
  XORCY   \Maccum_r_cnt_f_xor<2>  (
    .CI(Maccum_r_cnt_f_cy[1]),
    .LI(\Maccum_r_cnt_f_cy<2>_rt_69 ),
    .O(\Result<2>1 )
  );
  MUXCY   \Maccum_r_cnt_f_cy<3>  (
    .CI(Maccum_r_cnt_f_cy[2]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<3>_rt_70 ),
    .O(Maccum_r_cnt_f_cy[3])
  );
  XORCY   \Maccum_r_cnt_f_xor<3>  (
    .CI(Maccum_r_cnt_f_cy[2]),
    .LI(\Maccum_r_cnt_f_cy<3>_rt_70 ),
    .O(\Result<3>1 )
  );
  MUXCY   \Maccum_r_cnt_f_cy<4>  (
    .CI(Maccum_r_cnt_f_cy[3]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<4>_rt_71 ),
    .O(Maccum_r_cnt_f_cy[4])
  );
  XORCY   \Maccum_r_cnt_f_xor<4>  (
    .CI(Maccum_r_cnt_f_cy[3]),
    .LI(\Maccum_r_cnt_f_cy<4>_rt_71 ),
    .O(Result[4])
  );
  MUXCY   \Maccum_r_cnt_f_cy<5>  (
    .CI(Maccum_r_cnt_f_cy[4]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<5>_rt_72 ),
    .O(Maccum_r_cnt_f_cy[5])
  );
  XORCY   \Maccum_r_cnt_f_xor<5>  (
    .CI(Maccum_r_cnt_f_cy[4]),
    .LI(\Maccum_r_cnt_f_cy<5>_rt_72 ),
    .O(Result[5])
  );
  MUXCY   \Maccum_r_cnt_f_cy<6>  (
    .CI(Maccum_r_cnt_f_cy[5]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<6>_rt_73 ),
    .O(Maccum_r_cnt_f_cy[6])
  );
  XORCY   \Maccum_r_cnt_f_xor<6>  (
    .CI(Maccum_r_cnt_f_cy[5]),
    .LI(\Maccum_r_cnt_f_cy<6>_rt_73 ),
    .O(Result[6])
  );
  MUXCY   \Maccum_r_cnt_f_cy<7>  (
    .CI(Maccum_r_cnt_f_cy[6]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<7>_rt_74 ),
    .O(Maccum_r_cnt_f_cy[7])
  );
  XORCY   \Maccum_r_cnt_f_xor<7>  (
    .CI(Maccum_r_cnt_f_cy[6]),
    .LI(\Maccum_r_cnt_f_cy<7>_rt_74 ),
    .O(Result[7])
  );
  MUXCY   \Maccum_r_cnt_f_cy<8>  (
    .CI(Maccum_r_cnt_f_cy[7]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<8>_rt_75 ),
    .O(Maccum_r_cnt_f_cy[8])
  );
  XORCY   \Maccum_r_cnt_f_xor<8>  (
    .CI(Maccum_r_cnt_f_cy[7]),
    .LI(\Maccum_r_cnt_f_cy<8>_rt_75 ),
    .O(Result[8])
  );
  MUXCY   \Maccum_r_cnt_f_cy<9>  (
    .CI(Maccum_r_cnt_f_cy[8]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<9>_rt_76 ),
    .O(Maccum_r_cnt_f_cy[9])
  );
  XORCY   \Maccum_r_cnt_f_xor<9>  (
    .CI(Maccum_r_cnt_f_cy[8]),
    .LI(\Maccum_r_cnt_f_cy<9>_rt_76 ),
    .O(Result[9])
  );
  MUXCY   \Maccum_r_cnt_f_cy<10>  (
    .CI(Maccum_r_cnt_f_cy[9]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<10>_rt_77 ),
    .O(Maccum_r_cnt_f_cy[10])
  );
  XORCY   \Maccum_r_cnt_f_xor<10>  (
    .CI(Maccum_r_cnt_f_cy[9]),
    .LI(\Maccum_r_cnt_f_cy<10>_rt_77 ),
    .O(Result[10])
  );
  MUXCY   \Maccum_r_cnt_f_cy<11>  (
    .CI(Maccum_r_cnt_f_cy[10]),
    .DI(N1),
    .S(\Maccum_r_cnt_f_cy<11>_rt_78 ),
    .O(Maccum_r_cnt_f_cy[11])
  );
  XORCY   \Maccum_r_cnt_f_xor<11>  (
    .CI(Maccum_r_cnt_f_cy[10]),
    .LI(\Maccum_r_cnt_f_cy<11>_rt_78 ),
    .O(Result[11])
  );
  XORCY   \Maccum_r_cnt_f_xor<12>  (
    .CI(Maccum_r_cnt_f_cy[11]),
    .LI(\Maccum_r_cnt_f_xor<12>_rt_79 ),
    .O(Result[12])
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \r_cnt_vf[3]_PWR_1_o_equal_2_o<3>1  (
    .I0(r_cnt_vf[3]),
    .I1(r_cnt_vf[2]),
    .I2(r_cnt_vf[1]),
    .I3(r_cnt_vf[0]),
    .O(\r_cnt_vf[3]_PWR_1_o_equal_2_o )
  );
  LUT6 #(
    .INIT ( 64'h0000800000000000 ))
  \GND_1_o_GND_1_o_equal_8_o<12>1  (
    .I0(r_cnt_f[9]),
    .I1(r_cnt_f[1]),
    .I2(r_cnt_f[12]),
    .I3(r_cnt_f[11]),
    .I4(r_cnt_f[0]),
    .I5(r_cnt_f[3]),
    .O(GND_1_o_GND_1_o_equal_8_o_0[12])
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \GND_1_o_GND_1_o_equal_8_o<12>2  (
    .I0(r_cnt_f[4]),
    .I1(r_cnt_f[2]),
    .I2(r_cnt_f[5]),
    .I3(r_cnt_f[6]),
    .I4(r_cnt_f[7]),
    .I5(r_cnt_f[8]),
    .O(\GND_1_o_GND_1_o_equal_8_o<12>1_61 )
  );
  LUT3 #(
    .INIT ( 8'h40 ))
  \GND_1_o_GND_1_o_equal_8_o<12>3  (
    .I0(r_cnt_f[10]),
    .I1(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .I2(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .O(GND_1_o_GND_1_o_equal_8_o)
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \r_cnt_n[6]_PWR_1_o_equal_4_o<6>_SW0  (
    .I0(r_cnt_n[1]),
    .I1(r_cnt_n[2]),
    .O(N5)
  );
  LUT6 #(
    .INIT ( 64'h0000000000008000 ))
  \r_cnt_n[6]_PWR_1_o_equal_4_o<6>  (
    .I0(r_cnt_n[6]),
    .I1(r_cnt_n[5]),
    .I2(r_cnt_n[4]),
    .I3(r_cnt_n[3]),
    .I4(r_cnt_n[0]),
    .I5(N5),
    .O(\r_cnt_n[6]_PWR_1_o_equal_4_o )
  );
  IBUF   i_reset_IBUF (
    .I(i_reset),
    .O(i_reset_IBUF_1)
  );
  OBUF   o_pulse_vf_OBUF (
    .I(o_pulse_vf_OBUF_4),
    .O(o_pulse_vf)
  );
  OBUF   o_pulse_f_OBUF (
    .I(o_pulse_f_OBUF_2),
    .O(o_pulse_f)
  );
  OBUF   o_pulse_n_OBUF (
    .I(o_pulse_n_OBUF_3),
    .O(o_pulse_n)
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<1>_rt  (
    .I0(r_cnt_f[1]),
    .O(\Maccum_r_cnt_f_cy<1>_rt_68 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<2>_rt  (
    .I0(r_cnt_f[2]),
    .O(\Maccum_r_cnt_f_cy<2>_rt_69 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<3>_rt  (
    .I0(r_cnt_f[3]),
    .O(\Maccum_r_cnt_f_cy<3>_rt_70 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<4>_rt  (
    .I0(r_cnt_f[4]),
    .O(\Maccum_r_cnt_f_cy<4>_rt_71 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<5>_rt  (
    .I0(r_cnt_f[5]),
    .O(\Maccum_r_cnt_f_cy<5>_rt_72 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<6>_rt  (
    .I0(r_cnt_f[6]),
    .O(\Maccum_r_cnt_f_cy<6>_rt_73 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<7>_rt  (
    .I0(r_cnt_f[7]),
    .O(\Maccum_r_cnt_f_cy<7>_rt_74 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<8>_rt  (
    .I0(r_cnt_f[8]),
    .O(\Maccum_r_cnt_f_cy<8>_rt_75 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<9>_rt  (
    .I0(r_cnt_f[9]),
    .O(\Maccum_r_cnt_f_cy<9>_rt_76 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<10>_rt  (
    .I0(r_cnt_f[10]),
    .O(\Maccum_r_cnt_f_cy<10>_rt_77 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_cy<11>_rt  (
    .I0(r_cnt_f[11]),
    .O(\Maccum_r_cnt_f_cy<11>_rt_78 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \Maccum_r_cnt_f_xor<12>_rt  (
    .I0(r_cnt_f[12]),
    .O(\Maccum_r_cnt_f_xor<12>_rt_79 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \r_cnt_n[6]_PWR_1_o_equal_4_o<6>_SW1  (
    .I0(r_cnt_n[4]),
    .I1(r_cnt_n[3]),
    .O(N7)
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_1 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_1_rstpot_81),
    .Q(r_cnt_n[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_2 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_2_rstpot_82),
    .Q(r_cnt_n[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_6 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_6_rstpot_83),
    .Q(r_cnt_n[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_5 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_5_rstpot_84),
    .Q(r_cnt_n[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_0 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_0_rstpot_85),
    .Q(r_cnt_n[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_3 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_3_rstpot_86),
    .Q(r_cnt_n[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_n_4 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_n_4_rstpot_87),
    .Q(r_cnt_n[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_0 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_0_rstpot_88),
    .Q(r_cnt_f[0])
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \Maccum_r_cnt_n_cy<4>11  (
    .I0(r_cnt_n[4]),
    .I1(r_cnt_n[3]),
    .I2(r_cnt_n[2]),
    .I3(r_cnt_n[1]),
    .I4(r_cnt_n[0]),
    .I5(o_pulse_f_OBUF_2),
    .O(Maccum_r_cnt_n_cy[4])
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  r_cnt_n_0_rstpot_SW0 (
    .I0(r_cnt_n[6]),
    .I1(r_cnt_n[5]),
    .O(N9)
  );
  LUT6 #(
    .INIT ( 64'h1414141410141414 ))
  r_cnt_n_0_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(o_pulse_f_OBUF_2),
    .I2(r_cnt_n[0]),
    .I3(N9),
    .I4(N7),
    .I5(N5),
    .O(r_cnt_n_0_rstpot_85)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_0_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(\Result<0>1 ),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_0_rstpot_88)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_cnt_n_val1_SW0 (
    .I0(r_cnt_n[5]),
    .I1(r_cnt_n[0]),
    .O(N11)
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  r_cnt_n_val1_SW4 (
    .I0(r_cnt_n[6]),
    .I1(r_cnt_n[0]),
    .O(N17)
  );
  LUT6 #(
    .INIT ( 64'h1111111144440444 ))
  r_cnt_n_5_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_n[5]),
    .I2(N7),
    .I3(N17),
    .I4(N5),
    .I5(Maccum_r_cnt_n_cy[4]),
    .O(r_cnt_n_5_rstpot_84)
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  r_cnt_n_val1_SW9 (
    .I0(r_cnt_n[2]),
    .I1(r_cnt_n[1]),
    .I2(r_cnt_n[0]),
    .I3(o_pulse_f_OBUF_2),
    .O(N25)
  );
  LUT6 #(
    .INIT ( 64'hF000000088888888 ))
  r_cnt_n_val1_SW10 (
    .I0(r_cnt_n[5]),
    .I1(r_cnt_n[6]),
    .I2(r_cnt_n[2]),
    .I3(r_cnt_n[1]),
    .I4(o_pulse_f_OBUF_2),
    .I5(r_cnt_n[0]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'h4404111144441151 ))
  r_cnt_n_3_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_n[3]),
    .I2(N7),
    .I3(N5),
    .I4(N25),
    .I5(N26),
    .O(r_cnt_n_3_rstpot_86)
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_vf_0 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_vf_0_rstpot_94),
    .Q(r_cnt_vf[0])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_vf_1 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_vf_1_rstpot_95),
    .Q(r_cnt_vf[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_vf_2 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_vf_2_rstpot_96),
    .Q(r_cnt_vf[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_vf_3 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_vf_3_rstpot_97),
    .Q(r_cnt_vf[3])
  );
  LUT5 #(
    .INIT ( 32'h14440444 ))
  r_cnt_vf_3_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_vf[3]),
    .I2(r_cnt_vf[1]),
    .I3(r_cnt_vf[2]),
    .I4(r_cnt_vf[0]),
    .O(r_cnt_vf_3_rstpot_97)
  );
  LUT5 #(
    .INIT ( 32'h11044444 ))
  r_cnt_vf_2_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_vf[2]),
    .I2(r_cnt_vf[3]),
    .I3(r_cnt_vf[0]),
    .I4(r_cnt_vf[1]),
    .O(r_cnt_vf_2_rstpot_96)
  );
  LUT5 #(
    .INIT ( 32'h10141414 ))
  r_cnt_vf_1_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_vf[1]),
    .I2(r_cnt_vf[0]),
    .I3(r_cnt_vf[2]),
    .I4(r_cnt_vf[3]),
    .O(r_cnt_vf_1_rstpot_95)
  );
  LUT5 #(
    .INIT ( 32'h01111111 ))
  r_cnt_vf_0_rstpot (
    .I0(r_cnt_vf[0]),
    .I1(i_reset_IBUF_1),
    .I2(r_cnt_vf[1]),
    .I3(r_cnt_vf[3]),
    .I4(r_cnt_vf[2]),
    .O(r_cnt_vf_0_rstpot_94)
  );
  LUT5 #(
    .INIT ( 32'h7FFFFFFF ))
  r_cnt_n_6_rstpot_SW0 (
    .I0(r_cnt_n[3]),
    .I1(r_cnt_n[2]),
    .I2(r_cnt_n[1]),
    .I3(r_cnt_n[0]),
    .I4(o_pulse_f_OBUF_2),
    .O(N32)
  );
  LUT5 #(
    .INIT ( 32'h80020002 ))
  r_cnt_n_6_rstpot_SW1 (
    .I0(r_cnt_n[3]),
    .I1(r_cnt_n[2]),
    .I2(r_cnt_n[1]),
    .I3(r_cnt_n[0]),
    .I4(o_pulse_f_OBUF_2),
    .O(N33)
  );
  LUT6 #(
    .INIT ( 64'h0444444414445444 ))
  r_cnt_n_6_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_n[6]),
    .I2(r_cnt_n[4]),
    .I3(r_cnt_n[5]),
    .I4(N33),
    .I5(N32),
    .O(r_cnt_n_6_rstpot_83)
  );
  LUT5 #(
    .INIT ( 32'h14444444 ))
  r_cnt_n_2_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_n[2]),
    .I2(r_cnt_n[1]),
    .I3(r_cnt_n[0]),
    .I4(o_pulse_f_OBUF_2),
    .O(r_cnt_n_2_rstpot_82)
  );
  LUT4 #(
    .INIT ( 16'h1444 ))
  r_cnt_n_1_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_n[1]),
    .I2(r_cnt_n[0]),
    .I3(o_pulse_f_OBUF_2),
    .O(r_cnt_n_1_rstpot_81)
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_1 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_1_rstpot_100),
    .Q(r_cnt_f[1])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_2 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_2_rstpot_101),
    .Q(r_cnt_f[2])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_3 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_3_rstpot_102),
    .Q(r_cnt_f[3])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_4 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_4_rstpot_103),
    .Q(r_cnt_f[4])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_7 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_7_rstpot_104),
    .Q(r_cnt_f[7])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_5 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_5_rstpot_105),
    .Q(r_cnt_f[5])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_6 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_6_rstpot_106),
    .Q(r_cnt_f[6])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_8 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_8_rstpot_107),
    .Q(r_cnt_f[8])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_9 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_9_rstpot_108),
    .Q(r_cnt_f[9])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_10 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_10_rstpot_109),
    .Q(r_cnt_f[10])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_11 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_11_rstpot_110),
    .Q(r_cnt_f[11])
  );
  FD #(
    .INIT ( 1'b0 ))
  r_cnt_f_12 (
    .C(i_clk_BUFGP_0),
    .D(r_cnt_f_12_rstpot_111),
    .Q(r_cnt_f[12])
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_1_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(\Result<1>1 ),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_1_rstpot_100)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_2_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(\Result<2>1 ),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_2_rstpot_101)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_3_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(\Result<3>1 ),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_3_rstpot_102)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_4_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[4]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_4_rstpot_103)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_5_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[5]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_5_rstpot_105)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_6_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[6]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_6_rstpot_106)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_7_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[7]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_7_rstpot_104)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_8_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[8]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_8_rstpot_107)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_9_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[9]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_9_rstpot_108)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_10_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[10]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_10_rstpot_109)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_11_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[11]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_11_rstpot_110)
  );
  LUT5 #(
    .INIT ( 32'h40505050 ))
  r_cnt_f_12_rstpot (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_f[10]),
    .I2(Result[12]),
    .I3(GND_1_o_GND_1_o_equal_8_o_0[12]),
    .I4(\GND_1_o_GND_1_o_equal_8_o<12>1_61 ),
    .O(r_cnt_f_12_rstpot_111)
  );
  MUXF7   r_cnt_n_4_rstpot (
    .I0(N35),
    .I1(N36),
    .S(r_cnt_n[1]),
    .O(r_cnt_n_4_rstpot_87)
  );
  LUT6 #(
    .INIT ( 64'h2222022222222222 ))
  r_cnt_n_4_rstpot_F (
    .I0(r_cnt_n[4]),
    .I1(i_reset_IBUF_1),
    .I2(r_cnt_n[3]),
    .I3(r_cnt_n[6]),
    .I4(r_cnt_n[2]),
    .I5(N11),
    .O(N35)
  );
  LUT6 #(
    .INIT ( 64'h1444444444444444 ))
  r_cnt_n_4_rstpot_G (
    .I0(i_reset_IBUF_1),
    .I1(r_cnt_n[4]),
    .I2(o_pulse_f_OBUF_2),
    .I3(r_cnt_n[2]),
    .I4(r_cnt_n[3]),
    .I5(r_cnt_n[0]),
    .O(N36)
  );
  BUFGP   i_clk_BUFGP (
    .I(i_clk),
    .O(i_clk_BUFGP_0)
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

