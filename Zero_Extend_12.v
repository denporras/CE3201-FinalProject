`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:45:34 11/23/2017 
// Design Name: 
// Module Name:    Zero_Extend_12 
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
module Zero_Extend_12(
    input [11:0] immediate_12,
    output [31:0] immediate_Zero_32_mem
    );
	 
	 reg [31:0] immediate_Zero_32_mem;
	 
	 always @*
		 begin
			immediate_Zero_32_mem <= {{20{1'b0}},immediate_12};
		 end


endmodule
