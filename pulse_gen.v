`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:16:33 09/23/2022 
// Design Name: 
// Module Name:    pulse_gen 
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
module pulse_gen(
    input i_clk,					// 12 MHz (Actually 100 MHz) (10 ns)	
    input i_reset,
    output reg o_pulse_vf,  	// 1200 ns (1.2 us) 	(0.833 MHz)	(So 14.4 clock cycles, will have to make 15 (1250 ns)) (125 100Mhz)
	 output reg o_pulse_f,		// 8.333 ms				(120 Hz) (6666.64 o_signal_vf cycles (Round up to 6667))
	 output reg o_pulse_n		// 1 s					(1 Hz) (120 o_signal_f cycles)
    );
	 
	 reg [6:0] r_cnt_vf = 7'h0;			// f
	 reg [12:0] r_cnt_f = 13'h0000;		// 1aob
	 reg [6:0] r_cnt_n = 8'h00;			// 79
	 
	 always @(posedge i_clk) begin
		if (i_reset) begin							// Reset everything to 0 on reset
			o_pulse_vf <= 1'b0;
			o_pulse_f <= 1'b0;
			o_pulse_n <= 1'b0;
			r_cnt_vf <= 7'h0;
			r_cnt_f <= 13'h0000;
			r_cnt_n <= 7'h00;
		end else begin										// Generate a pulse for one clock cycle every 12000000 clock cycles (d12000000==hb71b00)

			o_pulse_vf <= (r_cnt_vf==7'h7d-1'b1);
			o_pulse_f <= (r_cnt_f==13'h1a0b-1'b1);
			o_pulse_n <= (r_cnt_n==7'h79-1'b1);
						
			if (r_cnt_vf==7'h7d-1'b1) r_cnt_vf <= 7'h0;
			else r_cnt_vf <= r_cnt_vf+1'b1;
			
			if (r_cnt_f==16'h1a0b-1'b1) r_cnt_f <= 4'h0;
			else r_cnt_f <= r_cnt_f+o_pulse_vf;
			
			if (r_cnt_n==7'h79-1'b1) r_cnt_n <= 4'h0;
			else r_cnt_n <= r_cnt_n+o_pulse_f;
			
		end
	 end

endmodule
