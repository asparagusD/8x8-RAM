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
    input clk, rst, wr_enb,
    input [3:0] wr_addr, input [7:0] data_in,
    input [3:0] rd_addr,
    output reg [7:0] data_out
    );
    
    // creating one internal memory
    reg [7:0] mem [7:0];
    integer i;
    
    // write logic and read logic
    
    always@(posedge clk or rst)
        begin
            if (rst)
                begin
                    for (i=0; i<7; i=i+1)
                        mem[i] <= 0;
                end
            else if (wr_enb)
                mem[wr_addr] <= data_in;
            else if (wr_enb == 0)
                data_out <= mem[rd_addr];    
        end
    
endmodule
