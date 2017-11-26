`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:36:35 11/23/2017 
// Design Name: 
// Module Name:    MUX_3 
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
module MUX_3(
	input [31:0] data_1,
	input [31:0] data_2,
	input [31:0] data_3,
	input [1:0] sel,
	output [31:0] out_data
	);
	 
	 reg [31:0] out_data;
	 
	 always @*
	  case (sel)
		  0 : out_data <= data_1;
		  1 : out_data <= data_2;
		  2 : out_data <= data_3;
		  3 : out_data <= 0;
		  default : out_data = 0;
	  endcase


endmodule
