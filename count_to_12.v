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
    input i_clk,				// clock = 1Hz
    input i_reset,			// synchronous active-high
	 input i_ena,
	 input i_wr,
	 input [7:0] i_in,
    output reg o_out,		// output high for 1 clock signal during rollover
    output [7:0] o_q	// counter output
    );
	 wire w_carry;
	 reg r_ro = 1'b0;
	 
	 decade_counter first_digit	(.i_clk(i_clk),						// First digit
											 .i_reset(i_reset|o_out),			// Normal decade counter
											 .i_ena(i_ena|i_reset),
											 .i_wr(i_wr),
											 .i_in(i_in[3:0]),
											 .o_out(w_carry),
											 .o_q(o_q[3:0]));
																											// For second digit, 'out' isn't used
	 decade_counter second_digit	(.i_clk(i_clk),											// Tied to rollover of first digit (reset is also tied due to being synchronous)
											 .i_reset(i_reset|o_out), 								// Either reset-high or during rollover
											 .i_ena((i_ena&(w_carry|o_out|i_wr))|i_reset), // Also enabled when ro_del is high. Different to 0-59 counter as carry is high when first_digit==4'h9, but
											 .i_wr(i_wr),												// here has to roll over when the first digit==4'h1
											 .i_in(i_in[7:4]),
											 .o_out(),													// Unconnected as not req. (Still gives a warning at synthesis tho)
											 .o_q(o_q[7:4]));											
	

	 always @(posedge i_clk) begin	
		if (i_ena) begin
			if (i_reset) begin		// Change everything to low at reset
				r_ro <= 1'b0;
				o_out <= 1'b0;
			end else begin
				r_ro <= (o_q==8'h9);	// ro high during q==8'h10
				o_out <= r_ro;			// out is ro delayed by one ena signal thus high when q==8'h11
			end
		end
	 end
	 
endmodule
