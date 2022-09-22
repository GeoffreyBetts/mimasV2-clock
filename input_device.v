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
	 input [7:0] i_in,
	 output o_reset,
	 output o_wr,
    output [1:0] o_sel,
    output [7:0] o_val
    );
	 
	 wire [1:0] unused;
	 
	 button_debounce reset_btn   (.i_clk(i_clk),				//Hit reset button, sends reset signal to device
											.i_ena(i_ena),
											.i_btn(i_reset_btn),
											.o_pulse(o_reset));
										 
	 button_debounce wr_btn	 	  (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_wr_btn),
											.o_pulse(w_wr_pulse));										 
							
	 button_debounce val_inc_btn (.i_clk(i_clk),
										   .i_ena(i_ena),
											.i_btn(i_val_inc_btn),
											.o_pulse(w_val_inc_pulse));							

	 button_debounce val_dec_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_val_dec_btn),
											.o_pulse(w_val_dec_pulse));
										 
	 button_debounce sel_inc_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_sel_inc_btn),
											.o_pulse(w_sel_inc_pulse));

	 button_debounce sel_dec_btn (.i_clk(i_clk),
											.i_ena(i_ena),
											.i_btn(i_sel_dec_btn),
											.o_pulse(w_sel_dec_pulse));
											
											
	 my_dff wr_toggle (.i_clk(i_clk),
								 .i_ena(w_wr_pulse|o_reset),
								 .i_d((~o_wr)|o_reset),
								 .o_q(o_wr));
								 
	 count_to_60_updown val_change (.i_clk(i_clk),
											  .i_reset(o_reset),
											  .i_ena(i_ena),
											  .i_up(w_val_inc_pulse),
											  .i_down(w_val_dec_pulse),
											  .i_wr((w_sel_inc_pulse|w_sel_dec_pulse)),
											  .i_in(i_in),
											  .o_q(o_val));
											  
	 decade_counter_updown sel_change (.i_clk(i_clk),
												  .i_reset(o_reset),
												  .i_ena(i_ena&(w_sel_inc_pulse|w_sel_dec_pulse)|o_reset),
												  .i_up(w_sel_inc_pulse),
												  .i_down(w_sel_dec_pulse),
												  .i_wr(1'b0),
												  .i_in(4'h0),
												  .o_out_up(),
												  .o_out_down(),
												  .o_q({unused[1:0], o_sel[1:0]}));
										 
endmodule
