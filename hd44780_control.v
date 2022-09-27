`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:11:54 09/27/2022 
// Design Name: 
// Module Name:    hd44780_control 
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
module hd44780_control(
    input i_clk,
    input i_ena,
    input i_reset,
    input i_pm,
    input [7:0] i_hh,
    input [7:0] i_mm,
    input [7:0] i_ss,
	 output o_data,
	 output [1:0] o_sel,
	 output [3:0] o_val
    );
	 
	 parameter [3:0] lfi = 4'd0, st1 = 4'd1, st2 = 4'd2, st3 = 4'd3, st4 = 4'd4, st5 = 4'd5, sts = 4'd6, stm = 4'd7, sth = 4'd8, stp = 4'd9;
	 parameter [3:0] set = 4'd10, upn = 4'd11, lwn = 4'd12;
	 reg [3:0] state, next_state;
	 
	 always @(*) begin
		case(state)
			lfi:
			st1:
			st2:
			st3:
		endcase
	 end
	 
	 always @(posedge i_clk) begin
		if (i_reset) state <= st1;
		else state <= next_state;
	 end

endmodule
