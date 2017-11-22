`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:42:38 11/21/2017
// Design Name:   ALU
// Module Name:   /home/dennis/Documentos/CommandLineInterface/ALU_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [31:0] OperA;
	reg [31:0] OperB;
	reg [1:0] ALU_Code;

	// Outputs
	wire [31:0] Result;
	wire Zero;
	wire Negative;
	wire Carry;
	wire Overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.OperA(OperA), 
		.OperB(OperB), 
		.ALU_Code(ALU_Code), 
		.Result(Result), 
		.Zero(Zero), 
		.Negative(Negative), 
		.Carry(Carry), 
		.Overflow(Overflow)
	);

	initial begin
		// Initialize Inputs
		OperA = 255;
		OperB = 255;
		ALU_Code = 0;

		#100;
		
		OperA = 251;
		OperB = 252;
		ALU_Code = 1;

		#100;
		
		OperA = 15;
		OperB = 0;
		ALU_Code = 2;

		#100;
		
		OperA = 63;
		OperB = 31;
		ALU_Code = 3;
        
		// Add stimulus here

	end
      
endmodule

