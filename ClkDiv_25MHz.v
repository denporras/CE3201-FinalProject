`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:47 09/30/2017 
// Design Name: 
// Module Name:    ClkDiv_25MHz 
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
module ClkDiv_25MHz(
  		CLK,
		CLKOUT
);

// ====================================================================================
// 										Port Declarations
// ====================================================================================
   input			 CLK;		// 100MHz onboard clock	// Reset
   output		 CLKOUT;	// New clock output

// ====================================================================================
// 								Parameters, Register, and Wires
// ====================================================================================
   reg 			 CLKOUT = 0;
	reg 			 flag = 1;

//  ===================================================================================
// 							  				Implementation
//  ===================================================================================

		always @(posedge CLK)
			begin
				if (flag == 1)
				begin
					CLKOUT <= ~CLKOUT;
					flag <= 0;
				end
				else 
				begin
					flag <= 1;
				end
			end
endmodule
