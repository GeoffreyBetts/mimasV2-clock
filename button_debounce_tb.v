`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:11:22 09/20/2022
// Design Name:   button_debounce
// Module Name:   E:/Xilinx/projects/mimasV2-clock/button_debounce_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: button_debounce
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module button_debounce_tb;

	// Inputs
	reg i_clk;
	reg i_ena;
	reg i_btn;

	// Outputs
	wire o_pulse;

	// Instantiate the Unit Under Test (UUT)
	button_debounce uut (
		.i_clk(i_clk), 
		.i_ena(i_ena), 
		.i_btn(i_btn), 
		.o_pulse(o_pulse)
	);
	
	// Generate clock with a period of 4 ns
	always #41.665 i_clk = ~i_clk;
	
	always begin
		#20;
		i_ena = 1'b1;
		#41.665;
		i_ena = 1'b0;
		#8332938.335; 	//Get a period of 83.330ns*100000 = 8333000 ns = 8.333 ms
	end
	
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_ena = 0;
		i_btn = 0;

		// Wait 100 ns for global reset to finish
		#20000000;
        
		// Add stimulus here
		i_btn = 1;
		#1000000		i_btn = 0; 	//1
		#1500000 	i_btn = 1; 	//2.5
		#2000000 	i_btn = 0; 	//4.5
		#1500000 	i_btn = 1; 	//6.0
		#1000000 	i_btn = 0; 	//7.0
		#1000000 	i_btn = 1; 	//8.0
		#500000		i_btn = 0; 	//8.5
		#1000000		i_btn = 1; 	//9.5		
		
		#60000000;	//50 ms
		
		i_btn = 0;
		#1000000		i_btn = 1; 	//1
		#1500000 	i_btn = 0; 	//2.5
		#2000000 	i_btn = 1; 	//4.5
		#1500000 	i_btn = 0; 	//6.0
		#1000000 	i_btn = 1; 	//7.0
		#1000000 	i_btn = 0; 	//8.0
		#500000		i_btn = 1; 	//8.5
		#1000000		i_btn = 0; 	//9.5		
	

	end
	
      
endmodule

