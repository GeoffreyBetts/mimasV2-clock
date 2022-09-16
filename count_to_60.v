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
	 reg ro;
	 
	 decade_counter first_digit	(.clk(clk),				// First digit
											 .reset(reset),		// Normal decade counter
											 .ena(ena|reset),		// Also enabled when reset is high, so it can reset on the next clock cycle
											 .out(carry),
											 .q(q[3:0]));

	 decade_counter second_digit	(.clk(clk),
											 .reset(reset|out), 			// Either reset-high or during delayed rollover
											 .ena((ena&carry)|reset),	//enabled when ena&carry is high, as carry will be high for multiple clock cycles between ena signals
											 .out(),							// Unconnected as not req. (Still gives a warning at synthesis tho)
											 .q(q[7:4]));	
	
	 always @(posedge clk) begin
		if (ena) begin
			if (reset) begin				// During reset, change everything to low
				ro <= 1'b0;
				out <= 1'b0;
			end else begin
				ro <= (q==8'h57);			// ro high when q==8'h58
				out <= ro;					// out is ro delayed by one ena signal, so high when q==8'h59
			end
		end
	 end

endmodule
