`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:56 09/28/2022 
// Design Name: 
// Module Name:    hd44780_update_pulse 
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
module hd44780_update_pulse(
    input i_clk,
    input i_ena,
    input i_clock_pulse,
    input i_input_pulse,
	 input i_inc_pulse,
	 input i_dec_pulse,
    input i_wr,
    output reg o_update_pulse
    );
	 
	 always @(posedge i_clk) begin
		if ((i_clock_pulse&~i_wr)|((i_inc_pulse|i_dec_pulse)*i_input_pulse&i_wr)) o_update_pulse <= 1'b1;
		else if (i_ena) o_update_pulse <= 1'b0;
	 end

endmodule
