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
	 
	 reg [31:0] RAM[63:0];
	 
	 initial begin
		RAM[0] = 32'hE3A00000;
		RAM[1] = 32'hE3A01001;
		RAM[2] = 32'hE3A02002;
		RAM[3] = 32'hE3A04003;
		RAM[4] = 32'hE3A05000;
		RAM[5] = 32'hE0800001;
		RAM[6] = 32'hE0802001;
		RAM[7] = 32'hE0003000;
		RAM[8] = 32'hE0003005;
		RAM[9] = 32'hE5850000;
		RAM[10] = 32'hE5852004;
		RAM[11] = 32'hE5952004;
		RAM[12] = 32'hE1500000;
		RAM[13] = 32'h0AFFFFF6;
		end
	
	 always @(a)
		begin
			rd = RAM[a/4];
		end
	 
endmodule
