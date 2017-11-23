`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:40:45 11/22/2017 
// Design Name: 
// Module Name:    Keyboard_input 
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
module Keyboard_input(received_data, received_data_en, led1,led2,led3,led4, clk,ps2clk,ps2data);
	 
input clk;
input	[7:0]	received_data;
input		 	received_data_en;
input ps2clk;
input ps2data;
output led1;
output led2;
output led3;
output led4;

reg led1;
reg led2;
reg led3;
reg led4;

reg [7:0]	last_data_received;
reg [7:0]	output_key;

initial begin
	led1 = 1;
	led2 = 1;
	led3 = 1;
	led4 = 1;
	last_data_received = 8'h00;
end

 always @(posedge clk)
	 begin
	 if(received_data_en == 1'b1) begin
		//led <= !led;
		if(received_data != 8'hf0) begin
			last_data_received = received_data;
		end
		if(received_data != last_data_received) begin
			 case(last_data_received)
				8'h15://Q 
				begin
					output_key = 5'b10001;
				end
				8'h1d://W
				begin
					output_key = 5'b10111;
				end
				8'h24://E
				begin
					output_key = 5'b00101;
				end
				8'h2d://R
				begin
					output_key = 5'b10010;
				end
				8'h2c://T
				begin
					output_key = 5'b10100;
				end
				8'h35://Y
				begin
					output_key = 5'b11001;
				end
				8'h3c://U
				begin
					output_key = 5'b10101;
				end
				8'h43://I
				begin
					output_key = 5'b01100;
				end
				8'h44://O
				begin
					output_key = 5'b01111;
				end
				8'h4d://P
				begin
					output_key = 5'b10000;
				end
				8'h1c://A
				begin
					output_key = 5'b00001;
				end
				8'h1b://S
				begin
					output_key = 5'b10011;
				end
				8'h23://D
				begin
					output_key = 5'b00100;
				end
				8'h2b://F
				begin
					output_key = 5'b00110;
				end
				8'h34://G
				begin
					output_key = 5'b00111;
				end
				8'h33://H
				begin
					output_key = 5'b01000;
				end
				8'h3b://J 
				begin
					output_key = 5'b01010;
				end
				8'h42://K
				begin
					output_key = 5'b01011;
				end
				8'h4b://L 
				begin
					output_key = 5'b01100;
				end
				8'h1a://Z
				begin
					output_key = 5'b11010;
				end
				8'h22://X
				begin
					output_key = 5'b11000;
				end
				8'h21://C
				begin
					output_key = 5'b00011;
				end
				8'h2a://V
				begin
					output_key = 5'b10110;
				end
				8'h32://B
				begin
					output_key = 5'b00010;
				end
				8'h31://N
				begin
					output_key = 5'b01110;
				end
				8'h3a://M
				begin
					output_key = 5'b01101;
				end
				8'h66://BACKSPACE
				begin
					output_key = 5'b11111;
				end
				8'h29://SPACEBAR
				begin
					output_key = 5'b00000;
				end
				8'h5a://ENTER
				begin
					output_key = 5'b11110;
				end
				
			 endcase
		 end
		end
	 end

endmodule
