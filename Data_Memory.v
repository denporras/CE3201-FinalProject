`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:44:55 11/24/2017 
// Design Name: 
// Module Name:    Data_Memory 
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
module Data_Memory(
    input CLK,
    input WE,
    input [31:0] a,
    input [31:0] WD,
    output reg [31:0] Rd
    );
	 
	 reg [31:0] RAM[63:0];
	 
	 always @*
		begin
			Rd = RAM[a/4];
		end
	
	always @(posedge CLK)
		begin
			if(WE)
				RAM[a/4] <= WD;
		end


endmodule
