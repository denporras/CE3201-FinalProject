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
		RAM[0] = 3800109059;
		RAM[1] = 3800178690;
		RAM[2] = 3800248321;
		RAM[3] = 3850702848;
		RAM[4] = 3850706948;
		RAM[5] = 3850711048;
		end
	
	 always @(a)
		begin
			rd = RAM[a/4];
		end
	 
endmodule
