`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 09:05:03 AM
// Design Name: 
// Module Name: Multiplicador
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


module Multiplicador(A,B,C, multien, reset, clk);
input [3:0]A,B;
input clk,multien,reset;
output reg [15:0]C =0;
always@(posedge clk) begin
    if(reset)begin
    C <=0;
    end
    else if(multien)begin
    C <= C + (A*B);
    end
    else begin
    C <= C;
    end
end
endmodule
