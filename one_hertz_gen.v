`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:55:31 09/16/2022 
// Design Name: 
// Module Name:    one_hertz_gen 
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
module one_hertz_gen(
    input i_clk,					// 12 MHz	
    input i_reset,
    output reg o_signal_vf,  	// 1200 ns (1.2 us) 	(0.833 MHz)	(So 14.4 clock cycles, will have to make 15 (1250 ns))
	 output reg o_signal_f,		// 8.333 ms				(120 Hz) (6666.64 o_signal_vf cycles (Round up to 6667))
	 output reg o_signal_n		// 1 s					(1 Hz) (120 o_signal_f cycles)
    );
	 
	 reg [23:0]r_cnt = 24'h000000;
	 reg [3:0] r_cnt_vf = 4'h0;			// f
	 reg [15:0] r_cnt_f = 16'h0000;		// 1aob
	 reg [7:0] r_cnt_n = 8'h00;			// 79
	 
	 always @(posedge i_clk) begin
		if (i_reset) begin							// Reset everything to 0 on reset
			o_signal_vf <= 1'b0;
			o_signal_f <= 1'b0;
			o_signal_n <= 1'b0;
			r_cnt_vf <= 1'b0;
			r_cnt_f <= 1'b0;
			r_cnt_n <= 1'b0;
		end else begin										// Generate a pulse for one clock cycle every 12000000 clock cycles (d12000000==hb71b00)
			//o_signal <= (r_cnt==24'hb71b00-1'b1);		// Signal will be high on the next clock cycle after 11999999
			//if (r_cnt==24'hb71b00-1'b1) r_cnt <= 1'b0;	// If cnt==11999999, rollover to 0 (therefore, signal is high when cnt==0)
			//else r_cnt <= r_cnt+1'b1;						// Otherwise, increase cnt by 1'b1
			
			o_signal_vf <= (r_cnt_vf==4'hf-1'b1);
			o_signal_f <= (r_cnt_f==16'h1a0b-1'b1);
			o_signal_n <= (r_cnt_n==8'h79-1'b1);
			
			if (r_cnt_vf==4'hf-1'b1) r_cnt_vf <= 4'h0;
			else r_cnt_vf <= r_cnt_vf+1'b1;
			
			if (r_cnt_f==16'h1a0b-1'b1) r_cnt_f <= 4'h0;
			else r_cnt_f <= r_cnt_f+o_signal_vf;
			
			if (r_cnt_n==8'h79-1'b1) r_cnt_n <= 4'h0;
			else r_cnt_n <= r_cnt_n+o_signal_f;
			
		end
	 end

endmodule
