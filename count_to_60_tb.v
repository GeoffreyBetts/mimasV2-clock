`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:44:01 09/14/2022
// Design Name:   count_to_60
// Module Name:   E:/Xilinx/projects/mimasV2-clock/count_to_60_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_to_60
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Test should take 3123 ns
// Run simulation for 3150 to ensure coorect behaviour
////////////////////////////////////////////////////////////////////////////////

module count_to_60_tb;

	// Inputs
	reg i_clk;
	reg i_reset;
	reg i_ena;
	reg i_inc;

	// Outputs
	wire o_roll;
	wire [7:0] o_q;
	
	// Internal signals

	// Instantiate the Unit Under Test (UUT)
	count_to_60 uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.i_ena(i_ena),
		.i_inc(i_inc),
		.o_roll(o_roll), 
		.o_q(o_q)
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
		i_ena = 0;
		i_inc = 1;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		// Test Reset at startup (180 ns)
		i_reset = 1'b1;
		#20;
		i_reset = 1'b0;
		#140
		i_reset = 1'b1;
		#20;
		i_reset = 1'b0;
		// Test standard clocking (1703 ns)
		#1700;
		i_inc = 0;
		#1700;
		// Reset then test writing function (1240 ns)
		//i_wr = 1'b1;
		i_reset = 1'b1;
		#20;
		i_reset = 1'b0;
		#300;
		i_reset = 1'b1;
		#20;
		i_reset = 1'b0;
		i_inc = 1;
		#200;
		i_inc = 0;
		#200;
		i_inc = 1;
	end
endmodule

