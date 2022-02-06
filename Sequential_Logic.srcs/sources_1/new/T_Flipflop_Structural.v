`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/06 19:36:37
// Design Name: T Flipflop Strcutrual
// Module Name: T_Flipflop_Structural
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


module T_Flipflop_Structural(
    q,          // q
    q_,         // q bar
    clk,        // clock
    pre_n,      // preset bar
    clr_n,      // clear bar
    t           // t
    );
    
    output q;
    output q_;
    input clk;
    input pre_n;
    input clr_n;
    input t;
    
    wire w1, w2;
    
    nand(w1, t, clk, q_);
    nand(w2, t, clk, q);
    nand(q, q_, w1, pre_n);
    nand(q_, q, w2, clr_n);
endmodule
