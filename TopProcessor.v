`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:26:40 11/24/2017 
// Design Name: 
// Module Name:    TopProcessor 
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
module TopProcessor(
    input CLK,
    input reset,
	output vsync,
	output hsync,
	output [2:0] VGA_R,
	output [2:0] VGA_G,
	output [1:0] VGA_B	
    );
	 
		wire [31:0] PC, Instr, ReadData, DataAdr, WriteData,VideoData, VideoAdr;
		wire MemWrite;
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
		wire [7:0] scene_pixel;
	 
	 
	 SingleCycleARM arm (
			.CLK(CLK),
			.reset(reset),
			.PC(PC),
			.Instr(Instr),
			.MemWrite(MemWrite),
			.ALUResult(DataAdr),
			.WriteData(WriteData),
			.ReadData(ReadData));
			
	 Instruction_Memory imem(
		.a(PC),
		.rd(Instr));
	
	 Data_Memory dmem(
		.CLK(CLK),
		.WE(MemWrite),
		.a(DataAdr),
		.clkv(VCLK),
		.av(VideoAdr),
		.WD(WriteData),
		.Rd(ReadData),
		.Rdv(VideoData));
		
	ClkDiv_25MHz vgaclk(
		.CLK(CLK),
		.RST(rst),
		.CLKOUT(VCLK));
		
		vga_controller controller(
		.clk(VCLK),
		.final_pixel(FINAL_PIXEL),
		.hcount(HCOUNT),
		.vcount(VCOUNT),
		.vsync(vsync),
		.hsync(hsync),
		.VGA_R(VGA_R),
		.VGA_G(VGA_G),
		.VGA_B(VGA_B));
		
		draw_symbol ds(
		.hcount(HCOUNT), 
		.vcount(VCOUNT),
		.clk(VCLK),
		.pixel(FINAL_PIXEL),
		.adr(VideoAdr),
		.data(VideoData));
	 


endmodule
