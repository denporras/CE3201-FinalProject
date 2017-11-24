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
	 initial begin 
		 registers[0] = 0;
		 registers[1] = 0;
		 registers[2] = 0;
		 registers[3] = 0;
		 registers[4] = 0;
		 registers[5] = 0;
		 registers[6] = 0;
		 registers[7] = 0;
		 registers[8] = 0;
		 registers[9] = 0;
		 registers[10] = 0;
		 registers[11] = 0;
		 registers[12] = 0;
		 registers[13] = 0;
		 registers[14] = 0;
		 registers[15] = 0;
	end
	 
	 always @(A1)
		begin
			if(A1 == 15)
				RD1 = R15;
			else
				RD1 = registers[A1];
		end
		
	 always @(A2)
		begin
			if(A2 == 15)
				RD2 = R15;
			else
				RD2 = registers[A2];
		end
		
	 always @(negedge CLK)
		begin
			registers[15] = R15;
			if(WE3)
				begin
					registers[A3] = WD3;
				end
		end

endmodule