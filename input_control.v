`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:21:19 09/27/2022 
// Design Name: 
// Module Name:    input_control 
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
module input_control(
	 input i_clk,
	 input i_ena,
	 input i_reset,
	 input i_wr_pulse,
	 input i_sel_inc_pulse,
	 input i_sel_dec_pulse,
	 output o_wr_toggle,
	 output [1:0] o_sel_val
    );

	 pulse_to_toggle wr_control (.i_clk(i_clk),
										  .i_ena(i_ena),
										  .i_reset(i_reset),
										  .i_pulse(i_wr_pulse),
										  .o_toggle(o_wr_toggle));
										  
	 sel_control sel_control    (.i_clk(i_clk),
										  .i_ena(i_ena),
										  .i_reset(i_reset),
										  .i_inc_pulse(i_sel_inc_pulse),
										  .i_dec_pulse(i_sel_dec_pulse),
										  .o_val(o_sel_val));
	 
endmodule
