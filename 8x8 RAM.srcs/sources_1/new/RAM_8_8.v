`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/04/2026 03:09:49 PM
// Design Name: 
// Module Name: RAM_8_8
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module RAM_8_8(
    input clk, rst, wr_enb, rd_enb,
    input [3:0] wr_addr, input [7:0] data_in,
    output reg [7:0] data_out
    );
endmodule
