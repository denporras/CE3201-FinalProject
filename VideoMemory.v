`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:27:46 11/20/2017 
// Design Name: 
// Module Name:    VideoMemory 
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
module VideoMemory(
clk,	// clock
hcount,
vcount,
data_in, // data in
data_out, // data out
re, // read enable
we // write enable
); 

parameter DATA_WIDTH = 8;
parameter RAM_DEPTH = 524288;

//--------------Input Ports----------------------- 
input clk;
input [9:0]	hcount;
input [9:0] vcount;
input re;
input we;  
input [DATA_WIDTH-1:0] data_in;

//--------------Output Ports----------------------- 
output reg [DATA_WIDTH-1:0] data_out; 

//--------------Internal variables---------------- 
reg [DATA_WIDTH-1:0] mem [0:RAM_DEPTH-1];
reg [18:0] elem;
//--------------Code Starts Here------------------ 

// Memory Write Block 

// Write Operation : When we = 1
//assign data = (re && !we) ? data_out : 8'b0;

always @ (negedge clk)
begin : MEM_WRITE
	elem = hcount*799+vcount;
  if (we) begin
     mem[elem] <= data_in;
  end
end

// Memory Read Block 
// Read Operation : When re = 1
always @ (posedge clk)
begin : MEM_READ
  if (re) begin
	elem = hcount*799+vcount;
    data_out <= mem[elem]; 
  end else begin
    data_out <= 0; 
  end
end 
endmodule
