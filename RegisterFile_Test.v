`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:16:33 11/20/2017
// Design Name:   RegiterFile
// Module Name:   /home/dennis/Documentos/CommandLineInterface/RegisterFile_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: RegiterFile
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module RegisterFile_Test;

	// Inputs
	reg [3:0] A1;
	reg [3:0] A2;
	reg [3:0] A3;
	reg [31:0] WD3;
	reg [31:0] R15;
	reg WE3;
	reg CLK;

	// Outputs
	wire [31:0] RD1;
	wire [31:0] RD2;

	// Instantiate the Unit Under Test (UUT)
	RegiterFile uut (
		.A1(A1), 
		.A2(A2), 
		.A3(A3), 
		.WD3(WD3), 
		.R15(R15), 
		.WE3(WE3), 
		.RD1(RD1), 
		.RD2(RD2), 
		.CLK(CLK)
	);

	initial begin
		// Initialize Inputs
		CLK = 1;
		A1 = 0;
		A2 = 0;
		A3 = 2;
		WD3 = 15;
		R15 = 24;
		WE3 = 1;

		// Wait 100 ns for global reset to finish
		#20;
		
		A1 = 1;
		A2 = 2;
		A3 = 3;
		WD3 = 70;
		R15 = 25;
		WE3 = 1;
		
		#20
		
		A1 = 2;
		A2 = 3;
		A3 = 3;
		WD3 = 0;
		R15 = 26;
		WE3 = 0;
		
        
		// Add stimulus here

	end
   
	always begin
		#10 CLK = !CLK;
	end
	
endmodule

