`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 09:11:38 AM
// Design Name: 
// Module Name: Sumador
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


module Sumador(A,B,C, sumen, reset, clk, Consten);
input [3:0]A,B;
input clk, sumen,reset, Consten;
output reg [15:0]C = 0;
always@(posedge clk) begin
    if(reset)begin
    C <= 0;
    end
    else if(sumen)begin
    C <= C + A + B;
    end
    
    else if(Consten)begin
    C <= C+5;
    end
    else begin
    C <= C;
    end
end
endmodule
