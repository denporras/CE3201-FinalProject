`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:12:02 11/23/2017 
// Design Name: 
// Module Name:    Main_Decoder 
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
module Main_Decoder(
    input [1:0] Op,
    input Funct5,
    input Funct1,
    output reg Branch,
    output reg RegW,
    output reg MemW,
    output reg MemtoReg,
    output reg ALUSrc,
    output reg [1:0] ImmSrc,
    output reg [1:0] RegSrc,
	 output reg ALUOp,
	 output reg link
    );
	 
	initial begin
	Branch = 0;
	RegW = 0;
	MemW = 0;
	MemtoReg = 0;
	ALUSrc = 0;
	ImmSrc = 0;
	RegSrc = 0;
	link = 0;
	end
	
	always @*
		begin
			if(Op == 2'b00)
				begin
				if(Funct5 == 0)
					begin
						Branch = 0;
						MemtoReg = 0;
						MemW = 0;
						ALUSrc = 0;
						RegW = 1;
						RegSrc =  0;
						ALUOp = 1;
						link = 0;
					end
				else
					begin
						Branch = 0;
						MemtoReg = 0;
						MemW = 0;
						ALUSrc = 1;
						ImmSrc = 0;
						RegW = 1;
						RegSrc =  0;
						ALUOp = 1;
						link = 0;
					end
				end
			else
				begin
					if(Op == 2'b01)
						begin
							if(Funct1 == 0)
								begin
									Branch = 0;
									MemW = 1;
									ALUSrc = 1;
									ImmSrc = 1;
									RegW = 0;
									RegSrc =  2;
									ALUOp = 0;
									link = 0;
								end
							else
								begin
									Branch = 0;
									MemtoReg = 1;
									MemW = 0;
									ALUSrc = 1;
									ImmSrc = 1;
									RegW = 1;
									RegSrc =  0;
									ALUOp = 0;
									link = 0;
								end
						end
					else
						begin
							if(Op == 2'b10)
								begin
									Branch = 1;
									MemtoReg = 0;
									MemW = 0;
									ALUSrc = 1;
									ImmSrc = 2;
									RegW = 0;
									RegSrc =  1;
									ALUOp = 0;
									if(Funct1 == 0)
										link = 0;
									else
										link = 1;
								end
						end
				end
		end

endmodule
