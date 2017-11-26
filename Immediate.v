`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:16 11/23/2017 
// Design Name: 
// Module Name:    Immediate 
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
module Immediate(
    input [23:0] immediate_24,
	 input [1:0] immediate_sel,
    output reg [31:0] out_immediate
    );
	 
	 always @*
		begin
			case(immediate_sel)
				// 8 bit zero extend
				0 : 	out_immediate = {{24{1'b0}},immediate_24[7:0]};
				// 12 bit zero extend
				1 :	out_immediate = {{20{1'b0}}, immediate_24[11:0]};
				// 24 bit branch address
				2 :	out_immediate = {{6{immediate_24[23]}}, immediate_24[23:0], {2'b00}};
				// Undefined
				default : out_immediate = 0;
			endcase
		end
	 
	 
	 
	 
endmodule
