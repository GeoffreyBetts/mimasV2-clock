`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:22:43 09/25/2022
// Design Name:   decade_counter
// Module Name:   E:/Xilinx/projects/mimasV2-clock/decade_counter_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: decade_counter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module decade_counter_tb;

	// Inputs
	reg i_clk;
	reg i_reset;
	reg i_ena;
	reg i_inc;
	reg i_wr;
	reg [3:0] i_in;

	// Outputs
	wire o_roll_high;
	wire o_roll_low;
	wire [3:0] o_q;

	// Instantiate the Unit Under Test (UUT)
	decade_counter uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.i_ena(i_ena), 
		.i_inc(i_inc), 
		.i_wr(i_wr), 
		.i_in(i_in), 
		.o_roll_high(o_roll_high),
		.o_roll_low(o_roll_low),
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
		i_inc = 0;
		i_wr = 0;
		i_in = 0;

		// Wait 20 ns for global reset to finish
		#20;
		i_reset = 1;
		#30;
		i_reset = 0;
		#10
        
		// Add stimulus here
		i_inc = 1'b1;
		#300;
		i_inc = 1'b0;
		#300;
		i_inc = 1'b1;
		#300;
		i_reset = 1'b1;
		#40;
		i_reset = 1'b0;
		#300;
		i_wr = 1'b1;
		i_in = 4'h9;
		#40;
		i_wr = 1'b0;
		#40;
	end
      
endmodule

