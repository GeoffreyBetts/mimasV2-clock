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
    input clk,			// Frequency = 12 MHz
    input reset,		// synchronous active-high reset
    input ena,			// enable clock
    input [1:0] sel,	// select which time to change, only can use when (ena == 0)
    input [7:0] in,	// insert new time
    output pm,			// am or pm?
    output [7:0] hh,	// hours
    output [7:0] mm,	// minutes
    output [7:0] ss	// seconds
    );

	 one_hertz_gen one_second (.clk(clk),				// This module generates 'signal' with a frequency of 1 Hz, for 1 clock cycle
										.reset(reset),
										.signal(signal));
										
	 clock_counter clock_time (.clk(clk),				// This module updates the clock time when it recieves 'signal' on the next clock cycle
										.reset(reset),			// Then outputs the time in hex (hh:mm:ss) with an am/pm signal
										.ena(signal),
										.pm(pm),
										.hh(hh),
										.mm(mm),
										.ss(ss));
										
endmodule
