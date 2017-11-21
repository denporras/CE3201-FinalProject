`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:22:44 11/20/2017 
// Design Name: 
// Module Name:    TopLevelModule 
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
module TopLevelModule(
		/*clk, 
		rst,
		btnu,
		vsync,
		hsync,
		VGA_R,
		VGA_G,
		VGA_B,*/
		CLK_K,	
		PS2_CLK,	
		PS2_DATA,
		LED	
);

	//keyboard
	input CLK_K;		//board clock signal
	input PS2_CLK;		//keyboard clock signal
	input PS2_DATA;		//keyboard data signal
	output [7:0] LED;	//8 output LEDs
		
	/*input	clk; 
	input rst;
	input btnu;
	output	vsync;
	output	hsync;
	output [2:0] VGA_R;
	output [2:0] VGA_G;
	output [1:0] VGA_B;
	wire CLK;
	wire ADDRESS;
	wire DATA_IN;
	wire DATA_OUT;
	wire RE;
	wire WE;
	wire VCLK;
	wire [9:0] HCOUNT;
	wire [9:0] VCOUNT;
	wire [7:0] FINAL_PIXEL;
	wire [7:0] scene_pixel;*/
	
	
	
	Keyboard TestingKeyboard (
							.CLK(CLK_K),
							.PS2_CLK(PS2_CLK), 
							.PS2_DATA(PS2_DATA),
							.LED(LED)
							);
	
/*	
vga_controller controller(
	.clk(VCLK),
	.final_pixel(FINAL_PIXEL),
	.hcount(HCOUNT),
	.vcount(VCOUNT),
	.vsync(vsync),
	.hsync(hsync),
	.VGA_R(VGA_R),
	.VGA_G(VGA_G),
	.VGA_B(VGA_B)
);

ClkDiv_25MHz vgaclk(
			 .CLK(clk),
			 .RST(reset),
			 .CLKOUT(VCLK)
);

draw_scene scene(
			 .hcount(HCOUNT),
			 .vcount(VCOUNT),
			 .clk(VCLK),
			 .pixel(scene_pixel)
);

VideoMemory vm(
.clk(VCLK),	
.hcount(HCOUNT),
.vcount(VCOUNT),
.data_in(scene_pixel), 
.data_out(FINAL_PIXEL), 
.re(1), 
.we(1) 
); 
*/
/**
sp_ram_rw mem(
.clk(CLK),
.address(ADDRESS), 
.data_in(DATA_IN), 
.data_out(DATA_OUT),
.re(RE), 
.we(WE)        
);
*/	


endmodule
