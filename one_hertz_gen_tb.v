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
	reg i_clk;
	reg i_reset;

	// Outputs
	wire signal_vf;
	wire signal_f;
	wire signal_n;

	// Instantiate the Unit Under Test (UUT)
	one_hertz_gen uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.o_signal_vf(signal_vf),
		.o_signal_f(signal_f),
		.o_signal_n(signal_n)
	);
	
	// Generate clock with a freq of 12 MHz, or period of 83.33333 ns
	// Not fully possible, so 84 ns instead.
	always #41.665 i_clk = ~i_clk;
	
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		i_reset = 1'b1;
		#100;
		i_reset = 1'b0;
		#10000;
		i_reset = 1'b1;
		#100;
		i_reset = 1'b0;

	end
      
endmodule
