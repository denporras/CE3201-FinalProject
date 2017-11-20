`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:02:57 11/20/2017
// Design Name:   MUX_2
// Module Name:   /home/dennis/Documentos/CommandLineInterface/MUX_2_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_2_Test;

	// Inputs
	reg SEL;
	reg [31:0] IN_0;
	reg [31:0] IN_1;

	// Outputs
	wire [31:0] DAT_OUT;

	// Instantiate the Unit Under Test (UUT)
	MUX_2 uut (
		.SEL(SEL), 
		.IN_0(IN_0), 
		.IN_1(IN_1), 
		.DAT_OUT(DAT_OUT)
	);

	initial begin
		// Initialize Inputs
		SEL = 0;
		IN_0 = 207;
		IN_1 = 255;
		#15;
		SEL = 1;
		IN_0 = 15;
		IN_1 = 31;
		#15
		SEL = 0;
		IN_0 = 9;
		IN_1 = 2;
        
		// Add stimulus here

	end
      
endmodule

