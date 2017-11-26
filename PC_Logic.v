`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    02:46:16 11/24/2017 
// Design Name: 
// Module Name:    PC_Logic 
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
module PC_Logic(
    input [3:0] Rd,
	 input Branch,
	 input RegW,
    output reg PCS
    );
	 
	 always @*
		begin
			PCS = ((Rd == 15) & RegW) | Branch;
		end


endmodule
