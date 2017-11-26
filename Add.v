`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:24:27 11/20/2017 
// Design Name: 
// Module Name:    Add 
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
module Add#(parameter WITH = 8)
	(input [WITH-1:0] OperA,
    input [WITH-1:0] OperB,
    output reg [WITH-1:0] Result);	 
	 
	 always @*
		begin
			Result = OperA + OperB;
		end
	

endmodule
