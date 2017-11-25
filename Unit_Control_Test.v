`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:15:36 11/24/2017
// Design Name:   Control_Unit
// Module Name:   /home/dennis/Documentos/CommandLineInterface/Unit_Control_Test.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Control_Unit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Unit_Control_Test;

	// Inputs
	reg CLK;
	reg reset;
	reg [31:12] Instr;
	reg [3:0] ALUFlags;
	reg [1:0] RegSrc;

	// Outputs
	wire RegWrite;
	wire [1:0] ImmSrc;
	wire ALUSrc;
	wire [1:0] ALUControl;
	wire MemWrite;
	wire MemtoReg;
	wire PCSrc;

	// Instantiate the Unit Under Test (UUT)
	Control_Unit uut (
		.CLK(CLK), 
		.reset(reset), 
		.Instr(Instr), 
		.ALUFlags(ALUFlags), 
		.RegSrc(RegSrc), 
		.RegWrite(RegWrite), 
		.ImmSrc(ImmSrc), 
		.ALUSrc(ALUSrc), 
		.ALUControl(ALUControl), 
		.MemWrite(MemWrite), 
		.MemtoReg(MemtoReg), 
		.PCSrc(PCSrc)
	);

	initial begin
		// Initialize Inputs
		CLK = 0;
		reset = 0;
		Instr = 0;
		ALUFlags = 0;
		RegSrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

