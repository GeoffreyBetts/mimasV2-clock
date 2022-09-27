`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   09:59:43 09/27/2022
// Design Name:   sel_control
// Module Name:   E:/Xilinx/projects/mimasV2-clock/sel_control_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sel_control
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module sel_control_tb;

	// Inputs
	reg i_clk;
	reg i_reset;
	reg i_sel_inc_pulse;
	reg i_sel_dec_pulse;

	// Outputs
	wire [1:0] o_sel;

	// Instantiate the Unit Under Test (UUT)
	sel_control uut (
		.i_clk(i_clk), 
		.i_reset(i_reset), 
		.i_sel_inc_pulse(i_sel_inc_pulse), 
		.i_sel_dec_pulse(i_sel_dec_pulse), 
		.o_sel(o_sel)
	);
	
	//Generate clock with a 4ns period
	always #2 i_clk = ~i_clk;	
	
	
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_reset = 0;
		i_sel_inc_pulse = 0;
		i_sel_dec_pulse = 0;

		// Wait 21 ns for global reset to finish
		#21;
        
		// Add stimulus here
		i_reset = 1;
		#40;
		i_reset = 0;
		#100;
		
		i_sel_inc_pulse = 1;
		#200;
		i_sel_dec_pulse = 1;
		#200;
		i_sel_inc_pulse = 0;
		#400;
		i_sel_dec_pulse = 0;

	end
      
endmodule

