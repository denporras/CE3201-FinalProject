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
module Keyboard_input(received_data, received_data_en, clk, output_key, write_enable);
	 
input clk;
input	[7:0]	received_data;
input		 	received_data_en;

output write_enable;
output [5:0]	output_key;

reg write_enable;
reg [7:0]	last_data_received;
reg [5:0]	output_key;


initial begin
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
					write_enable = 1;
					output_key = 6'b100011;
					write_enable = 0;
				end
				8'h1d://W
				begin
					write_enable = 1;
					output_key = 6'b101111;
					write_enable = 0;
				end
				8'h24://E
				begin
					write_enable = 1;
					output_key = 6'b001011;
					write_enable = 0;
				end
				8'h2d://R
				begin
					write_enable = 1;
					output_key = 6'b100101;
					write_enable = 0;
				end
				8'h2c://T
				begin
					write_enable = 1;
					output_key = 6'b101001;
					write_enable = 0;
				end
				8'h35://Y
				begin
					write_enable = 1;
					output_key = 6'b110011;
					write_enable = 0;
				end
				8'h3c://U
				begin
					write_enable = 1;
					output_key = 6'b101011;
					write_enable = 0;
				end
				8'h43://I
				begin
					write_enable = 1;
					output_key = 6'b011001;
					write_enable = 0;
				end
				8'h44://O
				begin
					write_enable = 1;
					output_key = 6'b011111;
					write_enable = 0;
				end
				8'h4d://P
				begin
					write_enable = 1;
					output_key = 6'b100001;
					write_enable = 0;
				end
				8'h1c://A
				begin
					write_enable = 1;
					output_key = 6'b000011;
					write_enable = 0;
				end
				8'h1b://S
				begin
					write_enable = 1;
					output_key = 6'b100111;
					write_enable = 0;
				end
				8'h23://D
				begin
					write_enable = 1;
					output_key = 6'b001001;
					write_enable = 0;
				end
				8'h2b://F
				begin
					write_enable = 1;
					output_key = 6'b001101;
					write_enable = 0;
				end
				8'h34://G
				begin
					write_enable = 1;
					output_key = 6'b001111;
					write_enable = 0;
				end
				8'h33://H
				begin
					write_enable = 1;
					output_key = 6'b010001;
					write_enable = 0;
				end
				8'h3b://J 
				begin
					write_enable = 1;
					output_key = 6'b010101;
					write_enable = 0;
				end
				8'h42://K
				begin
					write_enable = 1;
					output_key = 6'b010111;
					write_enable = 0;
				end
				8'h4b://L 
				begin
					write_enable = 1;
					output_key = 6'b011001;
					write_enable = 0;
				end
				8'h1a://Z
				begin
					write_enable = 1;
					output_key = 6'b110101;
					write_enable = 0;
				end
				8'h22://X
				begin
					write_enable = 1;
					output_key = 6'b110001;
					write_enable = 0;
				end
				8'h21://C
				begin
					write_enable = 1;
					output_key = 6'b000111;
					write_enable = 0;
				end
				8'h2a://V
				begin
					write_enable = 1;
					output_key = 6'b101101;
					write_enable = 0;
				end
				8'h32://B
				begin
					write_enable = 1;
					output_key = 6'b000101;
					write_enable = 0;
				end
				8'h31://N
				begin
					write_enable = 1;
					output_key = 6'b011101;
					write_enable = 0;
				end
				8'h3a://M
				begin
					write_enable = 1;
					output_key = 6'b011011;
					write_enable = 0;
				end
				8'h66://BACKSPACE
				begin
					write_enable = 1;
					output_key = 6'b111111;
					write_enable = 0;
				end
				8'h29://SPACEBAR
				begin
					write_enable = 1;
					output_key = 6'b000001;
					write_enable = 0;
				end
				8'h5a://ENTER
				begin
					write_enable = 1;
					output_key = 6'b111101;
					write_enable = 0;
				end
				
			 endcase
		 end
		 else
			 begin
				output_key = 6'b000000;
			 end
		end
	 end

endmodule