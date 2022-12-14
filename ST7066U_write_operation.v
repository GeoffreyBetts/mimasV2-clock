`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:15:45 10/03/2022 
// Design Name: 
// Module Name:    ST7066U_write_operation 
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
module ST7066U_write_operation(
    input i_clk,
    input i_ena,
	 input i_reset,
	 input i_data,
	 input i_e_trigger,
    output reg o_rs,
    output reg o_e
    );
	 reg [2:0] r_cnt;
	 
	 // If reset reset values to 0
	 // If i_ena is high, start outputting signals to drive lcd
	 // o_e only wants to be high for part of the ena cycle, datasheet says 140 ns at minimum
	 // So keep o_e high for 2 clock cycles (166 ns)
	 always @(posedge i_clk) begin
		if (i_reset) begin
			o_e <= 1'b0;
			r_cnt <= 3'b0;
		end else begin
			if (i_ena&i_e_trigger) begin
				o_rs <= i_data;
				o_e <= 1'b1;
				r_cnt <= 3'b0;
			end
		
			if (o_e) begin
				r_cnt <= r_cnt + 1'b1;
				o_e <= ~(r_cnt==3'b110);
			end
		end
	 end


endmodule

