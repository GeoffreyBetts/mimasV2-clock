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
	 input ena,
    output reg out,		// output high for 1 clock signal during rollover
    output [7:0] q	// counter output
    );
	 wire carry;
	 reg ro, ro_del;
	 
	 decade_counter first_digit	(.clk(clk),					// First digit
											 .reset(reset|ro_del),		// Normal decade counter
											 .ena(ena|reset),
											 .out(carry),
											 .q(q[3:0]));
																				// For second digit, 'out' isn't used
	 decade_counter second_digit	(.clk(clk),	// Tied to rollover of first digit (reset is also tied due to being synchronous)
											 .reset(reset|ro_del), 			// Either reset-high or during rollover
											 .ena((ena&carry)|(ena&ro_del)|reset),
											 .q(q[7:4]));					
	

	 always @(posedge clk) begin	// Always block to control 'out'.
		if (reset) begin
			ro <= 1'b0;
			ro_del <= 1'b0;
			out <= 1'b0;
		end else if (ena) begin
			ro <= (q==8'h9);	// Resets counter at 11.
			ro_del <= ro;		// high during reset to allow pm_toggle to reset to 1'b0
			out <= ro;			// Otherwise follows ro, ends up trailing it by 1 clock cycle (effectively)
			
		end
	 end
	 
endmodule
