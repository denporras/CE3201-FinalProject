`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:19:25 11/25/2017
// Design Name:   TopProcessor
// Module Name:   /home/daedgomez/Desarrollo/CommandLineInterface/processorDavidTest.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopProcessor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module processorDavidTest;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire vsync;
	wire hsync;
	wire [2:0] VGA_R;
	wire [2:0] VGA_G;
	wire [1:0] VGA_B;

	// Instantiate the Unit Under Test (UUT)
	TopProcessor uut (
		.CLK(CLK), 
		.reset(reset), 
		.vsync(vsync), 
		.hsync(hsync), 
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B)
	);

	initial begin
		// Initialize Inputs
		reset = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
		always begin
		CLK <= 1; # 5; CLK <= 0; # 5;
	end
      
endmodule

