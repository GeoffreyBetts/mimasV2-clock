`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:20:38 10/03/2022
// Design Name:   ST7066U_write_operation
// Module Name:   E:/Xilinx/projects/mimasV2-clock/ST7066U_write_operation_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ST7066U_write_operation
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ST7066U_write_operation_tb;

	// Inputs
	reg i_clk;
	reg i_ena;
	reg i_reset;
	reg i_data;
	reg i_e_trigger;

	// Outputs
	wire o_rs;
	wire o_e;

	// Instantiate the Unit Under Test (UUT)
	ST7066U_write_operation uut (
		.i_clk(i_clk), 
		.i_ena(i_ena), 
		.i_reset(i_reset), 
		.i_data(i_data), 
		.i_e_trigger(i_e_trigger), 
		.o_rs(o_rs), 
		.o_e(o_e)
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
		i_ena = 0;
		i_reset = 0;
		i_data = 0;
		i_e_trigger = 0;

		// Wait 1 ns for global reset to finish
		#1;
        
		i_reset = 1;
		#8;
		i_reset = 0;
		#100;
		
		i_data = 1;
		#100;
		i_data = 0;

	end
      
endmodule

