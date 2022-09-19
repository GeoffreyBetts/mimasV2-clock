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
    input i_clk,
	 input i_ena,
    input [1:0] i_sel,
    output reg o_a,
    output reg o_b,
    output reg o_c,
    output reg o_d
    );

	 always @(posedge i_clk) begin
		o_a <= 1'b0;
		o_b <= 1'b0;
		o_c <= 1'b0;
		o_d <= 1'b0;
		if (i_ena) begin						// Output all 0's unless enabled
			case (i_sel)
				2'b00		:	o_a <= 1'b1;
				2'b01 	:	o_b <= 1'b1;
				2'b10		:	o_c <= 1'b1;
				2'b11		:	o_d <= 1'b1;
			endcase
		end
	 end
	 
endmodule
