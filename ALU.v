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
    output [31:0] Result,
    output Zero,
    output Negative,
    output Carry,
    output Overflow
    );
	 
	 reg [31:0] Result = 0;
	 reg [32:0] tmp = 0;
	 reg Zero = 0;
	 reg Negative = 0;
	 reg Carry = 0;
	 reg Overflow = 0;
	 
	 reg x = 0;
	 reg y = 0;

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
				begin
					Overflow = 0;
				end
			else
				begin
					if(!y)
						begin
							Overflow = 0;
						end
					else
						begin
							Overflow = 1;
						end
				end
			if(Result == 0)
				begin
					Zero = 1;
				end
			else
				begin
					Zero = 0;
				end
		end

endmodule
