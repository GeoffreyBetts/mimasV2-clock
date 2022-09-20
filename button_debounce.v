`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:29 09/20/2022 
// Design Name: 
// Module Name:    button_debounce 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: Assume bouncing can last upto 10ms.
// Preliminay testing shows that debouncer works with 10ms debounce time with an enable frequency of 2ms
// Delays by 20 ms however (inc. 10ms debounce period)
//////////////////////////////////////////////////////////////////////////////////
module button_debounce(
    input i_clk,
	 input i_ena,
    input i_btn,
    output o_pulse
    );
	 wire w_delay1;
	 wire w_pq0, w_pq1, w_nq1;
	 
	 my_dff dff_ms0 (.i_clk(i_clk),			// Delays the input by one clock cycle to reduce chance of metastability screwing with circuit
						  .i_ena(i_ena),
						  .i_d(i_btn),
						  .o_q(w_delay1));
						  
	 my_dff dff_ms1 (.i_clk(i_clk),			// Delays the input by one clock cycle to reduce chance of metastability screwing with circuit
						  .i_ena(i_ena),
						  .i_d(w_delay1),
						  .o_q(w_delay2));						  
	 
	 my_dff dff_pq0 (.i_clk(i_clk),
						  .i_ena(i_ena),
						  .i_d(w_delay2),
						  .o_q(w_pq0));
							
	 my_dff dff_pq1 (.i_clk(i_clk),			
						  .i_ena(i_ena),
						  .i_d(w_pq0),
						  .o_q(w_pq1));
							 
	 assign w_nq1 = ~w_pq1;
	 assign o_pulse = w_nq1&w_pq0; //With this, if button pushed, high only for 1 enable cycle.

endmodule
