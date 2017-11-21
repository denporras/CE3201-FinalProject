`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:33 10/02/2017 
// Design Name: 
// Module Name:    draw_scene 
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
module draw_scene #(parameter WIDTH = 3,   // default width: 10 pixels
       HEIGHT = 10)( 
		hcount, 
		vcount,
		clk,
		pixel 
);

input [9:0] hcount;
input [9:0]  vcount;
input clk;
output reg[7:0] pixel;
reg [9:0]  	x1 = 5;
reg [9:0]  	x2 = 490;
reg [9:0]	y = 445;
reg [9:0]	z = 20;

always @(posedge clk) 
		begin
			if ( hcount == 0 || vcount == 0 || hcount == 638 || vcount == 478 ||
			
			//T
			((hcount >= x1 && hcount < (x1 + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1 + 2*WIDTH) && hcount < (x1 + 2*WIDTH + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1 + 2*WIDTH) && hcount < (x1 + 2*WIDTH + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//I
			((hcount >= (x1+z) && hcount < ((x1+z) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1+z) && hcount < ((x1+z) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x1 + 2*WIDTH + z) && hcount < (x1 + z + 2*WIDTH + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1 + 2*WIDTH + z) && hcount < (x1 + z + 2*WIDTH + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//M
			((hcount >= (x1+z*2) && hcount < ((x1+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1+z*2) && hcount < ((x1+z*2) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1+z*2) && hcount < ((x1+z*2) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= ((x1+z*2) + WIDTH + HEIGHT) && hcount < ((x1+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= ((x1+z*2) + 2*WIDTH + HEIGHT) && hcount < (((x1+z*2) + WIDTH + HEIGHT) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (((x1+z*2) + WIDTH + HEIGHT) + WIDTH + HEIGHT) && hcount < (((x1+z*2) + WIDTH + HEIGHT) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= (((x1+z*2) + WIDTH + HEIGHT) + WIDTH + HEIGHT) && hcount < (((x1+z*2) + WIDTH + HEIGHT) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//E
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x1+z*3+13) && hcount < ((x1+z*3+13) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//:
			((hcount >= (x1+z*4+13) && hcount < ((x1+z*4+13) + WIDTH)) && (vcount >= (y - 4 + HEIGHT) && vcount < (y - 4 + WIDTH + HEIGHT))) ||
			((hcount >= (x1+z*4+13) && hcount < ((x1+z*4+13) + WIDTH)) && (vcount >= (y - 4 + WIDTH + 2*HEIGHT) && vcount < (y - 4 + 2*WIDTH + 2*HEIGHT))) ||
			
			//S
			((hcount >= x2 && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= x2 && hcount < (x2 + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= x2 && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical linE
			((hcount >= x2 && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x2 + WIDTH + HEIGHT) && hcount < (x2 + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//C
			((hcount >= (x2+z) && hcount < ((x2+z) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z) && hcount < ((x2+z) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z) && hcount < ((x2+z) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= (x2+z) && hcount < ((x2+z) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			//O
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z*2) && hcount < ((x2+z*2) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= ((x2+z*2) + WIDTH + HEIGHT) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + 2*WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= ((x2+z*2) + WIDTH + HEIGHT) && hcount < ((x2+z*2) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//R
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical line
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z*3) && hcount < ((x2+z*3) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower left vertical line
			((hcount >= ((x2+z*3) + WIDTH + HEIGHT) && hcount < ((x2+z*3) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper right vertical line
			((hcount >= ((x2+z*3) + WIDTH + HEIGHT) && hcount < ((x2+z*3) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower right vertical line
			//E
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + 2*WIDTH + HEIGHT)) && (vcount >= y && vcount < (y + WIDTH))) || //upper horizontal line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + 2*WIDTH + HEIGHT)) && (vcount >= (y + WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + HEIGHT))) || //middle vertical line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + 2*WIDTH + HEIGHT)) && (vcount >= (y + 2*WIDTH + 2*HEIGHT) && vcount < (y + 3*WIDTH + 2*HEIGHT))) || //lower horizontal line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + WIDTH)) && (vcount >= (y + WIDTH) && vcount < (y + WIDTH + HEIGHT))) || //upper left vertical line
			((hcount >= (x2+z*4) && hcount < ((x2+z*4) + WIDTH)) && (vcount >= (y + 2*WIDTH + HEIGHT) && vcount < (y + 2*WIDTH + 2*HEIGHT))) || //lower left vertical line
			//:
			((hcount >= (x2+z*5) && hcount < ((x2+z*5) + WIDTH)) && (vcount >= (y - 4 + HEIGHT) && vcount < (y - 4 + WIDTH + HEIGHT))) ||
			((hcount >= (x2+z*5) && hcount < ((x2+z*5) + WIDTH)) && (vcount >= (y - 4 + WIDTH + 2*HEIGHT) && vcount < (y - 4 + 2*WIDTH + 2*HEIGHT)))
			)
				pixel <= 8'hFF;
			else
				pixel <= 8'b0;
		end


endmodule