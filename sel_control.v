`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:34:07 09/27/2022 
// Design Name: 
// Module Name:    sel_control 
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
module sel_control(
    input i_clk,
	 input i_ena,
    input i_reset,
    input i_inc_pulse,
    input i_dec_pulse,
    output [1:0] o_val
    );
	 
	 wire [1:0] unused;
	 wire w_ena_sel, w_roll_htl, w_roll_lth;
	 assign w_ena_sel = i_ena&(i_inc_pulse|i_dec_pulse);
	 assign w_roll_htl = (o_val==2'b11)&i_inc_pulse;
	 assign w_roll_lth = (o_val==2'b00)&~i_inc_pulse;

	 decade_counter sel (.i_clk(i_clk),
								.i_reset(i_reset|w_roll_htl),
								.i_ena(w_ena_sel|i_reset),
								.i_inc(i_inc_pulse),
								.i_wr(w_roll_lth),
								.i_in(4'h3),
								.o_roll_high(),
								.o_roll_low(),
								.o_q({unused, o_val}));

endmodule
