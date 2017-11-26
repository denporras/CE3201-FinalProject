`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:31:40 11/21/2017
// Design Name:   SignExtend_24
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Sign_24_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SignExtend_24
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Sign_24_Test;

	// Inputs
	reg [23:0] immediate_24;

	// Outputs
	wire [31:0] immediate_32;

	// Instantiate the Unit Under Test (UUT)
	SignExtend_24 uut (
		.immediate_24(immediate_24), 
		.immediate_32(immediate_32)
	);

	initial begin
		// Initialize Inputs
		immediate_24 = 24'b111111111111111111111101;
        
		// Add stimulus here

	end
      
endmodule

