`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:36:40 11/23/2017 
// Design Name: 
// Module Name:    Zero_Extend_8 
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
module Zero_Extend_8(
    input [7:0] immediate_8,
    output [31:0] immediate_Zero_32
    );
	 
	 reg [31:0] immediate_Zero_32;
	 
	 always @*
		begin
			immediate_Zero_32 <= {{24{1'b0}},immediate_8};
		end

endmodule
