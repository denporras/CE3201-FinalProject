`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:40:40 11/23/2017
// Design Name:   MUX_3
// Module Name:   /home/dennis/Documentos/CommandLineInterface/MUX_3_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUX_3
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module MUX_3_Test;

	// Inputs
	reg [31:0] data_1;
	reg [31:0] data_2;
	reg [31:0] data_3;
	reg [1:0] sel;

	// Outputs
	wire [31:0] out_data;

	// Instantiate the Unit Under Test (UUT)
	MUX_3 uut (
		.data_1(data_1), 
		.data_2(data_2), 
		.data_3(data_3), 
		.sel(sel), 
		.out_data(out_data)
	);

	initial begin
		// Initialize Inputs
		data_1 = 1;
		data_2 = 2;
		data_3 = 3;
		sel = 0;
		#100;
		sel = 1;
		#100;
		sel = 2;
        
		// Add stimulus here

	end
      
endmodule

