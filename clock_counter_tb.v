`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:10:50 09/14/2022
// Design Name:   clock_counter
// Module Name:   E:/Xilinx/projects/mimasV2-clock/clock_counter_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: clock_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module clock_counter_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ena;

	// Outputs
	wire pm;
	wire [7:0] hh;
	wire [7:0] mm;
	wire [7:0] ss;

	// Instantiate the Unit Under Test (UUT)
	clock_counter uut (
		.clk(clk), 
		.reset(reset), 
		.ena(ena), 
		.pm(pm), 
		.hh(hh), 
		.mm(mm), 
		.ss(ss)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 0;
		ena = 0;

		// Wait 20 ns for global reset to finish
		#20;
        
		// Generate clock with a 10ns period
		//always #5 clk = ~clk;
		
		
		// Reset active-high to reset device
		reset = 1'b1;
		#20;
		reset = 1'b0;
		
		#20;
		ena = 1'b1;
		#20;
		ena = 1'b0;
		#10;
		ena = 1'b1;
		
		// Wait '24 hours' (864 us)
		#864000;
		// Wait 'some time'
		#50000;
		
		reset = 1'b1;
		#20
		reset = 1'b0;
	end
	
	//Generate clock with a 10ns period
	always #2 clk = ~clk;
	always begin
		#3
		ena = 1;
		#2;
		ena = 0;
		#15;
	end
endmodule

