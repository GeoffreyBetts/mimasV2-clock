`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:17:08 09/27/2022 
// Design Name: 
// Module Name:    hd44780_data_output 
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
module hd44780_data_output(
    input i_clk,
    input i_ena,				// Enable signal
	 input i_data,				// If high, output clock value, if low, output address location
	 input [1:0] i_sel,		// If data_write mode, determines if data should be a number or letter, else, selects which line to set address too
    input [3:0] i_d,			// Input number or Address
    output reg [7:0] o_q	// Data output for driver
    );
	 
	 // If sel==2'h3, output either P or A depending on value
	 // Else, output 8'h3X where X==i_d: This is what the driver needs to show a number
	 always @(posedge i_clk) begin
		if (i_ena) begin
			if (i_data) begin
				if (i_sel == 2'b11) begin
					if (i_d[0]==1'b1) o_q <= 8'h50; // "P"
					else o_q <= 8'h41;				  // "A"
				end else o_q <= {4'h3, i_d};
			end else o_q <= {1'b1, i_sel[0], 1'b0, i_sel[1], i_d}; // Write address data
		end
	 end

endmodule
