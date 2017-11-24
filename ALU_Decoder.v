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
    output reg [1:0] FlagW
    );
	 
	 initial begin
	 ALUControl = 0;
	 FlagW = 0;
	 end
	 
	 always @*
		begin
			case(Funct40[4:1])
				4'b0000 : //AND
					begin
						ALUControl = 2;
						if(Funct40[0] == 0)
								FlagW = 0;
						else
								FlagW = 2;
					end
				4'b0010 : //SUB
					begin
						ALUControl = 1;
						if(Funct40[0] == 0)
								FlagW = 0;
						else
								FlagW = 3;
					end
				4'b0100 : //ADD
					begin
						ALUControl = 0;
						if(Funct40[0] == 0)
								FlagW = 0;
						else
								FlagW = 3;
					end
				4'b1010 : //CMP
					begin
						ALUControl = 1;
						FlagW = 11;
					end
				4'b1100 : //ORR
					begin
						ALUControl = 3;
						if(Funct40[0] == 0)
								FlagW = 0;
						else
								FlagW = 2;
					end
				4'b1101 : //MOV
					begin
						ALUControl = 0;
						if(Funct40[0] == 0)
								FlagW = 0;
						else
								FlagW = 11;
					end
				default :
					begin
						ALUControl = 0;
						FlagW = 0;
					end
			endcase
		end


endmodule
