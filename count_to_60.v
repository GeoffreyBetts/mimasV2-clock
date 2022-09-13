`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:33 09/13/2022 
// Design Name: 
// Module Name:    count_to_60 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 0.01
// Revision 0.01 - File Created & Inital code
// Additional Comments: 
// Functional 0-59 counter
//////////////////////////////////////////////////////////////////////////////////
module count_to_60(
    input clk,			// clock == 1Hz
    input reset,		// reset synchronous active high
    output out,		// output during 59-0 rollover
    output [7:0] q	// counter in hex
    );
	 wire carry;
	 
	 decade_counter first_digit	(.clk(clk),				// First digit
											 .reset(reset),		// Normal decade counter
											 .out(carry),
											 .q(q[3:0]));

	 decade_counter second_digit	(.clk(carry||reset),	// Tied to rollover of first digit (reset is also tied due to being synchronous)
											 .reset(reset||out), // Either reset-high or during rollover
											 .q(q[7:4]));	
	
	 assign out = (q==8'h59);

endmodule
