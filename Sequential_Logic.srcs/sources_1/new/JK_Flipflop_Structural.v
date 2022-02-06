`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 18:47:01
// Design Name: JK Flipflop Structural
// Module Name: JK_Flipflop_Structural
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


module JK_Flipflop_Structural(
    q,          // q
    q_,         // q bar
    clk,        // clock
    pre_n,      // preset bar
    clr_n,      // clear bar
    j,          // j
    k           // k
    );
    
    output q;
    output q_;
    input clk;
    input pre_n;
    input clr_n;
    input j;
    input k;
    
    wire q1, q1_;
    
    nand(q1, q1_, ~(j & q_ & ~clk), pre_n);
    nand(q1_, q1, ~(k & q & ~clk), clr_n);
    nand(q, q_, ~(q1 & clk), pre_n);
    nand(q_, q, ~(q1_ & clk), clr_n);
endmodule
