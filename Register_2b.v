`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:49 11/22/2017 
// Design Name: 
// Module Name:    Register_2b 
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
module Register_2b(
    input [1:0] in_dat,
	 input CLK,
    output [1:0] out_dat
    );
	 
	 reg [1:0] out_dat = 0;
	 
	 always @(negedge CLK)
		begin
			out_dat <= in_dat;
		end
	 


endmodule
