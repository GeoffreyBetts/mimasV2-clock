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
	 reg ro;
	 
	 decade_counter first_digit	(.clk(clk),						// First digit
											 .reset(reset|out),			// Normal decade counter
											 .ena(ena|reset),
											 .out(carry),
											 .q(q[3:0]));
																								// For second digit, 'out' isn't used
	 decade_counter second_digit	(.clk(clk),										// Tied to rollover of first digit (reset is also tied due to being synchronous)
											 .reset(reset|out), 							// Either reset-high or during rollover
											 .ena((ena&carry)|(ena&out)|reset), 	// Also enabled when ro_del is high. Different to 0-59 counter as carry is high when first_digit==4'h9, but
											 .out(),											// Unconnected as not req. (Still gives a warning at synthesis tho)
											 .q(q[7:4]));									// here has to roll over when the first digit==4'h1
	

	 always @(posedge clk) begin	
		if (ena) begin
			if (reset) begin		// Change everything to low at reset
				ro <= 1'b0;
				out <= 1'b0;
			end else begin
				ro <= (q==8'h9);	// ro high during q==8'h10
				out <= ro;			// out is ro delayed by one ena signal thus high when q==8'h11
			end
		end
	 end
	 
endmodule
