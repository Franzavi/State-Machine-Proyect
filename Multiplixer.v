`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 05:03:19 PM
// Design Name: 
// Module Name: Multiplixer
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


module SumFinal(D,F,G,C,clk);
    input[15:0] D, F,G;
    input clk;
    output reg[15:0]C =0;
    always@(posedge clk)begin
    //if(erren)
    //C <=0;
    //else
    C <= D + F + G;
    end
endmodule
