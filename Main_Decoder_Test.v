`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:44:39 11/24/2017
// Design Name:   Main_Decoder
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Main_Decoder_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Main_Decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Main_Decoder_Test;

	// Inputs
	reg [1:0] Op;
	reg Funct5;
	reg Funct1;

	// Outputs
	wire Branch;
	wire RegW;
	wire MemW;
	wire MemtoReg;
	wire ALUSrc;
	wire [1:0] ImmSrc;
	wire [1:0] RegSrc;
	wire ALUOp;

	// Instantiate the Unit Under Test (UUT)
	Main_Decoder uut (
		.Op(Op), 
		.Funct5(Funct5), 
		.Funct1(Funct1), 
		.Branch(Branch), 
		.RegW(RegW), 
		.MemW(MemW), 
		.MemtoReg(MemtoReg), 
		.ALUSrc(ALUSrc), 
		.ImmSrc(ImmSrc), 
		.RegSrc(RegSrc), 
		.ALUOp(ALUOp)
	);

	initial begin
		// Initialize Inputs
		Op = 0;
		Funct5 = 0;
		Funct1 = 0;
		#100;
		Op = 0;
		Funct5 = 1;
		Funct1 = 0;
		#100;
		Op = 1;
		Funct5 = 0;
		Funct1 = 0;
		#100;
		Op = 1;
		Funct5 = 0;
		Funct1 = 1;
		#100;
		Op = 2;
		Funct5 = 0;
		Funct1 = 0;
        
		// Add stimulus here

	end
      
endmodule

