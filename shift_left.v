`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    01:48:35 11/24/2017 
// Design Name: 
// Module Name:    shift_left 
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
module shift(input_shift,shift_amount,type, output_shift);
input [31:0] input_shift;
input [4:0] shift_amount;
input [1:0] type;
output [31:0] output_shift;
reg [31:0] output_shift = 32'b0;

always @* begin
	if(type == 0) begin
		case(shift_amount)
			5'b00001: output_shift = input_shift << 1;
			5'b00010: output_shift = input_shift << 2;
			5'b00011: output_shift = input_shift << 3;
			5'b00100: output_shift = input_shift << 4;
			5'b00101: output_shift = input_shift << 5;
			5'b00110: output_shift = input_shift << 6;
			5'b00111: output_shift = input_shift << 7;
			5'b01000: output_shift = input_shift << 8;
			5'b01001: output_shift = input_shift << 9;
			5'b01010: output_shift = input_shift << 10;
			5'b01011: output_shift = input_shift << 11;
			5'b01100: output_shift = input_shift << 12;
			5'b01101: output_shift = input_shift << 13;
			5'b01110: output_shift = input_shift << 14;
			5'b01111: output_shift = input_shift << 15;
			5'b10000: output_shift = input_shift << 16;
			5'b10001: output_shift = input_shift << 17;
			5'b10010: output_shift = input_shift << 18;
			5'b10011: output_shift = input_shift << 19;
			5'b10100: output_shift = input_shift << 20;
			5'b10101: output_shift = input_shift << 21;
			5'b10110: output_shift = input_shift << 22;
			5'b10111: output_shift = input_shift << 23;
			5'b11000: output_shift = input_shift << 24;
			5'b11001: output_shift = input_shift << 25;
			5'b11010: output_shift = input_shift << 26;
			5'b11011: output_shift = input_shift << 27;
			5'b11100: output_shift = input_shift << 28;
			5'b11101: output_shift = input_shift << 29;
			5'b11110: output_shift = input_shift << 30;
			5'b11111: output_shift = input_shift << 31;
		endcase
	end
	else begin
		case(shift_amount) 
			5'b00001: output_shift = input_shift >> 1;
			5'b00010: output_shift = input_shift >> 2;
			5'b00011: output_shift = input_shift >> 3;
			5'b00100: output_shift = input_shift >> 4;
			5'b00101: output_shift = input_shift >> 5;
			5'b00110: output_shift = input_shift >> 6;
			5'b00111: output_shift = input_shift >> 7;
			5'b01000: output_shift = input_shift >> 8;
			5'b01001: output_shift = input_shift >> 9;
			5'b01010: output_shift = input_shift >> 10;
			5'b01011: output_shift = input_shift >> 11;
			5'b01100: output_shift = input_shift >> 12;
			5'b01101: output_shift = input_shift >> 13;
			5'b01110: output_shift = input_shift >> 14;
			5'b01111: output_shift = input_shift >> 15;
			5'b10000: output_shift = input_shift >> 16;
			5'b10001: output_shift = input_shift >> 17;
			5'b10010: output_shift = input_shift >> 18;
			5'b10011: output_shift = input_shift >> 19;
			5'b10100: output_shift = input_shift >> 20;
			5'b10101: output_shift = input_shift >> 21;
			5'b10110: output_shift = input_shift >> 22;
			5'b10111: output_shift = input_shift >> 23;
			5'b11000: output_shift = input_shift >> 24;
			5'b11001: output_shift = input_shift >> 25;
			5'b11010: output_shift = input_shift >> 26;
			5'b11011: output_shift = input_shift >> 27;
			5'b11100: output_shift = input_shift >> 28;
			5'b11101: output_shift = input_shift >> 29;
			5'b11110: output_shift = input_shift >> 30;
			5'b11111: output_shift = input_shift >> 31;
		endcase
	
	end
end

endmodule
