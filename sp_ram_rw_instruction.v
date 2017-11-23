`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:01 11/23/2017 
// Design Name: 
// Module Name:    sp_ram_rw_instruction 
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
module sp_ram_rw_instruction(
  clk		,	// clock
address , // address Input
data_in    , // data in
data_out    , // data out
re      , // read enable
we       // write enable
); 

parameter DATA_WIDTH = 32;
parameter ADDR_WIDTH = 32;
parameter RAM_DEPTH = 16;

//--------------Input Ports----------------------- 
input clk;
input [ADDR_WIDTH-1:0] address;
input re;
input we;  
input [DATA_WIDTH-1:0] data_in;

//--------------Output Ports----------------------- 
output reg [DATA_WIDTH-1:0] data_out; 

//--------------Internal variables---------------- 
reg [DATA_WIDTH-1:0] mem [0:RAM_DEPTH-1];

//--------------Code Starts Here------------------ 

// Memory Write Block 

// Write Operation : When we = 1
//assign data = (re && !we) ? data_out : 8'b0;

always @ (negedge clk)
begin : MEM_WRITE
  if (we) begin
     mem[address] <= data_in;
  end
end

// Memory Read Block 
// Read Operation : When re = 1
always @ (posedge clk)
begin : MEM_READ
  if (re) begin
    data_out <= mem[address/4]; 
  end else begin
    data_out <= 0; 
  end
end 
endmodule