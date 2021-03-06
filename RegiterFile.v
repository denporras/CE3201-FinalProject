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
    output reg [31:0] RD1,
    output reg [31:0] RD2,
	 input CLK,
	 input link
    );
	 
	 reg [31:0] registers[15:0];

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
	 
	 always @*
		begin
			RD1 = (A1 == 15) ? R15 : registers[A1];
		end
		
	 always @*
		begin
			RD2 = (A2 == 15) ? R15 : registers[A2];
		end
		
	 always @(posedge CLK)
		begin
			if(WE3)
				registers[A3] = WD3;
			if(link)
				registers[14] = R15-4;
		end

endmodule