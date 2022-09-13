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
    input clk,			// Frequency = 1Hz
    input reset,		// synchronous active-high reset
    input ena,			// enable clock
    input [1:0] sel,	// select which time to change, only can use when (ena == 0)
    input [7:0] in,	// insert new time
    output pm,			// am or pm?
    output [7:0] hh,	// hours
    output [7:0] mm,	// minutes
    output [7:0] ss	// seconds
    );


endmodule
