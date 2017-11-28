`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   10:45:18 11/26/2017
// Design Name:   TopProcessor
// Module Name:   /home/daedgomez/Desarrollo/CommandLineInterface/pruebateclado.v
// Project Name:  CommandLineInterface
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TopProcessor
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pruebateclado;

	// Inputs
	reg CLK;
	reg reset;

	// Outputs
	wire vsync;
	wire hsync;
	wire [2:0] VGA_R;
	wire [2:0] VGA_G;
	wire [1:0] VGA_B;

	// Bidirs
	reg PS2DAT;
	reg PS2CLK;

	// Instantiate the Unit Under Test (UUT)
	TopProcessor uut (
		.CLK(CLK), 
		.reset(reset), 
		.vsync(vsync), 
		.hsync(hsync), 
		.VGA_R(VGA_R), 
		.VGA_G(VGA_G), 
		.VGA_B(VGA_B), 
		.PS2DAT(PS2DAT), 
		.PS2CLK(PS2CLK)
	);

initial begin
		reset = 0;
		
		// Initialize Inputs
		CLK = 0;

		// Wait 100 ns for global reset to finish
		#10;
        
		  PS2CLK = 1;
		  PS2DAT = 1;
		  
		  //START
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //1
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //2
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //3
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //4
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //5
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //6
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //7
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //8
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //PARITY
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //STOP
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		// Add stimulus here
		
		#40000
		
		//START
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //1
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //2
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //3
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //4
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //5
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //6
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //7
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //8
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //PARITY
		  #45000 PS2DAT = 0;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		  //STOP
		  #45000 PS2DAT = 1;
		  #5000 PS2CLK = 0;
		  #40000 PS2CLK = 1;
		

	end
	
	always
	begin
		#5 CLK = ~CLK;
   end

	
      
endmodule

