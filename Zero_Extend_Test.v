`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:48:51 11/23/2017
// Design Name:   Zero_Extend_8
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Zero_Extend_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Zero_Extend_8
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Zero_Extend_Test;

	// Inputs
	reg [7:0] immediate_8;

	// Outputs
	wire [31:0] immediate_Zero_32;

	// Instantiate the Unit Under Test (UUT)
	Zero_Extend_8 uut (
		.immediate_8(immediate_8), 
		.immediate_Zero_32(immediate_Zero_32)
	);

	initial begin
		// Initialize Inputs
		immediate_8 = 255;
		#100;
		immediate_8 = 64;
		#100;
		immediate_8 = 31;
        
		// Add stimulus here

	end
      
endmodule

