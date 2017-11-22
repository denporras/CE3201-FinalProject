`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:44 11/20/2017 
// Design Name: 
// Module Name:    TopLevelModule 
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
module TopLevelModule(
			input CLK
    );
	 
	 wire [31:0] PCplus4;
	 wire [31:0] PCplus8;
	 wire [31:0] _PC;
	 wire [31:0] PC;
	 wire CLK;
	 wire [31:0] instruction;
	 
	 wire [3:0] A1;
	 wire [3:0] A2;
	 
	 wire [31:0] RD1;
	 wire [31:0] RD2;
	 
	 MUX_2 M_Sel_PC(
		.SEL(0),
		.IN_0(PCplus4),
		.IN_1(255),
		.DAT_OUT(_PC));
	
	 PC_Register PC_r(
		._PC(_PC),
		.CLK(CLK),
		.PC(PC));
	
	 Add adder_pc_4(
		.OperA(4),
		.OperB(PC),
		.Result(PCplus4));
	 
	 Add adder_pc_8(
		.OperA(4),
		.OperB(PCplus4),
		.Result(PCplus8));
	
	 MUX_2 M_Reg_1(
		.SEL(0),
		.IN_0(instruction[19:16]),
		.IN_1(15),
		.DAT_OUT(A1));
	 
	 MUX_2 M_Reg_2(
		.SEL(0),
		.IN_0(instruction[3:0]),
		.IN_1(instruction[15:12]),
		.DAT_OUT(A2));
	
	 RegiterFile bank_register(
		.A1(A1),
		.A2(A2),
		.A3(instruction[15:12]),
		.WD3(9),
		.R15(PCplus8),
		.WE3(1),
		.RD1(RD1),
		.RD2(RD2),
		.CLK(CLK));

endmodule
