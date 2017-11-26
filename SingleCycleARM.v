`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:56:09 11/24/2017 
// Design Name: 
// Module Name:    SingleCycleARM 
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
module SingleCycleARM(
    input CLK,
    input reset,
    output wire [31:0] PC,
    input [31:0] Instr,
    output wire MemWrite,
    output wire [31:0] ALUResult,
    output wire [31:0] WriteData,
    input wire [31:0] ReadData
    );
	 
	 wire [3:0] ALUFlags;
	 wire RegWrite, ALUSrc, MemtoReg, PCSrc, MOVInstr;
	 wire [1:0] RegSrc, ImmSrc, ALUControl;
	
	 
	 Control_Unit cu(
		.CLK(CLK),
		.reset(reset),
		.Instr(Instr[31:12]),
		.ALUFlags(ALUFlags),
		.RegSrc(RegSrc),
		.RegWrite(RegWrite),
		.ImmSrc(ImmSrc),
		.ALUSrc(ALUSrc),
		.ALUControl(ALUControl),
		.MemWrite(MemWrite),
		.MemtoReg(MemtoReg),
		.PCSrc(PCSrc),
		.MOVInstr(MOVInstr));
		
	Data_Path dp(
			.CLK(CLK),
			.reset(reset),
			.RegSrc(RegSrc),
			.RegWrite(RegWrite),
			.ImmSrc(ImmSrc),
			.ALUSrc(ALUSrc),
			.ALUControl(ALUControl),
			.MemtoReg(MemtoReg),
			.PCSrc(PCSrc),
			.ALUFlags(ALUFlags),
			.PC(PC),
			.Instr(Instr),
			.ALUResult(ALUResult),
			.WriteData(WriteData),
			.ReadData(ReadData),
			.MOVInstr(MOVInstr));


endmodule
