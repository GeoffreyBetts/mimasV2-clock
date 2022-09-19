`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:09 09/13/2022 
// Design Name: 
// Module Name:    top_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 0.01
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_module(
    input i_clk,			// Frequency = 12 MHz
    input i_reset,		// synchronous active-high reset
    input i_wr,			// high == write new time / low == run clock
    input [1:0] i_sel,	// select which time to change, only can use when (ena == 0)
    input [7:0] i_in,	// insert new time
    output o_pm,			// am or pm?
    output [7:0] o_hh,	// hours
    output [7:0] o_mm,	// minutes
    output [7:0] o_ss	// seconds
    );
	 wire w_signal;

	 one_hertz_gen one_second (.i_clk(i_clk),				// This module generates 'signal' with a frequency of 1 Hz, for 1 clock cycle
										.i_reset(i_reset),
										.o_signal(w_signal));
										
	 clock_counter clock_time (.i_clk(i_clk),				// This module updates the clock time when it recieves 'signal' on the next clock cycle
										.i_reset(i_reset),			// Then outputs the time in hex (hh:mm:ss) with an am/pm signal
										.i_ena(w_signal),
										.i_sel(i_sel),
										.i_wr(i_wr),
										.i_in(i_in),
										.o_pm(o_pm),
										.o_hh(o_hh),
										.o_mm(o_mm),
										.o_ss(o_ss));
										
endmodule
