`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:17:27 09/21/2022 
// Design Name: 
// Module Name:    count_to_60_updown 
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
module count_to_60_updown(
    input i_clk,
    input i_reset,
    input i_ena,
    input i_up,
    input i_down,
	 input i_wr,
	 input [7:0] i_in,
    output [7:0] o_q
    );
	 
	 reg r_ru, r_rd, r_carry_up_del, r_carry_down_del;
	 wire [3:0] w_in;
	 
	 decade_counter_updown first_digit 	(.i_clk(i_clk),
													 .i_reset(i_reset),
													 .i_ena((i_ena&(w_in_c|i_wr))|i_reset),
													 .i_up(i_up),
													 .i_down(i_down),
													 .i_wr(i_wr),
													 .i_in(i_in[3:0]),
													 .o_out_up(w_carry_up),
													 .o_out_down(w_carry_down),
													 .o_q(o_q[3:0]));
													
	 decade_counter_updown second_digit (.i_clk(i_clk),
													 .i_reset(i_reset|r_ru),
													 .i_ena((i_ena&w_carry_del_c&w_in_c)|(i_ena&i_wr)|i_reset),
													 .i_up((w_carry_down&r_carry_up_del)&i_up),
													 .i_down(w_carry_up&r_carry_down_del&i_down&~i_up),
													 .i_wr((r_rd&~i_up)|i_wr),
													 .i_in(w_in),
													 .o_out_up(),
													 .o_out_down(),
													 .o_q(o_q[7:4]));
	
	 assign w_in_c = i_up|i_down;
	 assign w_carry_del_c = r_carry_up_del|r_carry_down_del;
	 assign w_in = i_wr? i_in[7:4]:4'h5;
	 
	 always @(posedge i_clk) begin
		if (i_ena) begin
			r_rd <= 1'b0;
			r_ru <= 1'b0;
			if (i_up & (o_q == 8'h58)) r_ru <= 1'b1;
			if (i_down & (o_q == 8'h01)) r_rd <= 1'b1;
			
			r_carry_up_del <= w_carry_up;
			r_carry_down_del <= w_carry_down;
		end
	 end

endmodule
