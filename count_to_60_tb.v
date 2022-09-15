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
// 
////////////////////////////////////////////////////////////////////////////////

module count_to_60_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ena;

	// Outputs
	wire out;
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	count_to_60 uut (
		.clk(clk), 
		.reset(reset), 
		.ena(ena),
		.out(out), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 0;
		ena = 0;

		// Wait 100 ns for global reset to finish
		#20;
        
		// Add stimulus here
		reset = 1'b1;
		#20;
		reset = 1'b0;
		#140
		reset = 1'b1;
		#20;
		reset = 1'b0;
		#3;
		forever begin
			ena = 1;
			#2;
			ena = 0;
			#18;
		end
	end
	
	//Generate clock with a 10ns period
	always #2 clk = ~clk;
endmodule

