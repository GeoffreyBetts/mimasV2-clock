`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:32:33 09/13/2022 
// Design Name: 
// Module Name:    count_to_60 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 0.01
// Revision 0.01 - File Created & Inital code
//				0.02 - Fixing synchronous reset
// Additional Comments: 
// Functional 0-59 counter
//////////////////////////////////////////////////////////////////////////////////
module count_to_60(
    input i_clk,			// clock == 1Hz
    input i_reset,		// reset synchronous active-high
	 input i_ena,
	 input i_wr,
	 input [7:0] i_in,
    output reg o_out,		// output during 59-0 rollover
    output [7:0] o_q	// counter in hex
    );
	 wire w_carry;
	 reg r_ro = 1'b0;
	 
	 decade_counter first_digit	(.i_clk(i_clk),				// First digit
											 .i_reset(i_reset),		// Normal decade counter
											 .i_ena(i_ena|i_reset),		// Also enabled when reset is high, so it can reset on the next clock cycle
											 .i_wr(i_wr),
											 .i_in(i_in[3:0]),
											 .o_out(w_carry),
											 .o_q(o_q[3:0]));

	 decade_counter second_digit	(.i_clk(i_clk),
											 .i_reset(i_reset|(o_out)), 			// Either reset-high or during delayed rollover
											 .i_ena((i_ena&(w_carry|i_wr))|i_reset),	//enabled when ena&carry is high, as carry will be high for multiple clock cycles between ena signals
											 .i_wr(i_wr),
											 .i_in(i_in[7:4]),
											 .o_out(),							// Unconnected as not req. (Still gives a warning at synthesis tho)
											 .o_q(o_q[7:4]));	
	
	 always @(posedge i_clk) begin
		if (i_ena) begin
			if (i_reset) begin				// During reset, change everything to low
				r_ro <= 1'b0;
				o_out <= 1'b0;
			end else begin
				r_ro <= (o_q==8'h57);			// ro high when q==8'h58
				o_out <= r_ro;					// out is ro delayed by one ena signal, so high when q==8'h59
			end
		end
	 end

endmodule
