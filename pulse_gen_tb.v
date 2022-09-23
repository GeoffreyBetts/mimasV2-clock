`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:36:54 09/23/2022
// Design Name:   pulse_gen
// Module Name:   E:/Xilinx/projects/mimasV2-clock/pulse_gen_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pulse_gen
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pulse_gen_tb;

	// Inputs
	reg i_clk;
	reg i_reset;

	// Outputs
	wire o_pulse_vf;
	wire o_pulse_f;
	wire o_pulse_n;

	// Instantiate the Unit Under Test (UUT)
	pulse_gen uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.o_pulse_vf(o_pulse_vf), 
		.o_pulse_f(o_pulse_f), 
		.o_pulse_n(o_pulse_n)
	);

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

