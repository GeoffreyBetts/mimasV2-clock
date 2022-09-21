`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:26:32 09/21/2022
// Design Name:   count_to_60_updown
// Module Name:   E:/Xilinx/projects/mimasV2-clock/count_to_60_updown_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_to_60_updown
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments: 6061 ns test
// 
////////////////////////////////////////////////////////////////////////////////

module count_to_60_updown_tb;

	// Inputs
	reg i_clk;
	reg i_reset;
	reg i_ena;
	reg i_up;
	reg i_down;

	// Outputs
	wire [7:0] o_q;

	// Instantiate the Unit Under Test (UUT)
	count_to_60_updown uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.i_ena(i_ena), 
		.i_up(i_up), 
		.i_down(i_down), 
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
		i_up = 0;
		i_down = 0;

		// Wait 21 ns for global reset to finish
		#21;
        
		// Reset module (40 ns)
		i_reset = 1;
		#10;
		i_reset = 0;
		#20;
		
		// Test count up function (2000 ns)
		i_up = 1;
		#1800;
		i_up = 0;
		//#200;
		// Test count down function (2000 ns)
		i_down = 1;
		#1800;
		i_down = 0;
		//#200;
		// Test both at the same time (2000 ns)
		i_up = 1;
		i_down = 1;
		#1800;
		i_up = 0;
		i_down = 0;
		//#200;

	end
      
endmodule

