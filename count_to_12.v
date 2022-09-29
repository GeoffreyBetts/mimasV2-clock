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
    input i_clk,				
    input i_reset,			// synchronous active-high
	 input i_ena,
	 input i_inc,
    output reg o_roll,		// output high for 1 clock signal during rollover
    output [7:0] o_q			// counter output	 
    );
	 wire w_carry_high, w_carry_low;
	 wire w_ena2;
	 
	 assign w_ena2 = i_ena&((i_inc&w_carry_high)|(~i_inc&w_carry_low)|o_roll);
	 
	 // First Digit: Fairely straight forward decade counter. Couple differences however
	 // High-to-low rollover triggered with reset
	 // Low-to-high rollover triggered with write function
	 decade_counter first_digit	(.i_clk(i_clk),						
											 .i_reset(i_reset|(o_roll&i_inc)),			
											 .i_ena(i_ena),
											 .i_inc(i_inc),
											 .i_wr(w_carry_low&~i_inc&~o_q[4]),
											 .i_in(4'h1),
											 .o_roll_high(w_carry_high),
											 .o_roll_low(w_carry_low),
											 .o_q(o_q[3:0]));
											 
	 // Second Digit: Uses a dff instead, since only controls 1 bit
	 // i_d found with truth table: toggles when triggered, but brought to 0 when reset is high
	 // enable signal high to trigger toggle: High when htl rollerover and inc is high, lth when inc is low, or during rollover
	 my_dff second_digit (.i_clk(i_clk),
								 .i_ena(w_ena2|i_reset),
								 .i_d(~i_reset&~o_q[4]),
								 .o_q(o_q[4]));
								 
	 assign o_q[7:5] = 3'b000;
	

	 always @(posedge i_clk) begin	
		if (i_reset) o_roll <= 1'b0;
		else o_roll <= (o_q==8'h11&i_inc)|(o_q==8'h00&&~i_inc);			// out is ro delayed by one ena signal thus high when q==8'h11
	 end
	 
endmodule
