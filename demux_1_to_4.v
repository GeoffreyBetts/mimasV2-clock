`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:21:48 09/19/2022 
// Design Name: 
// Module Name:    demux_1_to_4 
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
module demux_1_to_4(							// 1 to 4 demux w/ enable
    input [1:0] i_sel,
	 input i_in,
    output reg o_a,
    output reg o_b,
    output reg o_c,
    output reg o_d
    );

	 always @(*) begin
		o_a = 1'b0;
		o_b = 1'b0;
		o_c = 1'b0;
		o_d = 1'b0;
		case (i_sel)
			2'b00	:	o_a = i_in;
			2'b01	:	o_b = i_in;
			2'b10	:	o_c = i_in;
			2'b11	:	o_d = i_in;
		endcase
	 end
	 
endmodule
