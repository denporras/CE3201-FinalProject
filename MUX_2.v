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
module MUX_2#(parameter WIDTH = 8)(
    input SEL,
    input [WIDTH-1:0] IN_0,
    input [WIDTH-1:0] IN_1,
    output reg [WIDTH-1:0] DAT_OUT
    );
	 
	 initial begin
		DAT_OUT = 0;
	 end
	 
	 always @*
		 begin
			DAT_OUT = SEL ? IN_1 : IN_0;
		 end

endmodule
