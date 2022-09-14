`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:53:28 09/13/2022 
// Design Name: 
// Module Name:    count_to_12 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 0.02
// Revision 0.01 - File Created & Initial code
//				0.02 - Change output q to 8 bits instead of 4
// Additional Comments: 
// Counts from 0-to-11. Outputs high when counter rolls over.
//////////////////////////////////////////////////////////////////////////////////
module count_to_12(
    input clk,				// clock = 1Hz
    input reset,			// synchronous active-high
    output reg out,		// output high for 1 clock signal during rollover
    output [7:0] q	// counter output
    );
	 wire carry, carry2;
	 
	 decade_counter first_digit	(.clk(clk),					// First digit
											 .reset(reset||ro),		// Normal decade counter
											 .out(carry),
											 .q(q[3:0]));
																				// For second digit, 'out' isn't used
	 decade_counter second_digit	(.clk(carry||(reset&clk)),	// Tied to rollover of first digit (reset is also tied due to being synchronous)
											 .reset(reset||ro), 			// Either reset-high or during rollover
											 .q(q[7:4]));					
	
	 assign ro = (q==8'h11);		// Resets counter at 11.
	 always @(posedge clk) begin	// Always block to control 'out'.
		if (reset) out <= 1'b1;		// high during reset to allow pm_toggle to reset to 1'b0
		else out <= ro;				// Otherwise follows ro, ends up trailing it by 1 clock cycle (effectively)
	 end
	 
endmodule
