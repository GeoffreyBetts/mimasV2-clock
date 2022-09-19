`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:09:43 09/19/2022 
// Design Name: 
// Module Name:    demux_1-4 
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
module demux_1_to_4(
    input i_clk,
    input [1:0] i_sel,
    input [7:0] i_in,
    output reg [7:0] o_a,
    output reg [7:0] o_b,
    output reg [7:0] o_c,
    output reg [7:0] o_d
    );
	 
	 always @(posedge i_clk) begin
		o_a <= 8'h00;
		o_b <= 8'h00;
		o_c <= 8'h00;
		o_d <= 8'h00;
		case (i_sel)
			2'b00		:	o_a <= i_in;
			2'b01 	:	o_b <= i_in;
			2'b10		:	o_c <= i_in;
			2'b11		:	o_d <= i_in;
		endcase
	 end
	 
endmodule
