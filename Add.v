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
module Add(
    input [31:0] OperA,
    input [31:0] OperB,
    output [31:0] Result
    );
	 
	 reg [31:0] Result = 0;
	 
	 always @*
		begin
			Result <= OperA + OperB;
		end
	

endmodule
