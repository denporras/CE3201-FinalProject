`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:03:47 10/02/2017 
// Design Name: 
// Module Name:    output_pixels 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module output_pixels#(parameter WIDTH = 10,   // default width: 10 pixels
               HEIGHT = 40)(                // default height: 40 pixels 
		clk,
		rst,
		hcount,
		vcount,
		over,
		value,
		final 
);

	input 		 clk;
	input 		 rst;
	input			 sd;
	input	[9:0] hcount;
	input	[9:0]	 vcount;
	input [7:0]	 value;
	output [7:0] final;

// ====================================================================================
// 								Parameters, Register, and Wires
// ====================================================================================
	reg [7:0]	 final;
	
//  ===================================================================================
// 							  				Implementation
//  ===================================================================================

		always @(posedge clk)
		begin
			if (sd == 1)
				final <= 0;
		   else
				final <= value;
		end
endmodule

