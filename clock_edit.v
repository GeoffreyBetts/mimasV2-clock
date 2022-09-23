`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:15:35 09/23/2022 
// Design Name: 
// Module Name:    clock_edit 
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
module clock_edit(
    input i_clk,
    input i_ena,
    input i_reset,
    input i_wr_pulse,
    input i_val_inc_pulse,
    input i_val_dec_pulse,
    input i_sel_inc_pulse,
    input i_sel_dec_pulse,
    input [7:0] i_ss,
    input [7:0] i_mm,
    input [7:0] i_hh,
    input i_pm,
	 output o_wr,
    output [1:0] o_sel,
    output [7:0] o_val
    );
	 
	 wire [1:0] unused;
	 wire [7:0] w_val;
	 reg r_sel_pulse_del;
	 
	 my_dff wr_toggle 					   (.i_clk(i_clk),
													 .i_ena((i_ena&i_wr_pulse)|i_reset),
													 .i_d(~o_wr&~i_reset),
													 .o_q(o_wr));
								 
	 count_to_60_updown val_change 		(.i_clk(i_clk),
													 .i_reset(i_reset),
													 .i_ena(i_ena|r_sel_pulse_del),
													 .i_up(i_val_inc_pulse),
													 .i_down(i_val_dec_pulse),
													 .i_wr(r_sel_pulse_del),
													 .i_in(w_val),
													 .o_q(o_val));
											  
	 decade_counter_updown sel_change 	(.i_clk(i_clk),
													 .i_reset(i_reset),
													 .i_ena(i_ena&o_wr&(i_sel_inc_pulse|i_sel_dec_pulse)|i_reset),
													 .i_up(i_sel_inc_pulse),
													 .i_down(i_sel_dec_pulse),
													 .i_wr(1'b0),
													 .i_in(4'h0),
													 .o_out_up(),
													 .o_out_down(),
													 .o_q({unused[1:0], o_sel[1:0]}));

	 mux_4_to_1 input_bus					(.i_sel(o_sel),
													 .i_a(i_ss),
													 .i_b(i_mm),
													 .i_c(i_hh),
													 .i_d({{7{1'b0}}, i_pm}),
													 .o_q(w_val));
													 
	 always @(posedge i_clk) begin
		if (i_reset) r_sel_pulse_del <= 1'b0;
		else r_sel_pulse_del <= i_sel_inc_pulse|i_sel_dec_pulse;
	 end

endmodule
