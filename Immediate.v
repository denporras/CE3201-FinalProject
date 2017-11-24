`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:40:16 11/23/2017 
// Design Name: 
// Module Name:    Immediate 
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
module Immediate(
    input [23:0] immediate_24,
	 input [1:0] immediate_sel,
    output [31:0] out_immediate
    );
	 
	 wire [31:0] out_immediate;
	 wire [31:0] imme_b;
	 wire [31:0] imme_mem;
	 wire [31:0] imme_reg;
	 wire [31:0] branch_addr;
	 
	 SignExtend_24 signImmExt_24(
		.immediate_24(immediate_24),
		.immediate_32(imme_b));
		
	 Shift_2 shi_2(
		.in_data(imme_b),
		.out_data(branch_addr));
	 
	 Zero_Extend_12 zero_12(
		.immediate_12(immediate_24[11:0]),
		.immediate_Zero_32_mem(imme_mem));
	 
	 Zero_Extend_8 zero_8(
		 .immediate_8(immediate_24[7:0]),
		 .immediate_Zero_32(imme_reg));
	 
	 MUX_3 mux_imme(
		.data_1(imme_reg),
		.data_2(imme_mem),
		.data_3(branch_addr),
		.sel(immediate_sel),
		.out_data(out_immediate));
	 
	 
	 
	 
endmodule
