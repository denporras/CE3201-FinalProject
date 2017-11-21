`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:48:00 11/20/2017
// Design Name:   PC_Register
// Module Name:   /home/dennis/Documentos/CommandLineInterface/PCResgister_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_Register
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PCResgister_Test;

	// Inputs
	reg [31:0] _PC;
	reg CLK;

	// Outputs
	wire [31:0] PC;

	// Instantiate the Unit Under Test (UUT)
	PC_Register uut (
		._PC(_PC), 
		.CLK(CLK), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		CLK = 1;
		_PC = 0;
		#10
		_PC = 4;
		#20;
		_PC = 8;
		#20;
		_PC = 12;
		#20;
		_PC = 32;

	end
	
	always begin
		#10 CLK = !CLK;
	end
      
endmodule

