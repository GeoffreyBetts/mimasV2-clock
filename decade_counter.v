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
    input clk,				// (Clock == 1Hz)
    input reset,			// Synchronous active-high reset
	 input ena,
	 output reg out,		// high during rollover
    output reg[3:0] q	// output
    );
	 
	 always @(posedge clk) begin					// Only does stuff on a positive clock edge when ena is high
		if (ena) begin
			if (q==4'd8) out <= 1'b1;				// 'out' high during rollover (specifically when q==4'd9)
			else out <= 1'b0;							// 'out' low otherwise
		
			if (reset||(q==4'd9)) q <= 4'd00;	// If reset or q == 9, reset to 0
			else q <= q+1'd1;							// Otherwise, increase by 1
		end
	 end

endmodule
