`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:47:48 09/27/2022
// Design Name:   input_control
// Module Name:   E:/Xilinx/projects/mimasV2-clock/input_control_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: input_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module input_control_tb;

	// Inputs
	reg i_clk;
	reg i_ena;
	reg i_reset;
	reg i_wr_pulse;
	reg i_sel_inc_pulse;
	reg i_sel_dec_pulse;

	// Outputs
	wire o_wr_toggle;
	wire [1:0] o_sel_val;

	// Instantiate the Unit Under Test (UUT)
	input_control uut (
		.i_clk(i_clk), 
		.i_ena(i_ena),
		.i_reset(i_reset), 
		.i_wr_pulse(i_wr_pulse), 
		.i_sel_inc_pulse(i_sel_inc_pulse), 
		.i_sel_dec_pulse(i_sel_dec_pulse), 
		.o_wr_toggle(o_wr_toggle), 
		.o_sel_val(o_sel_val)
	);
	
	//Generate clock with a 4ns period
	always #2 i_clk = ~i_clk;	
	
	always begin
		#1;
		i_ena = 1;
		#2;
		i_ena = 0;
		#17;
	end
	
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_reset = 0;
		i_wr_pulse = 0;
		i_sel_inc_pulse = 0;
		i_sel_dec_pulse = 0;

		// Wait 100 ns for global reset to finish
		#21;
        
		// Add stimulus here
		
		i_reset = 1;
		#20;
		i_reset = 0;
		#100;
		
		i_wr_pulse = 1;
		#20;
		i_wr_pulse = 0;
		#40;
		
		i_wr_pulse = 1;
		#20;
		i_wr_pulse = 0;
		#40;	
		
		i_wr_pulse = 1;
		#20;
		i_wr_pulse = 0;
		#40;	
		
		i_sel_inc_pulse = 1;
		#20;
		i_sel_inc_pulse = 0;
		#40;
		
		i_sel_inc_pulse = 1;
		#20;
		i_sel_inc_pulse = 0;
		#40;
		
		i_sel_inc_pulse = 1;
		#20;
		i_sel_inc_pulse = 0;
		#40;
		
		i_sel_inc_pulse = 1;
		#20;
		i_sel_inc_pulse = 0;
		#40;
		
		i_sel_inc_pulse = 1;
		#20;
		i_sel_inc_pulse = 0;
		#40;
		
		i_sel_dec_pulse = 1;
		#20;
		i_sel_dec_pulse = 0;
		#40;
		
		i_sel_dec_pulse = 1;
		#20;
		i_sel_dec_pulse = 0;
		#40;
		
		i_sel_dec_pulse = 1;
		#20;
		i_sel_dec_pulse = 0;
		#40;
		
		i_sel_dec_pulse = 1;
		#20;
		i_sel_dec_pulse = 0;
		#40;
		
		i_sel_dec_pulse = 1;
		#20;
		i_sel_dec_pulse = 0;
		#40;
	end
      
endmodule

