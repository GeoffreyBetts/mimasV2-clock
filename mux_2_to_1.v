`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:45:08 09/25/2022 
// Design Name: 
// Module Name:    mux_2_to_1 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mux_2_to_1(
    input i_sel,
    input [3:0] i_a,
    input [3:0] i_b,
    output [3:0] o_q
    );
	 
	 always @(*) begin
		case (i_sel)
			1'b0 		: o_q <= i_a;
			1'b1 		: o_q <= 1_b;
			//default 	: o_q <= 4'h0;
		endcase
	 end

endmodule
