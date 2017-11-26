`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:27:32 11/24/2017 
// Design Name: 
// Module Name:    Conditional_Logic 
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
module Conditional_Logic(
    input CLK,
    input reset,
    input [3:0] Cond,
    input [3:0] ALUFlags,
    input [1:0] FlagW,
    input PCS,
    input RegW,
    input MemW,
	 input NoWrite,
    output wire PCSrc,
    output wire RegWrite,
    output wire MemWrite
    );
	 
	 wire [3:0] FlagWrite;
	 wire [3:0] Flags;
	 wire CondEx;
	 
	 FlipFlop_ren#(2) flagReg1(
		.CLK(CLK),
		.reset(reset),
		.en(FlagWrite[1]),
		.d(ALUFlags[3:2]),
		.q(Flags[3:2]));
	 
	 FlipFlop_ren#(2) flagReg0(
		.CLK(CLK),
		.reset(reset),
		.en(FlagWrite[0]),
		.d(ALUFlags[1:0]),
		.q(Flags[1:0]));
	
	 Check_Condition cc(
		.Cond(Cond),
		.Flags(Flags),
		.CondEx(CondEx));
	 

	 assign FlagWrite = FlagW & {2{CondEx}};
	 assign RegWrite = RegW & CondEx & ~NoWrite;
	 assign MemWrite = MemW & CondEx;
	 assign PCSrc = PCS & CondEx;


endmodule
