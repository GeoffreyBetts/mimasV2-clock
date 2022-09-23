`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:57:56 09/23/2022
// Design Name:   input_debounce
// Module Name:   E:/Xilinx/projects/mimasV2-clock/input_debounce_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: input_debounce
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module input_debounce_tb;

	// Inputs
	reg i_clk;
	reg i_ena;
	reg i_reset_btn;
	reg i_wr_btn;
	reg i_val_inc_btn;
	reg i_val_dec_btn;
	reg i_sel_inc_btn;
	reg i_sel_dec_btn;

	// Outputs
	wire o_reset;
	wire o_wr_pulse;
	wire o_val_inc_pulse;
	wire o_val_dec_pulse;
	wire o_sel_inc_pulse;
	wire o_sel_dec_pulse;

	// Instantiate the Unit Under Test (UUT)
	input_debounce uut (
		.i_clk(i_clk), 
		.i_ena(i_ena), 
		.i_reset_btn(i_reset_btn), 
		.i_wr_btn(i_wr_btn), 
		.i_val_inc_btn(i_val_inc_btn), 
		.i_val_dec_btn(i_val_dec_btn), 
		.i_sel_inc_btn(i_sel_inc_btn), 
		.i_sel_dec_btn(i_sel_dec_btn), 
		.o_reset(o_reset), 
		.o_wr_pulse(o_wr_pulse), 
		.o_val_inc_pulse(o_val_inc_pulse), 
		.o_val_dec_pulse(o_val_dec_pulse), 
		.o_sel_inc_pulse(o_sel_inc_pulse), 
		.o_sel_dec_pulse(o_sel_dec_pulse)
	);
	// Generate clock with a period of 4 ns
	always #41.665 i_clk = ~i_clk;
	
	always begin
		#20;
		i_ena = 1'b1;
		#41.665;
		i_ena = 1'b0;
		#8332938.335; 	//Get a period of 83.330ns*100000 = 8333000 ns = 8.333 ms
	end
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_ena = 0;
		i_reset_btn = 0;
		i_wr_btn = 0;
		i_val_inc_btn = 0;
		i_val_dec_btn = 0;
		i_sel_inc_btn = 0;
		i_sel_dec_btn = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		i_reset_btn = 1;
		#60000000; // 60 ms for button press
		i_reset_btn = 1'b0;

	end
      
endmodule

