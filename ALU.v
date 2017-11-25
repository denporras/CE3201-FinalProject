`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:35:57 11/20/2017 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    input [31:0] OperA,
    input [31:0] OperB,
    input [1:0] ALU_Code,
    output reg [31:0] Result,
    output reg Zero,
    output reg Negative,
    output reg Carry,
    output reg Overflow
    );
	 
	 reg [32:0] tmp;
	 reg x;
	 reg y;
	 
	 initial begin
		 Result = 0;
		 tmp = 0;
		 Zero = 0;
		 Negative = 0;
		 Carry = 0;
		 Overflow = 0;
		 y = 0;
		 x = 0;
	 end
	 

	always @*
		begin
			case(ALU_Code)
					2'b00 : tmp = OperA + OperB;
					2'b01 : tmp = OperA - OperB;
					2'b10 : tmp = OperA & OperB;
					2'b11 : tmp = OperA | OperB;
					default : tmp = 0;
				endcase
			Negative = tmp[31];
			Carry = tmp[32];
			Result = tmp[31:0];
			x = OperA[31] & OperB[31];
			y = OperB[31] & Result[31];
			if(x)
					Overflow = 0;
			else
				begin
					if(!y)
						Overflow = 0;
					else
						Overflow = 1;
				end
			if(Result == 0)
				Zero = 1;
			else
				Zero = 0;
		end

endmodule
