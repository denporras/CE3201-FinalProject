`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:23:52 11/21/2017 
// Design Name: 
// Module Name:    SignExtend_24 
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
module SignExtend_24(
    input [23:0] immediate_24,
    output [31:0] immediate_32
    );
	 
	 reg [31:0] immediate_32 = 0;
	 
	 
	 always @*
		begin
			immediate_32[31:0] <= { {8{immediate_24[23]}}, immediate_24[23:0] };
		end

endmodule
