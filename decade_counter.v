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
	 output reg out,		// high during rollover
    output reg[3:0] q	// output
    );
	 
	 always @(posedge clk) begin
		if (reset) out = 1'b0;						// Statements handle 'out' output for rollover
		else if (q==4'd9) out = 1'b1;
		else out = 1'b0;
		
		if (reset||(q==4'd9)) q = 4'd00;
		else q = q+1'd1;
	 end

endmodule
