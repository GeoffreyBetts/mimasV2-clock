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
//				0.02 - Fixing synchronous reset
// Additional Comments: 
// Functional 0-59 counter
//////////////////////////////////////////////////////////////////////////////////
module count_to_60(
    input i_clk,			// clock == 1Hz
    input i_reset,		// reset synchronous active-high
	 input i_ena,
	 input i_inc,
    output reg o_roll,		// output during 59-0 rollover
    output [7:0] o_q	// counter in hex
    );
	 wire w_carry_high, w_carry_low;
	 wire w_ena2;
	 wire w_roll_htl, w_roll_lth;
	 reg r_roll_htl, r_roll_lth;
	 reg r_ena2;
	 
	 assign w_ena2 = i_ena&((i_inc&w_carry_high)|(~i_inc&w_carry_low));
	 assign w_roll_htl = ((o_q[7:4]==4'h5)&i_inc);
	 assign w_roll_lth = ((o_q[7:4]==4'h0)&~i_inc);
				
	 // First Digit: Straightforward use of decade_counter			
	 decade_counter first_digit	(.i_clk(i_clk),				// First digit
											 .i_reset(i_reset),
											 .i_ena(i_ena),
											 .i_inc(i_inc),
											 .i_wr(1'b0),
											 .i_in(4'h0),
											 .o_roll_high(w_carry_high),
											 .o_roll_low(w_carry_low),
											 .o_q(o_q[3:0]));
	 
	 // Second Digit: Similar to first digit, but few differences.
	 // If rolling high-to-low (htl), uses reset to bring value to 0
	 // If rolling low-to-high (lth), uses write function to bring value to 5
	 // Is only enabled during ena and when the first digit has a carry, and inc is at the relevant value
	 decade_counter second_digit	(.i_clk(i_clk),
											 .i_reset(i_reset|w_roll_htl), 			// Either reset-high or during delayed rollover
											 .i_ena(w_ena2|i_reset),	//enabled when ena&carry is high, as carry will be high for multiple clock cycles between ena signals
											 .i_inc(i_inc),
											 .i_wr(w_roll_lth),
											 .i_in(4'h5),
											 .o_roll_high(),							// Unconnected as not req. (Still gives a warning at synthesis tho)
											 .o_roll_low(),
											 .o_q(o_q[7:4]));	
	
	 
	 always @(posedge i_clk) begin
		if (i_reset) o_roll <= 1'b0;
		else o_roll <= (o_q==8'h59&i_inc)|(o_q==8'h00&~i_inc); // out is ro delayed by one ena signal, so high when q==8'h59
	 end
	 

endmodule
