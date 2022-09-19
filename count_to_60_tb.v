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
// Test should take 3123 ns
// Run simulation for 3150 to ensure coorect behaviour
////////////////////////////////////////////////////////////////////////////////

module count_to_60_tb;

	// Inputs
	reg clk;
	reg reset;
	reg ena;
	reg wr;
	reg [7:0] in;

	// Outputs
	wire out;
	wire [7:0] q;
	
	// Internal signals
	reg [7:0] cnt;

	// Instantiate the Unit Under Test (UUT)
	count_to_60 uut (
		.i_clk(clk), 
		.i_reset(reset), 
		.i_ena(ena),
		.i_wr(wr),
		.i_in(in),
		.o_out(out), 
		.o_q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 1;
		reset = 0;
		ena = 0;
		wr = 0;
		in = 8'h00;
		cnt = 8'h00;

		// Wait 100 ns for global reset to finish
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
		// Test standard clocking (1703 ns)
		#3;
		while (cnt < 85) begin
			cnt = cnt+1'd1;
			ena = 1;
			#2;
			ena = 0;
			#18;
		end
		// Reset then test writing function (1240 ns)
		cnt = 8'h00;
		wr = 1'b1;
		reset = 1'b1;
		#20;
		reset = 1'b0;
		while (cnt < 61) begin
			cnt = cnt + 1'b1;
			if (cnt == 8'h01) begin
			// Do nothing
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
	end
	
	//Generate clock with a 4ns period
	always #2 clk = ~clk;
endmodule

