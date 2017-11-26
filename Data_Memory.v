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
	 input  clkv,
	 input [31:0] av,
    input [31:0] WD,
    output reg [31:0] Rd,
	  output reg [31:0] Rdv
    );
	 
	 reg [31:0] RAM[63:0];
	 initial begin
	  for (index=0; index < 64; index = index + 1)
	RAM[index] = 0;
	end
	 
	 always @*
		begin
			Rd = RAM[a/4];
		end
	
	always @(posedge clkv)
		begin
			Rdv = RAM[av];
		end
	
	
	always @(posedge CLK)
		begin
			if(WE)
				RAM[a/4] <= WD;
		end


endmodule
