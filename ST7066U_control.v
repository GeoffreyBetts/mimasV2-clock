`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:16:19 10/03/2022 
// Design Name: 
// Module Name:    ST7066U_control 
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
module ST7066U_control(
    input i_clk,
    input i_ena,
    input i_reset,
	 input i_update_pulse,
    input i_pm,
    input [7:0] i_hh,
    input [7:0] i_mm,
    input [7:0] i_ss,
	 output reg o_data,
	 output reg o_e_trigger,
	 output reg [2:0] o_sel,
	 output reg [3:0] o_val
    );
	 
	 parameter [5:0] LFI = 6'd0, ST1 = 6'd1, ST2 = 6'd2, ST3 = 6'd3, ST4 = 6'd4, ST5 = 6'd5;
	 parameter [5:0] SET = 6'd6, UPH = 6'd7, LWH = 6'd8, UPM = 6'd9, LWM = 6'd10, UPS = 6'd11, LWS = 6'd12, UPP = 6'd13, LWP = 6'd14;
	 parameter [5:0] H2M = 6'd15, M2S = 6'd16, S2P = 6'd17, S1W = 6'd18, S2W = 6'd19, S3W = 6'd20, S4W = 6'd21;
	 parameter [5:0] SAW = 6'd22, W01 = 6'd23, W02 = 6'd24, W03 = 6'd25, W04 = 6'd26, W05 = 6'd27, W06 = 6'd28, W07 = 6'd29, W08 = 6'd30, W09 = 6'd31, W10 = 6'd32, W11 = 6'd33, ASW = 6'd34;
	 reg [5:0] state, next_state;
	 reg [11:0] r_cnt;
	 
	 // Controls the next state
	 always @(*) begin
		next_state = LFI;
		case(state)
			LFI:	next_state = i_update_pulse? SET:LFI;
			ST1:	next_state = S1W;
			S1W:	next_state = (r_cnt==12'd32)? ST2:S1W;		// Wait > 4.1 ms (3280(+1) clock cycles)
			ST2:	next_state = S2W;
			S2W:	next_state = (r_cnt==12'd64)? ST3:S2W;		// Wait > 100 us (80(+1) + 3280(+1) clock cycles)
			ST3:	next_state = S3W;
			S3W:	next_state = (r_cnt==12'd96)? ST4:S3W;		// DN
			ST4:	next_state = S4W;
			S4W:	next_state = (r_cnt==12'd1320)? ST5:S4W;	// DN
			ST5:	next_state = ASW;									// Straight into adding time
			ASW:	next_state = (r_cnt==12'd1352)? SET:ASW;
			SET:	next_state = SAW;
			SAW:	next_state = (r_cnt==12'd32)? UPH:SAW;
			UPH:	next_state = W01;
			W01:	next_state = (r_cnt==12'd67)? LWH:W01;
			LWH:	next_state = W02;
			W02:	next_state = (r_cnt==12'd102)? H2M:W02;
			H2M:	next_state = W03;
			W03:	next_state = (r_cnt==12'd137)? UPM:W03;
			UPM:	next_state = W04;
			W04:	next_state = (r_cnt==12'd172)? LWM:W04;
			LWM:	next_state = W05;
			W05:	next_state = (r_cnt==12'd207)? M2S:W05;
			M2S:	next_state = W06;
			W06:	next_state = (r_cnt==12'd242)? UPS:W06;
			UPS:	next_state = W07;
			W07:	next_state = (r_cnt==12'd277)? LWS:W07;
			LWS:	next_state = W08;
			W08:	next_state = (r_cnt==12'd312)? S2P:W08;
			S2P:	next_state = W09;
			W09:	next_state = (r_cnt==12'd347)? UPP:W09;
			UPP:	next_state = W10;
			W10:	next_state = (r_cnt==12'd382)? LWP:W10;
			LWP: 	next_state = W11;
			W11:	next_state = (r_cnt==12'd417)? LFI:W11;
			default: next_state = LFI;
		endcase
	 end
	 
	 always @(posedge i_clk) begin
		if (i_reset) begin	// If reset, setup the lcd
			state <= ST1;
			r_cnt <= 12'd0;
		end else if (i_ena) begin	// Otherwise, move state, and increment cnt
			state <= next_state;
			r_cnt <= (state==SET)? 12'd0:r_cnt+1'b1;
		end
		
		// Controls the outputs depending on the current state
		o_e_trigger <= 1'b1;	// e_trigger wants to be high for most states, so auto set high and change to 0 on few states
		if (state==ST1) begin
			o_data <= 1'b0;
			o_sel <= 3'b100;	
		end else if (state==ST2) begin
			o_data <= 1'b0;
			o_sel <= 3'b100;
		end else if (state==ST3) begin
			o_data <= 1'b0;
			o_sel <= 3'b101;		
		end else if (state==ST4) begin
			o_data <= 1'b0;
			o_sel <= 3'b110;		
		end else if (state==ST5) begin
			o_data <= 1'b0;
			o_sel <= 3'b111;	
		end else if (state==SET) begin
			o_data <= 1'b0;
			o_sel <= 3'b000;	
			o_val <= 4'h0;
		end else if (state==UPH) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b00;
			o_val <= i_hh[7:4];
		end else if (state==LWH) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b00;
			o_val <= i_hh[3:0];	
		end else if (state==H2M) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b01;
			o_val[0] <= 1'b0;		
		end else if (state==UPM) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b00;
			o_val <= i_mm[7:4];	
		end else if (state==LWM) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b00;
			o_val <= i_mm[3:0];	
		end else if (state==M2S) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b01;
			o_val[0] <= 1'b0;
		end else if (state==UPS) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b00;
			o_val <= i_ss[7:4];	
		end else if (state==LWS) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b00;
			o_val <= i_ss[3:0];	
		end else if (state==S2P) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b01;
			o_val[0] <= 1'b1;
		end else if (state==UPP) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b11;
			o_val[0] <= i_pm;		
		end else if (state==LWP) begin
			o_data <= 1'b1;
			o_sel[1:0] <= 2'b10;		
		end else if (state==LFI) o_e_trigger <= 1'b0;
		else if (state==S1W) o_e_trigger <= 1'b0;
		else if (state==S2W) o_e_trigger <= 1'b0;
		else if (state==S3W) o_e_trigger <= 1'b0;
		else if (state==S4W) o_e_trigger <= 1'b0;
		else if (state==ASW) o_e_trigger <= 1'b0;
		else if (state==SAW) o_e_trigger <= 1'b0;
		else if (state==W01) o_e_trigger <= 1'b0;
		else if (state==W02) o_e_trigger <= 1'b0;
		else if (state==W03) o_e_trigger <= 1'b0;
		else if (state==W04) o_e_trigger <= 1'b0;
		else if (state==W05) o_e_trigger <= 1'b0;
		else if (state==W06) o_e_trigger <= 1'b0;
		else if (state==W07) o_e_trigger <= 1'b0;
		else if (state==W08) o_e_trigger <= 1'b0;
		else if (state==W09) o_e_trigger <= 1'b0;
		else if (state==W10) o_e_trigger <= 1'b0;
		else if (state==W11) o_e_trigger <= 1'b0;
	 end

endmodule

