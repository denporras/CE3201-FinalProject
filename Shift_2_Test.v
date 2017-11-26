`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:41:52 11/21/2017
// Design Name:   Shift_2
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Shift_2_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Shift_2
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Shift_2_Test;

	// Inputs
	reg [31:0] in_data;

	// Outputs
	wire [31:0] out_data;

	// Instantiate the Unit Under Test (UUT)
	Shift_2 uut (
		.in_data(in_data), 
		.out_data(out_data)
	);

	initial begin
		// Initialize Inputs
		in_data = 255;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

