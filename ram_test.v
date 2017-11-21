`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:05:56 11/20/2017
// Design Name:   sp_ram_rw
// Module Name:   /home/daedgomez/Desarrollo/CommandLineInterface/ram_test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: sp_ram_rw
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ram_test;

	// Inputs
	reg clk;
	reg [31:0] address;
	reg [31:0] data_in;
	reg re;
	reg we;

	// Outputs
	wire [31:0] data_out;

	// Instantiate the Unit Under Test (UUT)
	sp_ram_rw uut (
		.clk(clk), 
		.address(address), 
		.data_in(data_in), 
		.data_out(data_out), 
		.re(re), 
		.we(we)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		address = 1;
		data_in = 111;
		re = 0;
		we = 1;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	
	always begin
		#5 clk = !clk;
	end
      
endmodule

