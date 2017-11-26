`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   02:33:56 11/24/2017
// Design Name:   ALU_Decoder
// Module Name:   /home/dennis/Documentos/CommandLineInterface/ALU_Decoder_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU_Decoder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Decoder_Test;

	// Inputs
	reg [4:0] Funct40;
	reg ALUOp;

	// Outputs
	wire [1:0] ALUControl;
	wire [1:0] FlagW;

	// Instantiate the Unit Under Test (UUT)
	ALU_Decoder uut (
		.Funct40(Funct40), 
		.ALUOp(ALUOp), 
		.ALUControl(ALUControl), 
		.FlagW(FlagW)
	);

	initial begin
		// Initialize Inputs
		Funct40 = 0;
		ALUOp = 0;
		#100;
		Funct40 = 5'b01000;
		ALUOp = 1;
		#100;
		Funct40 = 5'b01001;
		#100;
		Funct40 = 5'b00100;
		#100;
		Funct40 = 5'b00101;
		#100;
		Funct40 = 5'b00000;
		#100;
		Funct40 = 5'b00001;
		#100;
		Funct40 = 5'b11000;
		#100;
		Funct40 = 5'b11001;

	end
      
endmodule

