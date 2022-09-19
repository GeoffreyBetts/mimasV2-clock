`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:06:44 09/16/2022
// Design Name:   one_hertz_gen
// Module Name:   E:/Xilinx/projects/mimasV2-clock/one_hertz_gen_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: one_hertz_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module one_hertz_gen_tb;

	// Inputs
	reg clk;
	reg reset;

	// Outputs
	wire signal;

	// Instantiate the Unit Under Test (UUT)
	one_hertz_gen uut (
		.i_clk(clk), 
		.i_reset(reset), 
		.o_signal(signal)
	);
	
	// Generate clock with a freq of 12 MHz, or period of 83.33333 ns
	// Not fully possible, so 84 ns instead.
	always #41.665 clk = ~clk;
	
	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset = 1'b1;
		#100;
		reset = 1'b0;
		#10000;
		reset = 1'b1;
		#100;
		reset = 1'b0;

	end
      
endmodule

