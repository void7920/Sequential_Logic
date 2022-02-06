`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 17:43:38
// Design Name: SR Latch Behavioral
// Module Name: SR_Latch_Behavioral
// Project Name: 
// Target Devices: 
// Tool Versions: Viavdo 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module SR_Latch_Behavioral(
    q,          // q
    q_,         // q bar
    en,         // enable
    pre_n,      // preset bar
    clr_n,      // clear bar
    s,          // set
    r           // reset
    );
    
    output reg q;
    output q_;
    input en;
    input pre_n;
    input clr_n;
    input s;
    input r;
    
    assign q_ = ~q;
    
    always@(posedge en)
    begin
        if(!pre_n)
        begin
            q = 1'b1;
        end
        
        else if(!clr_n)
        begin
            q = 1'b0;
        end
            
        else 
        begin
            casex({s, r})
                2'b00: q = q;
                2'b01: q = 1'b0;
                2'b10: q = 1'b1;
                2'b11: q = 1'bx;
            endcase
        end
    end
endmodule
