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
module Clk_50MHz(
  		CLK,
		CLKOUT
);

// ====================================================================================
// 										Port Declarations
// ====================================================================================
   input			 CLK;		// 100MHz onboard clock
   output		 CLKOUT;	// New clock output

// ====================================================================================
// 								Parameters, Register, and Wires
// ====================================================================================
   reg 			 CLKOUT;
	reg 			 flag;

//  ===================================================================================
// 							  				Implementation
//  ===================================================================================

		always @(posedge CLK)
			// Reset clock
			if (flag == 0) 
			begin
				CLKOUT <= 0;
				flag = 1;
			end
			else 
			begin
				CLKOUT <= ~CLKOUT;
				flag = 0;
			end
   
endmodule
