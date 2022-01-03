`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 03:04:13 PM
// Design Name: 
// Module Name: test2
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


module test2();
reg [3:0] A;
reg [3:0] B;
wire [15:0]C;
wire done;
reg reset, start,clk;
wire erroren;


TOP UUT (.A(A),.B(B),.done(done), .start(start),.reset(reset),.clk(clk), .C(C), .erroren(erroren));




initial begin

A = 2;
B = 1;

#1 clk=0;
reset = 0;
start =0;

#10 clk = !clk;
start  =1;
reset =1;

#10 clk = !clk;
reset = 0;

#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;



#10 clk = !clk;
#10 clk = !clk;



A = 4;
B = 4;

#10 clk = !clk;
#10 clk = !clk;

#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
A = 3;
B = 5;


#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;


#10 clk = !clk;
#10 clk = !clk;
A = 0;
B = 3;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;


#10 clk = !clk;
#10 clk = !clk;
A = 15;
B = 8;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
A = 2;
B = 2;

#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;

A = 8;
B = 1;

#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;

A = 7;
B = 9;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
reset =1;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;
#10 clk = !clk;


end
endmodule