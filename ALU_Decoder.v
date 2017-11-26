`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:00:24 11/24/2017 
// Design Name: 
// Module Name:    ALU_Decoder 
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
module ALU_Decoder(
    input [4:0] Funct40,
    input ALUOp,
    output reg [1:0] ALUControl,
    output reg [1:0] FlagW,
	 output reg NoWrite
    );
	 
	 initial begin
	 ALUControl = 0;
	 FlagW = 0;
	 NoWrite = 0;
	 end
	 
	 always @*
		begin
			if(ALUOp == 1)
				begin
					case(Funct40[4:1])
						4'b0000 : //AND
							begin
								ALUControl = 2;
								NoWrite = 0;
								if(Funct40[0] == 0)
										FlagW = 0;
								else
										FlagW = 2;
							end
						4'b0010 : //SUB
							begin
								ALUControl = 1;
								NoWrite = 0;
								if(Funct40[0] == 0)
										FlagW = 0;
								else
										FlagW = 3;
							end
						4'b0100 : //ADD
							begin
								ALUControl = 0;
								NoWrite = 0;
								if(Funct40[0] == 0)
										FlagW = 0;
								else
										FlagW = 3;
							end
						4'b1010 : //CMP
							begin
								ALUControl = 1;
								NoWrite = 1;
								FlagW = 3;
							end
						4'b1100 : //ORR
							begin
								ALUControl = 3;
								NoWrite = 0;
								if(Funct40[0] == 0)
										FlagW = 0;
								else
										FlagW = 2;
							end
						4'b1101 : //MOV
							begin
								ALUControl = 0;
								NoWrite = 0;
								if(Funct40[0] == 0)
										FlagW = 0;
								else
										FlagW = 3;
							end
						default :
							begin
								ALUControl = 0;
								FlagW = 0;
								NoWrite = 0;
							end
					endcase
				end
		end


endmodule
