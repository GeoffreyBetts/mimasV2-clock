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
	 input i_wr,
	 input [3:0] i_in,
	 output reg o_out,		// high during rollover
    output reg[3:0] o_q	// output
    );
	 
	 always @(posedge i_clk) begin					// Only does stuff on a positive clock edge when ena is high
		if (i_ena) begin	
		
			if (o_q==4'd8) o_out <= 1'b1;				// 'out' high during rollover (specifically when q==4'd9)
			else o_out <= 1'b0;							// 'out' low otherwise	
			
			if (i_wr) begin										// If i_wr is high, write input to output
				o_q <= i_in;
			end else begin											// Else, count upwwards
				if (i_reset||(o_q==4'd9)) o_q <= 4'd00;	// If reset or q == 9, reset to 0
				else o_q <= o_q+1'd1;							// Otherwise, increase by 1
			end
		end
	 end

endmodule
