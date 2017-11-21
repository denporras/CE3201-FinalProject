`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:58:51 11/20/2017 
// Design Name: 
// Module Name:    MUX_2 
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
module MUX_2(
    input SEL,
    input [31:0] IN_0,
    input [31:0] IN_1,
    output [31:0] DAT_OUT
    );
	 
	 reg [31:0] DAT_OUT = 0;
	 
	 always @*
	 begin
		if(SEL == 0)
			DAT_OUT <= IN_0;
		else
			DAT_OUT <= IN_1;
	 end

endmodule
