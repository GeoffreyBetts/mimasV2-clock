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
// Revision: 0.01
// Revision 0.01 - File Created & Initial code
// Additional Comments: 
// Counts from 0-to-11. Outputs high when counter rolls over.
//////////////////////////////////////////////////////////////////////////////////
module count_to_12(
    input clk,				// clock = 1Hz
    input reset,			// synchronous active-high
    output reg out,		// output high for 1 clock signal during rollover
    output reg[3:0] q	// counter output
    );

	 always @(posedge clk) begin
		if (reset) out = 1'b0;						// Statements handle 'out' output for rollover
		else if (q==4'd11) out = 1'b1;
		else out = 1'b0;
		
		if (reset||(q==4'd11)) q = 4'd00;		// If reset high or normal rollover
		else q = q+1'd1;								// Count upwards otherwise
	 end	 
	 
endmodule
