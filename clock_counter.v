`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:06 09/14/2022 
// Design Name: 
// Module Name:    clock_counter 
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
	module clock_counter(
    input clk,
    input reset, // synchronous active-high
    input ena,
    output reg pm,
    output [7:0] hh,
    output [7:0] mm,
    output [7:0] ss
    );
	 wire pm_toggle, m_clk, h_clk;

	 count_to_60 seconds (.clk(clk),								// Fairly straightforward use of count_to_60 module for seconds
								 .reset(reset),
								 .ena(ena|reset),
								 .out(m_clk),
								 .q(ss));
	 
	 count_to_60 minutes (.clk(clk), 							// Module for minutes
								 .reset(reset),
								 .ena((ena&m_clk)|reset),			// Only enabled when ena is high and seconds is at 8'h59
								 .out(h_clk),
								 .q(mm));
								 
	 count_to_12 hours	(.clk(clk), 							// Module for hours
								 .reset(reset),
								 .ena((ena&m_clk&h_clk)|reset),	// Only enabled when ena is high, and minutes and seconds are both at 8'h59
								 .out(pm_toggle),
								 .q(hh));
	 	 
	 always @(posedge clk) begin	
		if (reset) begin											// Reset everything to low
			pm <= 1'b0;
		end else if (ena) begin
			pm <= (pm_toggle&h_clk&m_clk&ena)? ~pm:pm;	// If time is at 11:59:59, toggle pm on the next clock cycle when ena is high
		end
	 end
	 
endmodule
