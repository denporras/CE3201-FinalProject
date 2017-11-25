`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:51:38 11/24/2017
// Design Name:   TopProcessor
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Processor_Test.v
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

module Processor_Test;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire [31:0] WriteData;
	wire [31:0] DataAdr;
	wire MemWrite;

	// Instantiate the Unit Under Test (UUT)
	TopProcessor uut (
		.CLK(CLK), 
		.reset(reset), 
		.WriteData(WriteData), 
		.DataAdr(DataAdr), 
		.MemWrite(MemWrite)
	);

	initial begin
		// Initialize Inputs
		reset = 1;
		#0.5;
		reset = 0;
		
        
		// Add stimulus here

	end
	
	always begin
		CLK <= 1; # 5; CLK <= 0; # 5;
	end
	
endmodule

