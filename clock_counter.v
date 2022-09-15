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
	 reg m_clk_del, h_clk_del, pm_toggle_del;

	 count_to_60 seconds (.clk(clk),				// count-to-60 for seconds. 'out' is the minute clock
								 .reset(reset),
								 .ena(ena|reset),
								 .out(m_clk),
								 .q(ss));
	 
	 count_to_60 minutes (.clk(clk), //counter updates when seconds rolls over, or reset occurs
								 .reset(reset),
								 .ena((ena&m_clk_del)|reset),
								 .out(h_clk),
								 .q(mm));
								 
	 count_to_12 hours	(.clk(clk), //counter updates when minutes rolls over, or reset occurs
								 .reset(reset),
								 .ena((ena&m_clk_del&h_clk_del)|reset),
								 .out(pm_toggle),
								 .q(hh));
	 	 
	 always @(posedge clk) begin	// If reset is high, pm = 0. Otherwise toggle pm
		if (reset) begin
			m_clk_del <= 1'b0;
			h_clk_del <= 1'b0;
			pm_toggle_del <= 1'b0;
			pm <= 1'b0;
		end else if (ena) begin
			m_clk_del <= m_clk;
			h_clk_del <= h_clk;
			pm_toggle_del <= pm_toggle;
			pm <= (pm_toggle_del&h_clk_del&m_clk_del&ena)? ~pm:pm;
		end
	 end
	 
endmodule
