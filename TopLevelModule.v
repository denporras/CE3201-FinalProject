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
	 
	 
	 MUX_2 M_Sel_PC(
		.SEL(PCSrc),
		.IN_0(PCplus4),
		.IN_1(WriteResult),
		.DAT_OUT(_PC));
	
	 PC_Register PC_r(
		._PC(_PC),
		.CLK(CLK),
		.PC(PC));
	
	 sp_ram_rw_instruction instruction_memory(
		.clk(CLK),
		.address(PC),
		.data_in(2),//SEÑAL DE KEL
		.data_out(instruction),
		.re(1),
		.we(0)//SEÑAL DE KEL
		); 
		
	 Add adder_pc_4(
		.OperA(4),
		.OperB(PC),
		.Result(PCplus4));
	 
	 Add adder_pc_8(
		.OperA(4),
		.OperB(PCplus4),
		.Result(PCplus8));
	
	 MUX_2 M_Reg_1(//cambiar
		.SEL(RegSrc[0]),
		.IN_0(instruction[19:16]),
		.IN_1(15),
		.DAT_OUT(A1));
	 
	 MUX_2 M_Reg_2(//cambiar
		.SEL(RegSrc[1]),
		.IN_0(instruction[3:0]),
		.IN_1(instruction[15:12]),
		.DAT_OUT(A2));
	
	 RegiterFile bank_register(
		.A1(A1),
		.A2(A2),
		.A3(instruction[15:12]),
		.WD3(RegWrite),
		.R15(PCplus8),
		.WE3(WriteResult),
		.RD1(RD1),
		.RD2(RD2),
		.CLK(CLK));
		
	
	 Immediate imm (
		.immediate_24(instruction[23:0]),
		.immediate_sel(ImmSrc),
		.out_immediate(Imme_31_BShift));
	 
	 MUX_2 ALU_Source_B (
		.SEL(RegSrc[1]),
		.IN_0(RD2),
		.IN_1(Imme_31_BShift),
		.DAT_OUT(SrcB));
		
	 ALU alu_arm (
		.OperA(RD1),
		.OperB(SrcB),
		.ALU_Code(ALU_Code),
		.Result(alu_out),
		.Zero(ALU_Flags[2]),
		.Negative(ALU_Flags[3]),
		.Carry(ALU_Flags[1]),
		.Overflow(ALU_Flags[0]));
		
	
	 sp_ram_rw data_memory(
		 .clk(CLK),
		.address(alu_out),
		.data_in(RD2),
		.data_out(ReadDataMem),
		.re(1),
		.we(0)
		); 
	
	 MUX_2 write_select (
		.SEL(MemtoReg),
		.IN_0(alu_out),
		.IN_1(ReadDataMem),
		.DAT_OUT(WriteResult));
	
	 
	 

endmodule
