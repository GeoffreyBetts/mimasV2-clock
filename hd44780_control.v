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
// Every 1 second, update the entire LCD (if wr is low)
// Update the LCD every fast pulse if wr is high
// 
//////////////////////////////////////////////////////////////////////////////////
module hd44780_control(
    input i_clk,
    input i_ena,
    input i_reset,
	 input i_update_pulse,
    input i_pm,
    input [7:0] i_hh,
    input [7:0] i_mm,
    input [7:0] i_ss,
	 output reg o_data,
	 output reg [2:0] o_sel,
	 output reg [3:0] o_val
    );
	 
	 parameter [4:0] LFI = 5'd0, ST1 = 5'd1, ST2 = 5'd2, ST3 = 5'd3, ST4 = 5'd4, ST5 = 5'd5;
	 parameter [4:0] SET = 5'd6, UPH = 5'd7, LWH = 5'd8, UPM = 5'd9, LWM = 5'd10, UPS = 5'd11, LWS = 5'd12, UPP = 5'd13, LWP = 5'd14;
	 parameter [4:0] H2M = 5'd15, M2S = 5'd16, S2P = 5'd17;
	 reg [4:0] state, next_state;
	 reg [10:0] r_cnt;
	 
	 always @(*) begin
		next_state = LFI;
		case(state)
			LFI:	next_state = i_update_pulse? SET:LFI;
			ST1:	next_state = (r_cnt==11'd32)? ST2:ST1; 	// Wait 39 us (32+0)
			ST2:	next_state = (r_cnt==11'd62)? ST3:ST2;		// Wait 37 us (30+32)
			ST3:	next_state = (r_cnt==11'd92)? ST4:ST3;		// Wait 37 us (30+62)
			ST4:	next_state = (r_cnt==11'd1316)? ST5:ST4;	// Wait 1.53 ms (1224+92)
			ST5:	next_state = SET;									// Straight into adding time
			SET:	next_state = UPH;
			UPH:	next_state = LWH;
			LWH:	next_state = H2M;
			H2M:	next_state = UPM;
			UPM:	next_state = LWM;
			LWM:	next_state = M2S;
			M2S:	next_state = UPS;
			UPS:	next_state = LWS;
			LWS:	next_state = S2P;
			S2P:	next_state = UPP;
			UPP:	next_state = LWP;
			LWP: 	next_state = LFI;
			default: next_state = LFI;
		endcase
	 end
	 
	 always @(posedge i_clk) begin
		if (i_reset) begin
			state <= ST1;
			r_cnt <= 10'd0;
		end else if (i_ena) begin
			state <= next_state;
			r_cnt <= r_cnt+1'b1;
			
			if (next_state==ST1) begin
				o_data = 1'b0;
				o_sel = 3'b100;
			end else if (next_state==ST2) begin
				o_data = 1'b0;
				o_sel = 3'b100;		
			end else if (next_state==ST3) begin
				o_data = 1'b0;
				o_sel = 3'b101;		
			end else if (next_state==ST4) begin
				o_data = 1'b0;
				o_sel = 3'b110;		
			end else if (next_state==ST5) begin
				o_data = 1'b0;
				o_sel = 3'b111;		
			end else if (next_state==SET) begin
				o_data = 1'b0;
				o_sel = 3'b000;	
				o_val = 4'h0;
			end else if (next_state==UPH) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val = i_hh[7:4];
			end else if (next_state==LWH) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val = i_hh[3:0];		
			end else if (next_state==H2M) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b01;
				o_val[0] = 1'b0;			
			end else if (next_state==UPM) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val = i_mm[7:4];		
			end else if (next_state==LWM) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val = i_mm[3:0];		
			end else if (next_state==M2S) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b01;
				o_val[0] = 1'b0;
			end else if (next_state==UPS) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val = i_ss[7:4];		
			end else if (next_state==LWS) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val = i_ss[3:0];		
			end else if (next_state==S2P) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b01;
				o_val[0] = 1'b1;
			end else if (next_state==UPP) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b00;
				o_val[0] = i_pm;		
			end else if (next_state==LWP) begin
				o_data = 1'b1;
				o_sel[1:0] = 2'b10;		
			end	
		end
	 end

endmodule
