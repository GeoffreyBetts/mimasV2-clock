`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:29:09 09/27/2022 
// Design Name: 
// Module Name:    pulse_to_toggle 
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
module pulse_to_toggle(
    input i_clk,
	 input i_ena,
    input i_reset,
    input i_pulse,
    output o_toggle
    );
	 
	 wire w_ena_p2t;
	 assign w_ena_p2t = i_ena&i_pulse;
	 
	 my_dff p2t (.i_clk(i_clk),
					 .i_ena(w_ena_p2t|i_reset),
					 .i_d(~i_reset&~o_toggle),
					 .o_q(o_toggle));								 
	 

endmodule
