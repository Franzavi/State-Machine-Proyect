`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2020 08:38:06 PM
// Design Name: 
// Module Name: Datapath
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


module Datapath(multien,sumen,Consten,counten,A,B,C,count,clk, reset);

input multien,sumen,Consten,counten, reset;
input [3:0]A;
input [3:0]B;

output [15:0]C;
wire[15:0]D,F;
output [3:0] count;
input clk;

Multiplicador Multi(.A(A),.B(B),.C(D), .multien(multien), .reset(reset), .clk(clk)); //modulo multiplicador
Sumador Sum(.A(A),.B(B),.C(F), .sumen(sumen), .reset(reset), .clk(clk),.Consten(Consten)); //modulo sumador
counter counter (.clk(clk), .count(count), .counten(counten), .reset(reset)); //modulo contador

assign C = D+F; // suma el resultado final
endmodule
