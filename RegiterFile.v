`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:09:53 11/20/2017 
// Design Name: 
// Module Name:    RegiterFile 
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
module RegiterFile(
    input [3:0] A1,
    input [3:0] A2,
    input [3:0] A3,
    input [31:0] WD3,
	 input [31:0] R15,
    input WE3,
    output [31:0] RD1,
    output [31:0] RD2,
	 input CLK
    );
	 
	 reg [31:0] registers[15:0];
	 reg [31:0] RD1 = 0;
	 reg [31:0] RD2 = 0;
	 
	 always @(CLK)
		begin
			registers[15] = R15;
			RD1 = registers[A1];
			RD2 = registers[A2];
		end
	 always @(negedge CLK)
		begin
			if(WE3)
				begin
					registers[A3] = WD3;
				end
		end

endmodule
