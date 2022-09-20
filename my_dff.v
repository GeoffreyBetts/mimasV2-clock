`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:46:30 09/20/2022 
// Design Name: 
// Module Name:    my_dff 
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
module my_dff(
    input i_clk,
    input i_ena,
    input i_d,
    output reg o_q
    );
	 
	 always @(posedge i_clk) begin
		if (i_ena) o_q <= i_d;
	 end

endmodule
