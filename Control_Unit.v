`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:47:00 11/23/2017 
// Design Name: 
// Module Name:    Control_Unit 
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
module Control_Unit(
	 input CLK,
	 input reset,
	 input [31:12] Instr,
	 input [3:0] ALUFlags,
	 output wire [1:0] RegSrc,
	 output wire RegWrite,
	 output wire [1:0] ImmSrc,
	 output wire ALUSrc,
	 output wire [1:0] ALUControl,
	 output wire MemWrite,
	 output wire MemtoReg,
	 output wire PCSrc);
	 
    wire [1:0] FlagW;
	 wire PCS, RegW, MemW, NoWrite;
	 
	 Decoder deco(
		.Op(Instr[27:26]),
		.Funct(Instr[25:20]),
		.Rd(Instr[15:12]),
		.FlagW(FlagW),
		.PCS(PCS),
		.RegW(RegW),
		.MemW(MemW),
		.MemtoReg(MemtoReg),
		.ALUSrc(ALUSrc),
		.ImmSrc(ImmSrc),
		.RegSrc(RegSrc),
		.ALUControl(ALUControl),
		.NoWrite(NoWrite));
	
	 Conditional_Logic cond_lo(
			.CLK(CLK),
			.reset(reset),
			.Cond(Instr[31:28]),
			.ALUFlags(ALUFlags),
			.FlagW(FlagW),
			.PCS(PCS),
			.RegW(RegW),
			.MemW(MemW),
			.NoWrite(NoWrite),
			.PCSrc(PCSrc),
			.RegWrite(RegWrite),
			.MemWrite(MemWrite));



endmodule
