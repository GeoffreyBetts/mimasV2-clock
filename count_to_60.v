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
    input clk,			// clock == 1Hz
    input reset,		// reset synchronous active-high
	 input ena,
    output reg out,		// output during 59-0 rollover
    output [7:0] q	// counter in hex
    );
	 wire carry;
	 reg ro, ro_del;
	 
	 decade_counter first_digit	(.clk(clk),				// First digit
											 .reset(reset),		// Normal decade counter
											 .ena(ena|reset),
											 .out(carry),
											 .q(q[3:0]));

	 decade_counter second_digit	(.clk(clk),	// Tied to rollover of first digit (reset is also tied due to being synchronous)
											 .reset(reset|ro_del), // Either reset-high or during rollover
											 .ena((ena&carry)|reset),
											 .q(q[7:4]));	
	
	 always @(posedge clk) begin
		if (reset) begin
			ro <= 1'b0;
			ro_del <= 1'b0;
			out <= 1'b0;
		end else if (ena) begin
			ro <= (q==8'h58);
			ro_del <= ro;
			out <= ro;
		end
	 end

endmodule
