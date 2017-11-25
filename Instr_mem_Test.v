`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:20:06 11/24/2017
// Design Name:   Instruction_Memory
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Instr_mem_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Instruction_Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Instr_mem_Test;

	// Inputs
	reg [31:0] a;

	// Outputs
	wire [31:0] rd;

	// Instantiate the Unit Under Test (UUT)
	Instruction_Memory uut (
		.a(a), 
		.rd(rd)
	);

	initial begin
		// Initialize Inputs
		a = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		a = 4;
		
		#100;
		
		a = 8;
        
		// Add stimulus here

	end
      
endmodule

