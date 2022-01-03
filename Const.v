`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 09:15:09 AM
// Design Name: 
// Module Name: Const
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


module Const(C, Conen, Conclr, clk);
input clk, Conen,Conclr;
output reg [15:0]C =0;
always@(posedge clk) begin
    if(Conclr)begin
    C <=0;
    end
    else if(Conen)begin
    C <= C+5;
    end
    else begin
    C <= C;
    end
end
endmodule
