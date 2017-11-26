`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   03:20:19 11/24/2017
// Design Name:   PC_Logic
// Module Name:   /home/dennis/Documentos/CommandLineInterface/PC_Logic_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PC_Logic
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module PC_Logic_Test;

	// Inputs
	reg [3:0] Rd;
	reg Branch;
	reg RegW;

	// Outputs
	wire PCS;

	// Instantiate the Unit Under Test (UUT)
	PC_Logic uut (
		.Rd(Rd), 
		.Branch(Branch), 
		.RegW(RegW), 
		.PCS(PCS)
	);

	initial begin
		// Initialize Inputs
		Rd = 4;
		Branch = 0;
		RegW = 1;
		#100;
		Rd = 4;
		Branch = 1;
		RegW = 0;
		#100;
		Rd = 15;
		Branch = 0;
		RegW = 1;
		#100;
		Rd = 4;
		Branch = 0;
		RegW = 0;
        
		// Add stimulus here

	end
      
endmodule

