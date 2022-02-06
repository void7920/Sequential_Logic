`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 18:47:01
// Design Name: JK FlipFlop Behavioral
// Module Name: JK_Flipflop_Behavioral
// Project Name: 
// Target Devices: 
// Tool Versions: Vivado 2021.2
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module JK_Flipflop_Behavioral(
    q,          // q
    q_,         // q bar
    clk,        // clock
    pre_n,      // preset bar
    clr_n,      // clear bar
    j,          // j
    k           // k
    );
    
    output reg q;
    output q_;
    input clk;
    input pre_n;
    input clr_n;
    input j;
    input k;
    
    assign q_ = ~q;
    
    always@(posedge clk, negedge pre_n, negedge clr_n)
    begin
        if(!pre_n)
            q <= 1'b1;
            
        else if(!clr_n)
            q <= 1'b0;
            
        else
        begin
            case({j, k})
                2'b00: q <= q;
                2'b01: q <= 1'b0;
                2'b10: q <= 1'b1;
                2'b11: q <= ~q;
            endcase
        end
    end
endmodule
