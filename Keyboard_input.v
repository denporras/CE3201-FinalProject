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
module Keyboard_input(received_data, received_data_en, clk, output_key, write_enable,LED,pc);
	 
input clk;
input	[7:0]	received_data;
input		 	received_data_en;
input	[31:0]	pc;
output LED;

output write_enable;
output [5:0]	output_key;

reg write_enable;
reg [7:0]	last_data_received;
reg [5:0]	output_key;
reg LED;
reg flag;

initial begin
	last_data_received = 8'h00;
	LED = 1;
	output_key = 0;
	flag = 0;
end

 always @(posedge clk)
	 begin
	 
	 write_enable = 0;
	 if(flag == 1) begin
		output_key = 0;
		flag = 0;
	 end
	 
	 
	 if(received_data_en == 1'b1) begin
		//led <= !led;
		if(received_data != 8'hf0) begin
				last_data_received  =  received_data;
		end
				
			if(received_data != last_data_received) begin
				 case(last_data_received)
					8'h15://Q 
					begin
						output_key = 6'b100011;
						LED = !LED;
					end
					8'h1d://W
					begin
						output_key = 6'b101111;
					end
					8'h24://E
					begin
						output_key = 6'b001011;
						
					end
					8'h2d://R
					begin
						output_key = 6'b100101;
						
					end
					8'h2c://T
					begin
						output_key = 6'b101001;
						
					end
					8'h35://Y
					begin
						output_key = 6'b110011;
						
					end
					8'h3c://U
					begin
						output_key = 6'b101011;
						
					end
					8'h43://I
					begin
						output_key = 6'b010011;
						
					end
					8'h44://O
					begin
						output_key = 6'b011111;
						
					end
					8'h4d://P
					begin
						output_key = 6'b100001;
						
					end
					8'h1c://A
					begin
						output_key = 6'b000011;
						
					end
					8'h1b://S
					begin
						output_key = 6'b100111;
						
					end
					8'h23://D
					begin
						output_key = 6'b001001;
						
					end
					8'h2b://F
					begin
						output_key = 6'b001101;
						
					end
					8'h34://G
					begin
						output_key = 6'b001111;
						
					end
					8'h33://H
					begin
						output_key = 6'b010001;
						
					end
					8'h3b://J 
					begin
						output_key = 6'b010101;
						
					end
					8'h42://K
					begin
						output_key = 6'b010111;
						LED = !LED;
					end
					8'h4b://L 
					begin
						output_key = 6'b011001;
						
					end
					8'h1a://Z
					begin
						output_key = 6'b110101;
						
					end
					8'h22://X
					begin
						output_key = 6'b110001;
						
					end
					8'h21://C
					begin
						output_key = 6'b000111;
						
					end
					8'h2a://V
					begin
						
						output_key = 6'b101101;
						
					end
					8'h32://B
					begin
						output_key = 6'b000101;
						
					end
					8'h31://N
					begin
						output_key = 6'b011101;
						
					end
					8'h3a://M
					begin
						output_key = 6'b011011;
						
					end
					8'h66://BACKSPACE
					begin
						output_key = 6'b111111;
						
					end
					8'h29://SPACEBAR
					begin
						output_key = 6'b000001;
						
					end
					8'h5a://ENTER
					begin
						output_key = 6'b111101;
					end
					
				 endcase
			 end
		
		end
		
		if(pc == 8'h38) begin
			write_enable = 1;
			flag = 1;
		end
		
	 end

endmodule