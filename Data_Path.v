`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:03:06 11/24/2017 
// Design Name: 
// Module Name:    Data_Path 
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
module Data_Path(
    input CLK,
    input reset,
    input [1:0] RegSrc,
    input RegWrite,
    input [1:0] ImmSrc,
    input ALUSrc,
    input [1:0] ALUControl,
    input MemtoReg,
    input PCSrc,
    output wire [3:0] ALUFlags,
    output wire [31:0] PC,
    input [31:0] Instr,
    output wire [31:0] ALUResult,
    output wire [31:0] WriteData,
    input [31:0] ReadData,
	 input MOVInstr,
	 input link
    );
	 
	 wire [31:0] PCnext, PCplus4, PCplus8;
	 wire [31:0] ExtImm, RegAData, RegBData, SrcA, SrcB, Result;
	 wire [31:0] RA1, RA2;
	 
	 
	 //Selection PC
	 MUX_2#(32) pc_mux(
		.SEL(PCSrc),
		.IN_0(PCplus4),
		.IN_1(Result),
		.DAT_OUT(PCnext));
	 
	 FlipFlop_r#(32) pc_reg(
		.CLK(CLK),
		.reset(reset),
		.d(PCnext),
		.q(PC));
	
	 Add#(32) pc_add_4(
		.OperA(4),
		.OperB(PC),
		.Result(PCplus4));
	
	 Add#(32) pc_add_8(
		.OperA(4),
		.OperB(PCplus4),
		.Result(PCplus8));
	 
	 // Register file
	 MUX_2#(4) RA1_MUX(
		.SEL(RegSrc[0]),
		.IN_0(Instr[19:16]),
		.IN_1(15),
		.DAT_OUT(RA1));
		
	 MUX_2#(4) RA2_MUX(
		.SEL(RegSrc[1]),
		.IN_0(Instr[3:0]),
		.IN_1(Instr[15:12]),
		.DAT_OUT(RA2));
	
	 RegiterFile bank_register(
		.A1(RA1),
		.A2(RA2),
		.A3(Instr[15:12]),
		.WD3(Result),
		.R15(PCplus8),
		.WE3(RegWrite),
		.RD1(RegAData),
		.RD2(WriteData),
		.CLK(CLK),
		.link(link));
		
	 shift shift_data(
		.input_shift(WriteData),
		.shift_amount(Instr[11:7]),
		.type(Instr[6:5]),
		.output_shift(RegBData));
	 
	 
	 Immediate imm_ext(
		.immediate_24(Instr[23:0]),
		.immediate_sel(ImmSrc),
		.out_immediate(ExtImm));
	
	 //ALU
	 MUX_2#(32) OperB_MUX(
		.SEL(ALUSrc),
		.IN_0(RegBData),
		.IN_1(ExtImm),
		.DAT_OUT(SrcB));

	 MUX_2#(32) OperA_MUX(
		.SEL(MOVInstr),
		.IN_0(RegAData),
		.IN_1(0),
		.DAT_OUT(SrcA));
	 
	
	 ALU alu_arm(
		.OperA(SrcA),
		.OperB(SrcB),
		.ALU_Code(ALUControl),
		.Result(ALUResult),
		.Zero(ALUFlags[2]),
		.Negative(ALUFlags[3]),
		.Carry(ALUFlags[1]),
		.Overflow(ALUFlags[0]));//Verify
	
	 //WriteBack
	 MUX_2#(32) Res_MUX(
		.SEL(MemtoReg),
		.IN_0(ALUResult),
		.IN_1(ReadData),
		.DAT_OUT(Result));
	
	


endmodule
