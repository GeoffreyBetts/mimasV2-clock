`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:59 10/03/2022 
// Design Name: 
// Module Name:    ST7066U_driver 
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
module ST7066U_driver(
    input i_clk,
    input i_ena,
	 input i_reset,
    input i_clock_pulse,
    input i_input_pulse,
	 input i_inc_pulse,
	 input i_dec_pulse,
    input i_wr,
    input i_pm,
    input [7:0] i_hh,
    input [7:0] i_mm,
    input [7:0] i_ss,
    output o_rs,
    output o_e,
    output [7:0] o_d
    );
	 
	 wire w_update_pulse, w_lcd_data, w_e_trigger;
	 wire [2:0] w_lcd_sel;
	 wire [3:0] w_lcd_val;
	 
	 // Generates a pulse which starts the fsm
	 // Pulse is generated when the time gets updated
	 // Either when wr is low & every second, or wr is high and an input is recieved
	 ST7066U_update_pulse lcd_pulse_gen   (.i_clk(i_clk),
														.i_ena(i_ena),
														.i_clock_pulse(i_clock_pulse),
														.i_input_pulse(i_input_pulse),
														.i_inc_pulse(i_inc_pulse),
														.i_dec_pulse(i_dec_pulse),
														.i_wr(i_wr),
														.o_update_pulse(w_update_pulse));
	 
	 // Controls the outputs with a fsm
	 ST7066U_control control_fsm	  		  (.i_clk(i_clk),
														.i_ena(i_ena),
														.i_reset(i_reset),
														.i_update_pulse(w_update_pulse),
														.i_pm(i_pm),
														.i_hh(i_hh),
														.i_mm(i_mm),
														.i_ss(i_ss),
														.o_data(w_lcd_data),
														.o_e_trigger(w_e_trigger),
														.o_sel(w_lcd_sel),
														.o_val(w_lcd_val));
	 
	 // Controls rs and e output to lcd
	 // Controlled by fsm inputs
	 ST7066U_write_operation rs_e_output  (.i_clk(i_clk),
														.i_ena(i_ena),
														.i_reset(i_reset),
														.i_data(w_lcd_data),
														.i_e_trigger(w_e_trigger),
														.o_rs(o_rs),
														.o_e(o_e));
	
	 // Controls the databus output to lcd
	 // Controlled by fsm inputs
	 ST7066U_data_output d_output			  (.i_clk(i_clk),
														.i_ena(i_ena),
														.i_data(w_lcd_data),
														.i_sel(w_lcd_sel),
														.i_d(w_lcd_val),
														.o_q(o_d));
	 
endmodule