`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:40:44 09/26/2022
// Design Name:   clock_control
// Module Name:   E:/Xilinx/projects/mimasV2-clock/clock_control_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 4212901 ns == 4212.901 us == 4.212901 ms
// 
////////////////////////////////////////////////////////////////////////////////

module clock_control_tb;

	// Inputs
	reg i_clk;
	reg i_reset;
	reg [1:0] i_sel;
	reg i_pulse_f;
	reg i_pulse_n;
	reg i_inc_pulse;
	reg i_dec_pulse;
	reg i_wr;

	// Outputs
	wire o_pm;
	wire [7:0] o_hh;
	wire [7:0] o_mm;
	wire [7:0] o_ss;
	
	// Instantiate the Unit Under Test (UUT)
	clock_control uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.i_sel(i_sel), 
		.i_pulse_f(i_pulse_f), 
		.i_pulse_n(i_pulse_n), 
		.i_inc_pulse(i_inc_pulse), 
		.i_dec_pulse(i_dec_pulse), 
		.i_wr(i_wr), 
		.o_pm(o_pm), 
		.o_hh(o_hh), 
		.o_mm(o_mm), 
		.o_ss(o_ss)
	);
	
	
	// Generate clock with a 4ns period
	always #1 i_clk = ~i_clk;
	
	// Slow pulse with 20 ns period
	
	always begin 
		#4;
		i_pulse_n = 1;
		#2;
		i_pulse_n = 0;
		#14;
	end
	
	
	// Fast pulse with 10 ns period
	
	always begin
		#0;
		i_pulse_f = 1;
		#2;
		i_pulse_f = 0;
		#8;
	end	
	

	initial begin
		// Initialize Inputs
		i_clk = 1;
		i_reset = 0;
		i_sel = 0;
		i_pulse_f = 0;
		i_pulse_n = 0;
		i_inc_pulse = 0;
		i_dec_pulse = 0;
		i_wr = 0;

		// Wait 100 ns for global reset to finish (21)
		#21;
        
		// Reset (61)
		i_reset = 1;
		#40;
		i_reset = 0;
		
		// Wait a "day-and-a-half" (3000061)
		#3000000;
		
		// Reset again (3000101)
		i_reset = 1;
		#40;
		i_reset = 0;
		
		// Wait "half-a-day" (4200101)
		#1200000;
		
		// Test input function. Using pulse as straight signals due to laziness (4212901)
		i_wr = 1;
		#100;
		i_inc_pulse = 1;
		#1000;
		i_dec_pulse = 1;
		#1000;
		i_inc_pulse = 0;
		#1000;
		i_dec_pulse = 0;
		#100;
		
		i_sel = 2'h1;
		#100;
		i_inc_pulse = 1;
		#1000;
		i_dec_pulse = 1;
		#1000;
		i_inc_pulse = 0;
		#1000;
		i_dec_pulse = 0;
		#100;	

		i_sel = 2'h2;
		#100;
		i_inc_pulse = 1;
		#1000;
		i_dec_pulse = 1;
		#1000;
		i_inc_pulse = 0;
		#1000;
		i_dec_pulse = 0;
		#100;		

		i_sel = 2'h3;
		#100;
		i_inc_pulse = 1;
		#1000;
		i_dec_pulse = 1;
		#1000;
		i_inc_pulse = 0;
		#1000;
		i_dec_pulse = 0;
		#100;	

		// Test how rollover works from write to read
		
		i_sel = 2'h2;
		#100;
		i_inc_pulse = 1;
		#30;
		i_inc_pulse = 0;
		
		i_sel = 2'h1;
		#100;
		i_dec_pulse = 1;
		#210;
		i_dec_pulse = 0;
		
		i_sel = 2'h0;
		#100;
		i_inc_pulse = 1;
		#190;
		i_inc_pulse = 0;
		
		#200;
		i_wr = 0;
		
		#100;
	end
      
endmodule

