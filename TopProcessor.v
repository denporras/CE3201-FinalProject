`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:40 11/24/2017 
// Design Name: 
// Module Name:    TopProcessor 
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
module TopProcessor(
    input CLK,
    input reset,
    output wire [31:0] WriteData,
    output wire [31:0] DataAdr,
    output wire MemWrite
    );
	 
	 wire [31:0] PC, Instr, ReadData;
	 
	 SingleCycleARM arm (
			.CLK(CLK),
			.reset(reset),
			.PC(PC),
			.Instr(Instr),
			.MemWrite(MemWrite),
			.ALUResult(DataAdr),
			.WriteData(WriteData),
			.ReadData(ReadData));
			
	 Instruction_Memory imem(
		.a(PC),
		.rd(Instr));
	
	 Data_Memory dmem(
		.CLK(CLK),
		.WE(MemWrite),
		.a(DataAdr),
		.WD(WriteData),
		.Rd(ReadData));
	 


endmodule
