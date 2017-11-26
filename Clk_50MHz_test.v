`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:23:03 11/22/2017
// Design Name:   Clk_50MHz
// Module Name:   C:/Users/stanley/Desktop/Taller digitales/keyboard/Clk_50MHz_test.v
// Project Name:  keyboard
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Clk_50MHz
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Clk_50MHz_test;

	// Inputs
	reg CLK;
	reg RST;

	// Outputs
	wire CLKOUT;

	// Instantiate the Unit Under Test (UUT)
	Clk_50MHz uut (
		.CLK(CLK), 
		.RST(RST), 
		.CLKOUT(CLKOUT)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		RST = 0;

		// Wait 100 ns for global reset to finish
		#100;
        

	end
	
	always
			#5 CLK = ~CLK;// Add stimulus here
      
endmodule

