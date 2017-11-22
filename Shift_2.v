`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:19 11/21/2017 
// Design Name: 
// Module Name:    Shift_2 
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
module Shift_2(
    input [31:0] in_data,
    output [31:0] out_data
    );
	 
	 reg [31:0] out_data = 0;
	 
	 always @*
		begin
			out_data <= in_data << 2;
		end


endmodule
