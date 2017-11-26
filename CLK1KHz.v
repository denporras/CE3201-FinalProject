`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:04:26 11/25/2017 
// Design Name: 
// Module Name:    CLK1KHz 
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
module CLK1KHz(
   clk_100mhz,clk);

input clk_100mhz;
output clk;

// generate 1 kHz from 100 MHz
reg [28:0] count_reg = 0;
reg clk = 0;

always @(posedge clk_100mhz) begin

	
	begin
	  if (count_reg < 29999999) begin
			count_reg <= count_reg + 1;
	  end else begin
			count_reg <= 0;
			clk <= ~clk;
	  end
    end
end


endmodule