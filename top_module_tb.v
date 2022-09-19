`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:54:02 09/16/2022
// Design Name:   top_module
// Module Name:   E:/Xilinx/projects/mimasV2-clock/top_module_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_module_tb;

	// Inputs
	reg clk;
	reg reset;
	reg wr;
	reg [1:0] sel;
	reg [7:0] in;

	// Outputs
	wire pm;
	wire [7:0] hh;
	wire [7:0] mm;
	wire [7:0] ss;

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.i_clk(clk), 
		.i_reset(reset), 
		.i_wr(wr), 
		.i_sel(sel), 
		.i_in(in), 
		.o_pm(pm), 
		.o_hh(hh), 
		.o_mm(mm), 
		.o_ss(ss)
	);
	
	// Generate clock with a freq of 12 MHz, or period of 83.33333 ns
	// Not fully accurate here tho
	always #41.665 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		wr = 0;
		sel = 0;
		in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1'b1;
		#100;
		reset = 1'b0;
		#1500000000; //1.5 seconds
		reset = 1'b1;
		#100;
		reset = 1'b0;

	end
      
endmodule

