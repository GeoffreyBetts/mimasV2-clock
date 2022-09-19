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
    input i_clk,
    input i_reset, // synchronous active-high
    input i_ena,
	 input [1:0] i_sel,
	 input i_wr,
	 input [7:0] i_in,
    output reg o_pm,
    output [7:0] o_hh,
    output [7:0] o_mm,
    output [7:0] o_ss
    );
	 wire w_pm_toggle, w_m_clk, w_h_clk;
	 wire w_write_ss, w_write_mm, w_write_hh, w_write_pm;
	 wire w_ena_ss, w_ena_mm, w_ena_hh;
	 reg [7:0] w_in_del;

	 count_to_60 seconds (.i_clk(i_clk),							// Fairly straightforward use of count_to_60 module for seconds
								 .i_reset(i_reset),
								 .i_ena(w_ena_ss|i_reset),
								 .i_wr(w_write_ss),
								 .i_in(w_in_del),
								 .o_out(w_m_clk),
								 .o_q(o_ss));
	 
	 count_to_60 minutes (.i_clk(i_clk), 									// Module for minutes
								 .i_reset(i_reset),
								 .i_ena(w_ena_mm|i_reset),			// Only enabled when ena is high and seconds is at 8'h59
								 .i_wr(w_write_mm),
								 .i_in(w_in_del),
								 .o_out(w_h_clk),
								 .o_q(o_mm));
								 
	 count_to_12 hours	(.i_clk(i_clk), 									// Module for hours
								 .i_reset(i_reset),
								 .i_ena(w_ena_hh|i_reset),	// Only enabled when ena is high, and minutes and seconds are both at 8'h59
								 .i_wr(w_write_hh),
								 .i_in(w_in_del),								 
								 .o_out(w_pm_toggle),
								 .o_q(o_hh));
	
	 demux_1_to_4 sel		(.i_clk(i_clk),		// Depending on sel, will enable writing to each module when wr is high
								 .i_ena(i_wr),
								 .i_sel(i_sel),
								 .o_a(w_write_ss),
								 .o_b(w_write_mm),
								 .o_c(w_write_hh),
								 .o_d(w_write_pm));
	 
	 assign w_ena_ss = i_ena&((~i_wr)|(i_wr&w_write_ss));						// High when ena is high and counting, or when writing and demux is pointing to seconds
	 assign w_ena_mm = i_ena&((~i_wr&w_m_clk)|(i_wr&w_write_mm));			// High when ena is high and counting, or when writing and demux is pointing to minutes
	 assign w_ena_hh = i_ena&((~i_wr&w_m_clk&w_h_clk)|(i_wr&w_write_hh));// High when ena is high and counting, or when writing and demux is pointing to hours
	 
	 always @(posedge i_clk) begin	
		if (i_reset) begin														// Reset everything to low
			o_pm <= 1'b0;
			w_in_del <= 8'h00;
		end else if (i_ena) begin
			w_in_del <= i_in;
			if (i_wr&w_write_pm) o_pm <= i_in[0];
			else if (~i_wr) o_pm <= (w_pm_toggle&w_h_clk&w_m_clk&i_ena)? ~o_pm:o_pm;	// If time is at 11:59:59, toggle pm on the next clock cycle when ena is high
		end
	 end
	 
endmodule
