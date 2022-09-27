`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:30:53 09/23/2022 
// Design Name: 
// Module Name:    input_debounce 
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
module input_debounce(
    input i_clk,
	 input i_ena,
    input i_wr_btn,
    input i_val_inc_btn,
    input i_val_dec_btn,
    input i_sel_inc_btn,
    input i_sel_dec_btn,
	 output o_wr_pulse,
	 output o_val_inc_pulse,
	 output o_val_dec_pulse,
	 output o_sel_inc_pulse,
	 output o_sel_dec_pulse
    );
	
	 button_debounce wr_btn	 	  (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_wr_btn),
											.o_pulse(o_wr_pulse));										 
							
	 button_debounce val_inc_btn (.i_clk(i_clk),
										   .i_ena(i_ena),
											.i_btn(i_val_inc_btn),
											.o_pulse(o_val_inc_pulse));							

	 button_debounce val_dec_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_val_dec_btn),
											.o_pulse(o_val_dec_pulse));
										 
	 button_debounce sel_inc_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_sel_inc_btn),
											.o_pulse(o_sel_inc_pulse));

	 button_debounce sel_dec_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_sel_dec_btn),
											.o_pulse(o_sel_dec_pulse));
endmodule
