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
	 
	 wire s_clk, m_clk, h_clk;
	 wire pm_toggle;
	 
	 assign s_clk = (ena|reset)? clk: 1'b0;      // seconds counter only recieves clock signal if ena|reset high	 
	 count_to_60 seconds (.clk(s_clk),				// count-to-60 for seconds. 'out' is the minute clock
								 .reset(reset),
								 .out(m_clk),
								 .q(ss));
	 
	 count_to_60 minutes (.clk(m_clk|(reset&clk)), //counter updates when seconds rolls over, or reset occurs
								 .reset(reset),
								 .out(h_clk),
								 .q(mm));
								 
	 count_to_12 hours	(.clk(h_clk|(reset&clk)), //counter updates when minutes rolls over, or reset occurs
								 .reset(reset),
								 .out(pm_toggle),
								 .q(hh));
	 	 
	 always @(posedge pm_toggle) begin	// If reset is high, pm = 0. Otherwise toggle pm
		if (reset) pm <= 1'b0;
		else pm <= ~pm;
	 end
	 
endmodule
