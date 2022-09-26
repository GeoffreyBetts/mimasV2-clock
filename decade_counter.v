`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:06:50 09/13/2022 
// Design Name: 
// Module Name:    decade_counter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 0.01
// Revision 0.01 - File Created & initial code
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decade_counter(
    input i_clk,				// (Clock == 1Hz)
    input i_reset,			// Synchronous active-high reset
	 input i_ena,
	 input i_inc,
	 input i_wr,
	 input [3:0] i_in,
	 output reg o_roll_high,		// high during rollover
	 output reg o_roll_low,
    output reg[3:0] o_q	// output
    );
	 
	 always @(posedge i_clk) begin					// Only does stuff on a positive clock edge when ena is high
		if (i_ena) begin	
			o_roll_high <= ((o_q==4'h8&i_inc)|(o_q==4'h0&~i_inc));
			o_roll_low <= ((o_q==4'h1&~i_inc)|(o_q==4'h9&i_inc));
			
			if (i_reset) begin
				o_q <= 1'h0;
				o_roll_low <= 1'b1;
			end else if (i_wr) o_q <= i_in;
			else if (i_inc) begin
				if (o_q==4'h9) o_q <= 4'h0;
				else o_q <= o_q+1'h1;
			end else begin
				if (o_q==4'h0) o_q <= 4'h9;
				else o_q <= o_q-1'h1;
			end
			
		end
	 end

endmodule
