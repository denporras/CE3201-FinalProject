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
    input [3:0] Cond,
    input [1:0] Op,
    input [5:0] Func,
    input [3:0] Rd,
    output PCSrc,
    output MemtoReg,
    output MemWrite,
    output [1:0] ALU_Control,
    output ALUSrc,
    output [1:0] ImmSrc,
    output RegWrite,
    input [3:0] Flags
    );
	 
	 wire Branch;
	 wire RegW;
	 wire MemW;
	 wire MemtoReg;
	 wire ALUSrc;
	 wire [1:0] ImmSrc;
	 wire [1:0] RegSrc;
	 wire PCS;
	 wire ALUOp;
	 wire [1:0] ALUControl;
	 wire [1:0] FlagW;
	 
	 PC_Logic pc_log(
		.Rd(Rd),
		.Branch(Branch),
		.RegW(RegW),
		.PCS(PCS));
		
	 Main_Decoder main (
		.Op(Cond),
		.Funct5(Func[5]),
		.Funct1(Func[0]),
		.Branch(Branch),
		.RegW(RegW),
		.MemW(MemW),
		.MemtoReg(MemtoReg),
		.ALUSrc(ALUSrc),
		.ImmSrc(ImmSrc),
		.RegSrc(RegSrc),
		.ALUOp(ALUOp));
	
	 ALU_Decoder(
		.Funct40(Func[4:0]),
		.ALUOp(ALUOp),
		.ALUControl(ALUControl),
		.FlagW(FlagW)
    );
	 
	 

endmodule
