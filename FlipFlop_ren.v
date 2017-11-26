`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:15:30 11/24/2017 
// Design Name: 
// Module Name:    FlipFlop_ren 
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
module FlipFlop_ren#(parameter WIDTH = 8)(
    input CLK,
    input reset,
    input en,
    input [WIDTH-1:0] d,
    output reg [WIDTH-1:0] q
    );
	 
	 always @(posedge CLK, posedge reset)
		begin
			if(reset)
				q <= 0;
			else if(en)
				q <= d;	
		end


endmodule
