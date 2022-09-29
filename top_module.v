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
	 output o_rs,
	 output o_e,
	 output [7:0] o_d
    );
	 
	 wire [1:0] w_sel;
	 wire w_pm;
	 wire [7:0] w_hh, w_mm, w_ss;
	 
	 // pulse_gen generates 3 pulses for different functions
	 // LCD wants a quicker pulse, input wants a quick pulse, and clock wants a 1 second pulse
	 pulse_gen pulse_gen 	  (.i_clk(i_clk),
										.i_reset(i_reset_btn),
										.o_pulse_vf(w_lcd_pulse),
										.o_pulse_f(w_input_pulse),
										.o_pulse_n(w_clock_pulse));
	 
	 // Time Keeper controls time
	 // If w_wr is low, will count up in seconds with clock pulse
	 // If w_wr is high, will increment and decrement with quicker input pulse
	 clock_control time_keeper 	(.i_clk(i_clk),
											 .i_reset(i_reset_btn),
											 .i_sel(w_sel),
											 .i_pulse_f(w_input_pulse),
											 .i_pulse_n(w_clock_pulse),
											 .i_inc_pulse(w_val_inc_pulse),
											 .i_dec_pulse(w_val_dec_pulse),
											 .i_wr(w_wr),
											 .o_pm(w_pm),
											 .o_ss(w_ss),
											 .o_mm(w_mm),
											 .o_hh(w_hh));
	
	 // Button Debouncer contains all the button debouncing modules
	 input_debounce btn_debouncer (.i_clk(i_clk),
											 .i_ena(w_input_pulse),
											 .i_wr_btn(i_wr_btn),
											 .i_val_inc_btn(i_val_inc_btn),
											 .i_val_dec_btn(i_val_dec_btn),
											 .i_sel_inc_btn(i_sel_inc_btn),
											 .i_sel_dec_btn(i_sel_dec_btn),
											 .o_wr_pulse(w_wr_pulse),
											 .o_val_inc_pulse(w_val_inc_pulse),
											 .o_val_dec_pulse(w_val_dec_pulse),
											 .o_sel_inc_pulse(w_sel_inc_pulse),
											 .o_sel_dec_pulse(w_sel_dec_pulse));
	 
	 // wr & sel control module
	 // Toggles wr when button is pushed
	 // Increases/Decreases sel as respective inputs are recieved 
	 input_control wr_sel_control (.i_clk(i_clk),
											 .i_ena(w_input_pulse),
											 .i_reset(i_reset_btn),
											 .i_wr_pulse(w_wr_pulse),
											 .i_sel_inc_pulse(w_sel_inc_pulse),
											 .i_sel_dec_pulse(w_sel_dec_pulse),
											 .o_wr_toggle(w_wr),
											 .o_sel_val(w_sel));
											 
	 hd44780_driver lcd_driver 	(.i_clk(i_clk),
											 .i_ena(w_lcd_pulse),
											 .i_reset(i_reset_btn),
											 .i_clock_pulse(w_clock_pulse),
											 .i_input_pulse(w_input_pulse),
											 .i_inc_pulse(w_val_inc_pulse),
											 .i_dec_pulse(w_val_dec_pulse),
											 .i_wr(w_wr),
											 .i_pm(w_pm),
											 .i_hh(w_hh),
											 .i_mm(w_mm),
											 .i_ss(w_ss),
											 .o_rs(o_rs),
											 .o_e(o_e),
											 .o_d(o_d));
									  
endmodule
