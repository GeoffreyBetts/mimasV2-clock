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
    input clk,
    input reset,
    output reg signal
    );
	 
	 reg [23:0]cnt;
	 
	 always @(posedge clk) begin
		if (reset) begin							// Reset everything to 0 on reset
			signal <= 1'b0;
			cnt <= 1'b0;
		end else begin										// Generate a pulse for one clock cycle every 12000000 clock cycles (d12000000==hb71b00)
			signal <= (cnt==24'hb71b00-1'b1);		// Signal will be high on the next clock cycle after 11999999
			if (cnt==24'hb71b00-1'b1) cnt <= 1'b0;	// If cnt==11999999, rollover to 0 (therefore, signal is high when cnt==0)
			else cnt <= cnt+1'b1;						// Otherwise, increase cnt by 1'b1
		end
	 end

endmodule
