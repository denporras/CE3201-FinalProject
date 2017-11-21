`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:13:34 11/20/2017 
// Design Name: 
// Module Name:    PC_Register 
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
module PC_Register(
    input [31:0] _PC,
    input CLK,
    output [31:0] PC
    );
	 
	 reg [31:0] PC;
	 
	 always @(posedge CLK)
		begin
			PC <= _PC;
		end


endmodule
