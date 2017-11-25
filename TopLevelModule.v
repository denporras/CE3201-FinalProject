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
			input CLK,
			output LED1,
			output LED2,
			output LED3,
			output LED4,
			inout PS2CLK,
			inout PS2DAT
    );
	 
	 wire PCSrc;
	 wire [1:0] RegSrc;
	 wire RegWrite;
	 wire [1:0] ImmSrc;
	 wire [1:0] ALU_Code;
	 wire [3:0] ALU_Flags;
	 wire MemtoReg;
	 wire readMemEnable;
	 wire writeMemEnable;
	 
	 wire [31:0] PCplus4;
	 wire [31:0] PCplus8;
	 wire [31:0] _PC;
	 wire [31:0] PC;
	 wire [31:0] WriteResult;
	 
	 wire CLK;
	 wire [31:0] instruction;
	 
	 wire [3:0] A1;
	 wire [3:0] A2;
	 
	 wire [31:0] RD1;
	 wire [31:0] RD2;
	 
	 wire [31:0] Imme_31_B;
	 wire [31:0] Imme_31_BShift;
	 
	 wire [31:0] SrcB;
	 wire [31:0] alu_out;
	 
	 wire [31:0] ReadDataMem;
	 //Keyboard
	 wire CLK_50;
	 wire	[7:0]	received_data;
	 wire		 	received_data_en;
	 wire nc;
	 
	 Clk_50MHz clk50(
		.CLK(CLK),
		.RST(0),
		.CLKOUT(CLK_50));
		
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
		.led1(LED1),
		.led2(LED2),
		.led3(LED3),
		.led4(LED4),
		.ps2clk(PS2CLK),
		.ps2data(PS2DAT)
	);
	
	//End keyboard
	 
	 
	 
	
	 
	 

endmodule
