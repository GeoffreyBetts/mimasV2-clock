`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:01:39 09/23/2022
// Design Name:   top_module
// Module Name:   E:/Xilinx/projects/mimasV2-clock/top_module_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: top_module
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module top_module_tb;

	// Inputs
	reg i_clk;
	reg i_reset_btn;
	reg i_wr_btn;
	reg i_val_inc_btn;
	reg i_val_dec_btn;
	reg i_sel_inc_btn;
	reg i_sel_dec_btn;

	// Outputs
	wire o_rs;
	wire o_e;
	wire [7:0] o_d;
	wire w_wr;
	wire o_hz;
	

	// Instantiate the Unit Under Test (UUT)
	top_module uut (
		.i_clk(i_clk), 
		.i_reset_btn(i_reset_btn), 
		.i_wr_btn(i_wr_btn), 
		.i_val_inc_btn(i_val_inc_btn), 
		.i_val_dec_btn(i_val_dec_btn), 
		.i_sel_inc_btn(i_sel_inc_btn), 
		.i_sel_dec_btn(i_sel_dec_btn),
		.o_rs(o_rs),
		.o_e(o_e),
		.o_d(o_d),
		.w_wr(w_wr),
		.o_hz(o_hz)
	);
	
	// Initialise 12 MHz clock (41.665*2 period)
	always #41.665 i_clk = ~i_clk; //Divide numbers by 40ish to increase sim speed
	
	initial begin
		// Initialize Inputs
		i_clk = 0;
		i_reset_btn = 1;
		i_wr_btn = 1;
		i_val_inc_btn = 1;
		i_val_dec_btn = 1;
		i_sel_inc_btn = 1;
		i_sel_dec_btn = 1;
    
		// Wait 100 ns for global reset to finish		// 1000000 ns in 1 ms
		#100;
        
		// Add stimulus here
		i_reset_btn = 1'b0;
		#60000000; // 60 ms for button press
		i_reset_btn = 1'b1;
		
		#1500000000; //1.5 seconds
		i_reset_btn = 1'b0;
		#60000000;
		i_reset_btn = 1'b1;
		
		#1500000000;  // 1.5 seconds
		#1500000000;  // 1.5 seconds
		
		i_wr_btn = 1'b0;
		#60000000;// 60 ms for button press
		i_wr_btn = 1'b1;
		
		#1500000000;  // 1.5 seconds
		
		// Change to mm
		
		i_sel_inc_btn = 1'b0;
		#60000000;
		i_sel_inc_btn = 1'b1;	

		#200000000;  // 0.2 seconds
		
		i_val_inc_btn = 1'b0;
		#60000000;
		i_val_inc_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		// Change to hh
		i_sel_inc_btn = 1'b0;
		#60000000; 
		i_sel_inc_btn = 1'b1;	

		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		// Change to pm
		i_sel_inc_btn = 1'b0;
		#60000000; 
		i_sel_inc_btn = 1'b1;	

		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_inc_btn = 1'b0;
		#60000000;
		i_val_inc_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_inc_btn = 1'b0;
		#60000000;
		i_val_inc_btn = 1'b1;
		
		// Change to ss
		i_sel_inc_btn = 1'b0;
		#60000000; 
		i_sel_inc_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		// Change to mm
		
		i_sel_inc_btn = 1'b0;
		#60000000;
		i_sel_inc_btn = 1'b1;	

		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		#200000000;  // 0.2 seconds
		
		i_val_dec_btn = 1'b0;
		#60000000; 
		i_val_dec_btn = 1'b1;
		
		// Exit write mode
		
		i_wr_btn = 1'b0;
		#60000000;// 60 ms for button press
		i_wr_btn = 1'b1;
	end
      
endmodule

