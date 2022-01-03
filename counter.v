`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/10/2020 05:54:30 PM
// Design Name: 
// Module Name: counter
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

module counter(clk, count, counten, reset);
input clk;
output [3:0]count = 0;
input counten, reset;
reg [3:0]count;

always@(posedge clk)begin
    if(reset)begin
    count <=0;
    end
    else if(counten)begin
    count <= count+1;
    end
    else begin
    count <= count;
    end
    
end
endmodule
