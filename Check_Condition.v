`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:35 11/24/2017 
// Design Name: 
// Module Name:    Check_Condition 
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
module Check_Condition(
    input [3:0] Cond,
    input [3:0] Flags,
    output reg CondEx
    );
	 
	 reg neg, zero, carry, overflow, ge;
	 
	 always @*
		begin
			{neg, zero, carry, overflow} = Flags;
			ge = (neg == overflow);
			case(Cond)
				4'b0000: CondEx = zero; //EQ
				4'b0001: CondEx = ~zero; //NE
				4'b0010: CondEx = carry; //CS
				4'b0011: CondEx = ~carry; //CC
				4'b0100: CondEx = neg; //MI
				4'b0101: CondEx = ~neg; //PL
				4'b0110: CondEx = overflow; //VS
				4'b0111: CondEx = ~overflow;//VC
				4'b1000: CondEx = carry & ~zero;//HI
				4'b1001: CondEx = ~(carry & ~zero);//LS
				4'b1010: CondEx = ge; //GE
				4'b1011: CondEx = ~ge; //LT
				4'b1100: CondEx = ~zero & ge;//GT
				4'b1101: CondEx = ~(~zero & ge);//LE
				4'b1110: CondEx = 1;//ALways
				default: CondEx = 0;//undifined
			endcase
		end


endmodule
