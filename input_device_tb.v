`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:17:48 09/22/2022
// Design Name:   input_device
// Module Name:   E:/Xilinx/projects/mimasV2-clock/input_device_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: input_device
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module input_device_tb;

	// Inputs
	reg i_clk;
	reg i_ena;
	reg i_reset_btn;
	reg i_wr_btn;
	reg i_val_inc_btn;
	reg i_val_dec_btn;
	reg i_sel_inc_btn;
	reg i_sel_dec_btn;
	reg [7:0] i_in;

	// Outputs
	wire o_reset;
	wire o_wr;
	wire [1:0] o_sel;
	wire [7:0] o_val;

	// Instantiate the Unit Under Test (UUT)
	input_device uut (
		.i_clk(i_clk), 
		.i_ena(i_ena), 
		.i_reset_btn(i_reset_btn), 
		.i_wr_btn(i_wr_btn), 
		.i_val_inc_btn(i_val_inc_btn), 
		.i_val_dec_btn(i_val_dec_btn), 
		.i_sel_inc_btn(i_sel_inc_btn), 
		.i_sel_dec_btn(i_sel_dec_btn), 
		.i_in(i_in), 
		.o_reset(o_reset), 
		.o_wr(o_wr), 
		.o_sel(o_sel), 
		.o_val(o_val)
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
		i_ena = 0;
		i_reset_btn = 0;
		i_wr_btn = 0;
		i_val_inc_btn = 0;
		i_val_dec_btn = 0;
		i_sel_inc_btn = 0;
		i_sel_dec_btn = 0;
		i_in = 8'h37;

		// Wait 21 ns for global reset to finish
		#21;
        
		// Add stimulus here
		i_reset_btn = 1;
		#100;
		i_reset_btn = 0;
		#20;
		i_val_inc_btn = 1;
		#60;
		i_val_inc_btn = 0;
		#40;
		i_val_inc_btn = 1;
		#60;
		i_val_inc_btn = 0;
		#40;
		i_val_inc_btn = 1;
		#60;
		i_val_inc_btn = 0;
		#40;
		i_val_inc_btn = 1;
		#60;
		i_val_inc_btn = 0;
		#40;
		i_val_inc_btn = 1;
		#60;
		i_val_inc_btn = 0;
		#40;
		
		i_sel_inc_btn = 1;
		#60;
		i_sel_inc_btn = 0;
		#40;
		
		
		

	end
      
endmodule

