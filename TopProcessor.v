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
	 output LED,
	output vsync,
	output hsync,
	output [2:0] VGA_R,
	output [2:0] VGA_G,
	output [1:0] VGA_B,
	inout PS2DAT,
	inout PS2CLK
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
		wire clk50M;
			
		 //Keyboard
	 wire	[7:0]	received_data;
	 wire		 	received_data_en;
	 wire nc;
	 wire [5:0] output_key;
	 wire write_enable;
	
	 
	 
	 SingleCycleARM arm (
			.CLK(clk50M),
			.reset(reset),
			.PC(PC),
			.Instr(Instr),
			.MemWrite(MemWrite),
			.ALUResult(DataAdr),
			.WriteData(WriteData),
			.ReadData(ReadData));
			
	 Instruction_Memory imem(
		.a(PC),
		.CLK(clk50M),
		.WriteEnable(write_enable),//KELVIN
		.keyboard(output_key),//KELVIN
		//.WriteEnable(1),//KELVIN
		//.keyboard(output_key),
		//.keyboard(6'b100010),//KELVIN
		
		.rd(Instr));
	
	Clk_50MHz fd50M(
  		.CLK(CLK),
		.CLKOUT(clk50M));

	
	 Data_Memory dmem(
		.CLK(clk50M),
		.WE(MemWrite),
		.a(DataAdr),
		.clkv(VCLK),
		.av(VideoAdr),
		.WD(WriteData),
		.Rd(ReadData),
		.Rdv(VideoData));
		
	ClkDiv_25MHz vgaclk(
		.CLK(CLK),
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
		//.data(1));
		

	PS2_Controller ps2controller(// Inputs
		.CLOCK_50(clk50M),
		.reset(0),
		.the_command(0),
		.send_command(0),

		// Bidirectionals
		.PS2_CLK(PS2CLK),					// PS2 Clock
		.PS2_DAT(PS2DAT),					// PS2 Data

		// Outputs
		.command_was_sent(nc),
		.error_communication_timed_out(nc),

		.received_data(received_data),
		.received_data_en(received_data_en)			// If 1 - new data has been received)

	);

	Keyboard_input kb(
		.clk(clk50M),
		.received_data(received_data), 
		.received_data_en(received_data_en), 
		.output_key(output_key),
		.write_enable(write_enable),
		.LED(LED),
		.pc(PC)
	);
	
	//End keyboard
endmodule
