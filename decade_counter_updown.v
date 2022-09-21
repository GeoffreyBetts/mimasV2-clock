`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:08:18 09/21/2022 
// Design Name: 
// Module Name:    decade_counter_updown 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module decade_counter_updown(
    input i_clk,
    input i_reset,
    input i_ena,
    input i_up,
    input i_down,
	 input i_wr,
	 input [3:0] i_in,
    output reg o_out_up,
	 output reg o_out_down,
    output reg [3:0] o_q
    );
	 
	 always @(posedge i_clk) begin
		if (i_ena) begin
			o_out_up <= 1'b0;
			o_out_down <= 1'b0;
			if (i_reset) begin				// If reset is high, reset value
				o_q <= 4'h0;
			end else if (i_wr) begin		// If wr is high, change value
				o_q <= i_in;
			end else begin						// If wr is low, start counting up or down
				if (i_up) begin					// If i_up is high, increment value
					if ((o_q == 4'h7)|(o_q == 4'h9)) o_out_up <= 1'b1;
					if (o_q == 4'h8) o_out_down <= 1'b1;
					
					if (o_q == 4'h9) o_q <= 4'h0;
					else o_q <= o_q+1'b1;
				end else if (i_down) begin		// If i_down is high decrement value
					if (o_q == 4'h1) o_out_up <= 1'b1;
					if ((o_q == 4'h2)|(o_q == 4'h0)) o_out_down <= 1'b1;		
					
					if (o_q == 4'h0) o_q <= 4'h9;
					else o_q <= o_q-1'b1;				
				end
			end
		end
	 end

endmodule
