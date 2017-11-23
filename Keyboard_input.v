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
				8'h15: led1 = !led1;
				8'h1d: led2 = !led2;
				8'h24: led3 = !led3;
				8'h2d: led4 = !led4;
				8'h2c: led1 = !led1;
				8'h35: led2 = !led2;
				8'h3c: led3 = !led3;
				8'h43: led4 = !led4;
				8'h44: led1 = !led1;
				8'h4d: led2 = !led2;
				8'h1c: led3 = !led3;
				8'h1b: led4 = !led4;
				8'h23: led1 = !led1;
				8'h2b: led2 = !led2;
				8'h34: led3 = !led3;
				8'h33: led4 = !led4;
				8'h3b: led1 = !led1;
				8'h42: led2 = !led2;
				8'h4b: led3 = !led3;
				8'h1a: led4 = !led4;
				8'h22: led1 = !led1;
				8'h21: led2 = !led2;
				8'h2a: led3 = !led3;
				8'h32: led4 = !led4;
				8'h31: led1 = !led1;
				8'h3a: led2 = !led2;
				8'h66: begin led1 = !led1; led2 = !led2; led3 = !led3; led4 = !led4; end//Backspace
				8'h29: begin led1 = !led1; led2 = !led2; led3 = !led3; led4 = !led4; end //Spacebar
			 endcase
		 end
		end
	 end

endmodule
