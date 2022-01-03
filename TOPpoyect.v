`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 09:16:42 AM
// Design Name: 
// Module Name: TOPpoyect
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


module TOP(A,B,done, start,reset,clk,C, erroren);

input [3:0] A; //input
input[3:0] B;  // input
output [15:0] C; // output
output erroren; // mensaje de error

wire [15:0]C;
output done;
input reset, start,clk; 
wire multien,sumen,Consten,counten, erroren; // enablers
wire [3:0] count;

FSM FSM(.clk(clk), .reset(reset), .done(done), .start(start), .multien(multien), .sumen(sumen), .Consten(Consten),
.A(A),.B(B), .count(count), .counten(counten),.erroren(erroren)); // FSM

Datapath Datapath(.multien(multien), .sumen(sumen), .Consten(Consten), // Datapath
.A(A),.B(B), .count(count), .counten(counten), .C(C), .clk(clk), .reset(reset));
endmodule
