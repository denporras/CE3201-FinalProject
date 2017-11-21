`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   13:44:52 11/20/2017
// Design Name:   Add
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Add_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Add
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Add_Test;

	// Inputs
	reg [31:0] OperA;
	reg [31:0] OperB;

	// Outputs
	wire [31:0] Result;

	// Instantiate the Unit Under Test (UUT)
	Add uut (
		.OperA(OperA), 
		.OperB(OperB), 
		.Result(Result)
	);

	initial begin
		// Initialize Inputs
		OperA = 2;
		OperB = 2;
		#15;
		OperA = 5;
		OperB = 3;
		#15;
      OperA = 8;
		OperB = 7;
		// Add stimulus here

	end
      
endmodule

