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
	reg [1:0] sel;
	reg wr;
	reg [7:0] in;
	
	reg [19:0] cnt;

	// Outputs
	wire pm;
	wire [7:0] hh;
	wire [7:0] mm;
	wire [7:0] ss;

	// Instantiate the Unit Under Test (UUT)
	clock_counter uut (
		.i_clk(clk), 
		.i_reset(reset), 
		.i_ena(ena),
		.i_sel(sel),
		.i_wr(wr),
		.i_in(in),
		.o_pm(pm), 
		.o_hh(hh), 
		.o_mm(mm), 
		.o_ss(ss)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 0;
		ena = 0;
		sel = 2'b00;
		wr = 1'b0;
		in = 8'h00;
		cnt = 20'h00000;

		// Setup and test reset (90 ns)
		#20;
		reset = 1'b1;
		#20;
		reset = 1'b0;
		
		#20;
		ena = 1'b1;
		#20;
		ena = 1'b0;
		#10;
		ena = 1'b1;
		
		// Test clock counter for "150000 seconds (over 1.5 days)" (3 000 003 ns)
		#1;
		while (cnt < 20'd150000) begin
			cnt = cnt+1'd1;
			ena = 1;
			#2;
			ena = 0;
			#18;
		end
		// Reset then test writing function (1240*4=4960 ns)
		cnt = 20'h00000;
		wr = 1'b1;
		reset = 1'b1;
		#20
		reset = 1'b0;
		
		while (cnt < 244) begin
			cnt = cnt + 1'b1;
			if ((cnt == 20'd1)|(cnt == 20'd62)|(cnt == 20'd123)|(cnt == 20'd184)) begin
				if (cnt==20'd62) sel = 2'b01;
				if (cnt==20'd123) sel = 2'b10;
				if (cnt==20'd184) sel = 2'b11;
			end else begin
				in = in+8'h02;
				if (in[3:0]==4'hA) begin
					in[3:0] = 4'h0;
					in[7:4] = in[7:4] + 1'b1;
				end
				if (in[7:0]==8'h60) begin
					in[7:0] = 8'h01;
				end
				if (in[3:0]==4'hB) begin
					in[3:0] = 4'h1;
					in[7:4] = in[7:4]+1'b1;
				end
				if (in[7:0]==8'h61) begin
					in = 8'h00;
				end	
			end
			
			ena = 1;
			#2;
			ena = 0;
			#18;					
		end
		// reset pm to 0
		in = 8'h00;
		ena = 1;
		#2;
		ena = 0;
		#18;
		// set ss to 37
		sel = 2'b00;
		in = 8'h37;
		ena = 1;
		#2;
		ena = 0;
		#18;
		// set mm to 14
		sel = 2'b01;
		in = 8'h14;
		ena = 1;
		#2;
		ena = 0;
		#18;
		// set hh to 11
		sel = 2'b10;
		in = 8'h11;
		ena = 1;
		#2;
		ena = 0;
		#18;
		// set pm to 1
		sel = 2'b11;
		in = 8'h01;
		ena = 1;
		#2;
		ena = 0;
		#18;
		
	end
	
	//Generate clock with a 4ns period
	always #2 clk = ~clk;
endmodule

