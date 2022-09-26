`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:54:30 09/25/2022 
// Design Name: 
// Module Name:    clock_control 
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
module clock_control(
    input i_clk,			// Internal clock
    input i_reset,		// Synchronous active-high reset
	 input [1:0] i_sel,	// select to choose which module to edit when changing time
    input i_pulse_f,		// Fast pulse, so inputting new time is quicker
	 input i_pulse_n,		// 1 second pulse for clock
	 input i_inc_pulse,	// Input pulse when "increment" button is pressed
	 input i_dec_pulse,	// Input pulse when "decrement" button is pressed
	 input i_wr,			// Input signal which says when to edit clock time or not. It's a toggle
    output o_pm,			// Output signal which says whether it's pm or not
    output [7:0] o_hh,	// Output hour time
    output [7:0] o_mm,	// Output minutes time
    output [7:0] o_ss	// Output seconds time
    );
	 
	 wire w_ena, w_inc;
	 
	 // Enable and increment signals for modules
	 // Determined with truth tables
	 assign w_ena_ss = (i_pulse_n&~i_wr)|(i_pulse_f&i_wr&w_inc_ss);
	 assign w_ena_mm = (i_pulse_n&~i_wr&w_ss_roll)|(i_pulse_f&i_wr&w_inc_mm);
	 assign w_ena_hh = (i_pulse_n&~i_wr&w_ss_roll&w_mm_roll)|(i_pulse_f&i_wr&w_inc_hh);
	 assign w_ena_pm = (i_pulse_n&~i_wr&w_ss_roll&w_mm_roll&w_hh_roll)|(i_pulse_f&i_wr&w_inc_pm);
	 assign w_inc = (i_inc_pulse|~i_wr);
	 
	 // Sends a pulse to increment (or decrement) the time modules if an input pulse is recieved
	 // Where to send the pulse depends on i_sel
	 demux_1_to_4 write_sel (.i_sel(i_sel),						
									 .i_in(i_inc_pulse|i_dec_pulse),
									 .o_a(w_inc_ss),
									 .o_b(w_inc_mm),
									 .o_c(w_inc_hh),
									 .o_d(w_inc_pm));
	 
	 // Module for controlling the seconds.
	 // Rollover from this module is used to enable/time time_mm, time_hh & time_pm
	 count_to_60 time_ss (.i_clk(i_clk),
								 .i_reset(i_reset),
								 .i_ena(w_ena_ss|i_reset),
								 .i_inc(w_inc),
								 .o_roll(w_ss_roll),
								 .o_q(o_ss));

	 // Module for controlling the minutes.
	 // Rollover from this module is used to enable/timetime_hh & time_pm								 
	 count_to_60 time_mm (.i_clk(i_clk),
								 .i_reset(i_reset),
								 .i_ena(w_ena_mm|i_reset),
								 .i_inc(w_inc),
								 .o_roll(w_mm_roll),
								 .o_q(o_mm));
								 
	 // Module for controlling the hours.
	 // Rollover from this module is used to enable/time time_pm
	 count_to_12 time_hh (.i_clk(i_clk),
								 .i_reset(i_reset),
								 .i_ena(w_ena_hh|i_reset),
								 .i_inc(w_inc),
								 .o_roll(w_hh_roll),
								 .o_q(o_hh));	

	 // Module for controlling the am/pm.
	 // Pulse triggers a toggle, and reset changes it to low
	 my_dff time_pm		(.i_clk(i_clk),
								 .i_ena((w_ena_pm)|i_reset),
								 .i_d(~i_reset&~o_pm),
								 .o_q(o_pm));								 

endmodule
