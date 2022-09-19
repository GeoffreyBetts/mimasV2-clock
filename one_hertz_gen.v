`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:31 09/16/2022 
// Design Name: 
// Module Name:    one_hertz_gen 
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
module one_hertz_gen(
    input i_clk,
    input i_reset,
    output reg o_signal
    );
	 
	 reg [23:0]r_cnt = 24'h000000;
	 
	 always @(posedge i_clk) begin
		if (i_reset) begin							// Reset everything to 0 on reset
			o_signal <= 1'b0;
			r_cnt <= 1'b0;
		end else begin										// Generate a pulse for one clock cycle every 12000000 clock cycles (d12000000==hb71b00)
			o_signal <= (r_cnt==24'hb71b00-1'b1);		// Signal will be high on the next clock cycle after 11999999
			if (r_cnt==24'hb71b00-1'b1) r_cnt <= 1'b0;	// If cnt==11999999, rollover to 0 (therefore, signal is high when cnt==0)
			else r_cnt <= r_cnt+1'b1;						// Otherwise, increase cnt by 1'b1
		end
	 end

endmodule
