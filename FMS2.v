`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/22/2020 09:21:48 AM
// Design Name: 
// Module Name: FMS2
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


module FSM(clk, reset, done, start, multien,sumen,Consten, A,B,count,counten, erroren);

input clk, reset, start;
input [3:0]A;
input [3:0]B;

output multien, done,sumen,Consten,counten,erroren;
input [3:0] count;

parameter init = 0;
parameter counter =1;
parameter error = 2;
parameter Control =3;
parameter sum =4;
parameter multi =5;
parameter const =6;

reg [2:0]state, nstate;
reg counten, done,multien,sumen,Consten, erroren;

always@(posedge clk)begin
    if(reset)begin
    state = init;
    end
    else begin
    state = nstate;    
    end
end

always@(*) begin
    done = 1;
    counten =0;
    multien =0;
    sumen =0;
    Consten = 0;
    erroren  =0;

    case(state)
    
        init: begin
            if(start) begin
                done =0;
                nstate = Control;
            end
            else begin
            nstate = init;
            end
        end
        
        counter: begin
            done = 0;
            counten = 1;
            if(count < 7) begin
            nstate = Control;
            end
            else begin
            nstate = init;
            end
        end
        
        Control: begin
        done =0;
        if ((A< 1) | (B< 1))begin
        nstate = error;
        end
        else if (A< B) begin
        nstate = multi;
        end
        else if (A== B) begin
        nstate = const;
        end
        else if (A > B) begin
        nstate = sum;
        end
        end  
        
        error: begin
        done =0;
        erroren =1;
        nstate = counter;
        end
        
        sum: begin
        done =0;
        sumen = 1;
        nstate = counter;
        end
        
        multi: begin
        done =0;
        multien =1;
        nstate = counter;
        end
        
        const: begin
        done =0;
        Consten =1;
        nstate = counter;
        end
        
        endcase
        end
endmodule
