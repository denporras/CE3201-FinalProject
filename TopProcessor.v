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
    output wire [31:0] WriteData,
    output wire [31:0] DataAdr,
    output wire MemWrite
    );
	 
	 wire [31:0] PC, Instr, ReadData;
	 
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
		.CLK(CLK),
		.WriteEnable(write_enable),//KELVIN
		.keyboard(output_key),//KELVIN
		.rd(Instr));
	
	 Data_Memory dmem(
		.CLK(CLK),
		.WE(MemWrite),
		.a(DataAdr),
		.WD(WriteData),
		.Rd(ReadData));
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		 //Keyboard
	 wire	[7:0]	received_data;
	 wire		 	received_data_en;
	 wire nc;
	 wire [5:0] output_key;
	 wire write_enable;
	 
		
	PS2_Controller controller(// Inputs
		.CLOCK_50(CLK_50),
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
		.clk(CLK_50),
		.received_data(received_data), 
		.received_data_en(received_data_en), 
		.output_key(output_key),
		.write_enable(write_enable)
	);
	
	//End keyboard
	 


endmodule
