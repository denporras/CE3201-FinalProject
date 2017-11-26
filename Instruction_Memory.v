`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:37:46 11/24/2017 
// Design Name: 
// Module Name:    Instruction_Memory 
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
module Instruction_Memory(
    input [31:0] a,
    output reg [31:0] rd
    );
	 
	 reg [31:0] RAM[400:0];
	 
	 initial begin
		RAM[0] = 32'hE3A01004;
		RAM[1] = 32'hE3A02001;
		RAM[2] = 32'hE3A03016;
		RAM[3] = 32'hE3A04009;
		RAM[4] = 32'hE3A05013;
		RAM[5] = 32'hE3A06005;
		RAM[6] = 32'hE3A0700C;
		RAM[7] = 32'hE3A08003;
		RAM[8] = 32'hE3A0900F;
		RAM[9] = 32'hE3A0A00D;
		RAM[10] = 32'hE3A0B000;
		RAM[11] = 32'hE5851000;
		RAM[12] = 32'hE5852004;
		RAM[13] = 32'hE5853008;
		RAM[14] = 32'hE585400C;
		RAM[15] = 32'hE5851010;
		RAM[16] = 32'hE585B014;
		RAM[17] = 32'hE5855018;
		RAM[18] = 32'hE585601C;
		RAM[19] = 32'hE585B020;
		RAM[20] = 32'hE5857024;
		RAM[21] = 32'hE5852028;
		RAM[22] = 32'hE585B02C;
		RAM[23] = 32'hE5858030;
		RAM[24] = 32'hE5859034;
		RAM[25] = 32'hE585A038;
		RAM[26] = 32'hE585603C;
		RAM[27] = 32'hEAFFFFE3;
	end
	
	 always @(a)
		begin
			rd = RAM[a/4];
		end
	 
endmodule
