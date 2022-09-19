`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:38:43 09/19/2022
// Design Name:   count_to_12
// Module Name:   E:/Xilinx/projects/mimasV2-clock/count_to_12_tb.v
// Project Name:  Clock
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: count_to_12
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// Test is 823 ns
// 
////////////////////////////////////////////////////////////////////////////////

module count_to_12_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ena;
	reg wr;
	reg [7:0] in;

	// Outputs
	wire o_out;
	wire [7:0] o_q;
	
	reg [7:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	count_to_12 uut (
		.i_clk(clk), 
		.i_reset(reset), 
		.i_ena(ena), 
		.i_wr(wr), 
		.i_in(in), 
		.o_out(o_out), 
		.o_q(o_q)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 0;
		ena = 0;
		wr = 0;
		in = 0;
		cnt = 8'h00;

		// Wait 20 ns for global reset to finish
		#20;
        
		// Add stimulus here
		// Test Reset at startup (180 ns)
		reset = 1'b1;
		#20;
		reset = 1'b0;
		#140
		reset = 1'b1;
		#20;
		reset = 1'b0;
		// Test standard clocking (363 ns)
		#3;
		while (cnt < 18) begin
			cnt = cnt+1'd1;
			ena = 1;
			#2;
			ena = 0;
			#18;
		end
		// Reset then test writing function (280 ns)
		cnt = 8'h00;
		wr = 1'b1;
		reset = 1'b1;
		#20;
		reset = 1'b0;
		while (cnt < 13) begin
			cnt = cnt + 1'b1;
			if (cnt == 8'h01) begin
			//Do nothing
			end else begin
				in = in+8'h02;
				if (in[3:0]==4'hA) begin
					in[3:0] = 4'h0;
					in[7:4] = in[7:4] + 1'b1;
				end
				if (in[7:0]==8'h12) begin
					in[7:0] = 8'h01;
				end
				if (in[3:0]==4'hB) begin
					in[3:0] = 4'h1;
					in[7:4] = in[7:4]+1'b1;
				end
				if (in[7:0]==8'h13) begin
					in = 8'h00;
				end			
			end
			
			ena = 1;
			#2;
			ena = 0;
			#18;						
		end
	end
	//Generate clock with a 4ns period
	always #2 clk = ~clk;
endmodule

