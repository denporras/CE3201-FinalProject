`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:54 11/24/2017 
// Design Name: 
// Module Name:    Decoder 
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
module Decoder(
    input [1:0] Op,
    input [5:0] Funct,
    input [3:0] Rd,
    output wire [1:0] FlagW,
    output wire PCS,
    output wire RegW,
    output wire MemW,
    output wire MemtoReg,
    output wire ALUSrc,
    output wire [1:0] ImmSrc,
    output wire [1:0] RegSrc,
    output wire [1:0] ALUControl,
	 output wire NoWrite,
	 output wire MOVInstr,
	 output wire link);
	 
	 
	 wire Branch, ALUOp;
	 
	 Main_Decoder main (
		.Op(Op),
		.Funct5(Funct[5]),
		.Funct1(Funct[0]),
		.Branch(Branch),
		.RegW(RegW),
		.MemW(MemW),
		.MemtoReg(MemtoReg),
		.ALUSrc(ALUSrc),
		.ImmSrc(ImmSrc),
		.RegSrc(RegSrc),
		.ALUOp(ALUOp),
		.link(link));
	
	 ALU_Decoder alu_dec(
		.Funct40(Funct[4:0]),
		.ALUOp(ALUOp),
		.ALUControl(ALUControl),
		.FlagW(FlagW),
		.NoWrite(NoWrite),
		.MOVInstr(MOVInstr)
    );
	 
	 PC_Logic pc_log(
		.Rd(Rd),
		.Branch(Branch),
		.RegW(RegW),
		.PCS(PCS));
		
	 
	 


endmodule
