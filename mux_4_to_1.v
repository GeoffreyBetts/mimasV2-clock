`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:49:40 09/23/2022 
// Design Name: 
// Module Name:    mux_4_to_1 
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
module mux_4_to_1(
	 input [1:0] i_sel,
	 input [7:0] i_a,
	 input [7:0] i_b,
	 input [7:0] i_c,
	 input [7:0] i_d,
	 output reg [7:0] o_q
    );
	 
	 always @(*) begin
		o_q <= 8'h00;
		case (i_sel)
			2'b00	:	o_q <= i_a;
			2'b01	:	o_q <= i_b;
			2'b10	:	o_q <= i_c;
			2'b11	:	o_q <= i_d;
		endcase
	 end

endmodule
