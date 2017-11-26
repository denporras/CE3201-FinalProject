`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:25:05 11/23/2017
// Design Name:   Immediate
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Immediate_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Immediate
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Immediate_Test;

	// Inputs
	reg [23:0] immediate_24;
	reg [1:0] immediate_sel;

	// Outputs
	wire [31:0] out_immediate;

	// Instantiate the Unit Under Test (UUT)
	Immediate uut (
		.immediate_24(immediate_24), 
		.immediate_sel(immediate_sel), 
		.out_immediate(out_immediate)
	);

	initial begin
		// Initialize Inputs
		immediate_24 = -6;
		immediate_sel = 0;
		#100;
		immediate_24 = 45;
		immediate_sel = 1;
		#100;
		immediate_24 = 87;
		immediate_sel = 2;
        
		// Add stimulus here

	end
      
endmodule

