`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/06 18:58:51
// Design Name: 
// Module Name: JK_Flipflop_with_D_FF
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


module JK_Flipflop_with_D_FF(
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
    
    wor i;
    assign i = j & ~q;
    assign i = ~k & q;
    
    D_Flipflop_Behavioral D(.q(q), .q_(q_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(i));
endmodule
