`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:51:20 11/22/2017
// Design Name:   Register_2b
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Register_2b_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_2b
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_2b_Test;

	// Inputs
	reg [1:0] in_dat;
	reg CLK;

	// Outputs
	wire [1:0] out_dat;

	// Instantiate the Unit Under Test (UUT)
	Register_2b uut (
		.in_dat(in_dat), 
		.CLK(CLK), 
		.out_dat(out_dat)
	);

	initial begin
		// Initialize Inputs
		in_dat = 2;
		CLK = 0;
		#30;
		in_dat = 3;
		#60;
		in_dat = 1;
		#50;
		in_dat = 0;
        
		// Add stimulus here

	end
	
	always begin
		#10 CLK = !CLK;
	end
      
endmodule

