`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:51:09 09/13/2022 
// Design Name: 
// Module Name:    top_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 0.01
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module top_module(
    input i_clk,			// Frequency = 12 MHz
	 input i_reset_btn,
	 input i_wr_btn,
	 input i_val_inc_btn,
	 input i_val_dec_btn,
	 input i_sel_inc_btn,
	 input i_sel_dec_btn,
    //input i_reset,		// synchronous active-high reset
    //input i_wr,			// high == write new time / low == run clock
    //input [1:0] i_sel,	// select which time to change, only can use when (ena == 0)
    //input [7:0] i_in,	// insert new time
    output o_pm,			// am or pm?
    output [7:0] o_hh,	// hours
    output [7:0] o_mm,	// minutes
    output [7:0] o_ss,	// seconds
	 
	 output w_wr,
	 output w_clock_pulse,
	 output w_input_pulse,
	 output [1:0] w_sel,
	 output [7:0] w_val
    );
	 
	 //wire [1:0] w_sel;
	 //wire [7:0] w_val;

	 pulse_gen pulse_gen 	  (.i_clk(i_clk),				// This module generates 'signal' with a frequency of 1 Hz, for 1 clock cycle
										.i_reset(i_reset_btn),
										.o_pulse_vf(w_lcd_pulse),
										.o_pulse_f(w_input_pulse),
										.o_pulse_n(w_clock_pulse));
										
	 clock_counter clock_time (.i_clk(i_clk),				// This module updates the clock time when it recieves 'signal' on the next clock cycle
										.i_reset(i_reset_btn),			// Then outputs the time in hex (hh:mm:ss) with an am/pm signal
										.i_ena(w_clock_pulse|i_reset_btn),
										.i_sel(w_sel),
										.i_wr(w_wr),
										.i_in(w_val),
										.o_pm(o_pm),
										.o_hh(o_hh),
										.o_mm(o_mm),
										.o_ss(o_ss));
										
	 input_debounce btn_debouncer (.i_clk(i_clk),
											 .i_ena(w_input_pulse), //enable once every 8.333 ms (99996 clock pulses)
											 //.i_reset_btn(i_reset_btn),
											 .i_wr_btn(i_wr_btn),
											 .i_val_inc_btn(i_val_inc_btn),
											 .i_val_dec_btn(i_val_dec_btn),
											 .i_sel_inc_btn(i_sel_inc_btn),
											 .i_sel_dec_btn(i_sel_dec_btn),
											 //.o_reset(w_reset),
											 .o_wr_pulse(w_wr_pulse),
											 .o_val_inc_pulse(w_val_inc_pulse),
											 .o_val_dec_pulse(w_val_dec_pulse),
											 .o_sel_inc_pulse(w_sel_inc_pulse),
											 .o_sel_dec_pulse(w_sel_dec_pulse));
										
	 clock_edit clock_editor (.i_clk(i_clk),
									  .i_ena(w_input_pulse|i_reset_btn),
									  .i_reset(i_reset_btn),
									  .i_wr_pulse(w_wr_pulse),
									  .i_val_inc_pulse(w_val_inc_pulse),
									  .i_val_dec_pulse(w_val_dec_pulse),
									  .i_sel_inc_pulse(w_sel_inc_pulse),
									  .i_sel_dec_pulse(w_sel_dec_pulse),
									  .i_ss(o_ss),
									  .i_mm(o_mm),
									  .i_hh(o_hh),
									  .i_pm(o_pm),
									  .o_wr(w_wr),
									  .o_sel(w_sel),
									  .o_val(w_val));
									  
endmodule
