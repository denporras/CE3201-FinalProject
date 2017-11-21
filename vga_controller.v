`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:41:07 10/04/2017 
// Design Name: 
// Module Name:    vga_controller 
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
module vga_controller(
	clk,
	final_pixel,
	hcount,
	vcount,
	vsync,
	hsync,
	VGA_R,
	VGA_G,
	VGA_B
    );
	 
	input [7:0] final_pixel;
	input clk;
	output	vsync;
	output	hsync;
	output [2:0] VGA_R;
	output [2:0] VGA_G;
	output [1:0] VGA_B;
	output [9:0]	hcount;
	output [9:0] 	vcount;
	reg [9:0] hcount = 0;
	reg [9:0] vcount = 0;
   reg	hblank = 0;
	reg	vblank = 0;
	reg	vs = 1;
	reg	hs = 1;
	wire	hsyncon;
	wire	hsyncoff;
	wire	hreset;
	wire	hblankon;
	wire	next_hblank;
	wire	next_vblank;
	wire [7:0] pixel;


		// horizontal: 799 pixels total
		// display 640 pixels per line
		assign hblankon = (hcount == 639);    
		assign hsyncon = (hcount == 655);
		assign hsyncoff = (hcount == 751);
		assign hreset = (hcount == 799);

		// vertical: 523 lines total
		// display 480 lines
		wire vsyncon,vsyncoff,vreset,vblankon;
		assign vblankon = hreset & (vcount == 479);    
		assign vsyncon = hreset & (vcount == 489);
		assign vsyncoff = hreset & (vcount == 491);
		assign vreset = hreset & (vcount == 524);


		// sync and blanking
		assign next_hblank = hreset ? 0 : hblankon ? 1 : hblank;
		assign next_vblank = vreset ? 0 : vblankon ? 1 : vblank;
  	
		always @(posedge clk) 
		begin
			hcount <= hreset ? 0 : hcount + 1;
			hblank <= next_hblank;
			hs <= hsyncon ? 0 : hsyncoff ? 1 : hs;  // active low
			vcount <= hreset ? (vreset ? 0 : vcount + 1) : vcount;
			vblank <= next_vblank;
			vs <= vsyncon ? 0 : vsyncoff ? 1 : vs;  // active low
		end
	assign pixel = final_pixel;
	assign VGA_R = pixel[7:5];
	assign VGA_G = pixel[4:2];
	assign VGA_B = pixel[1:0];
	assign vsync = ~vs;
	assign hsync = ~hs;	
endmodule
