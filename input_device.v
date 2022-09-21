`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:07:46 09/20/2022 
// Design Name: 
// Module Name:    input_device 
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
module input_device(
    input i_clk,
	 input i_ena,
	 input i_reset_btn,
    input i_wr_btn,
    input i_val_inc_btn,
    input i_val_dec_btn,
    input i_sel_inc_btn,
    input i_sel_dec_btn,
	 output o_reset,
	 output o_wr,
    output [1:0] o_sel,
    output [7:0] o_val
    );
	 
	 button_debounce reset_btn   (.i_clk(i_clk),				//Hit reset button, sends reset signal to device
											.i_ena(i_ena),
											.i_btn(i_reset_btn),
											.i_pulse(o_reset));
										 
	 button_debounce wr_btn	 	  (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_wr_btn),
											.i_pulse(w_wr_pulse));										 
							
	 button_debounce val_inc_btn (.i_clk(i_clk),
										   .i_ena(i_ena),
											.i_btn(i_val_inc_btn),
											.i_pulse(w_val_inc_pulse));							

	 button_debounce val_dec_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_val_dec_btn),
											.i_pulse(w_val_dec_pulse));
										 
	 button_debounce sel_inc_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_sel_inc_btn),
											.i_pulse(w_sel_inc_pulse));

	 button_debounce sel_dec_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_sel_dec_btn),
											.i_pulse(w_sel_dec_pulse));
											
											
	 my_dff wr_toggle (.i_clk(i_clk),
								 .i_ena(w_wr_pulse),
								 .i_d((~o_wr)|o_reset),
								 .o_q(o_wr));
										 
endmodule
