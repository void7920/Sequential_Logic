`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 21:58:11
// Design Name: D Latch Structural
// Module Name: D_Latch_Structural
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


module D_Latch_Structural(
    q,          // q
    q_,         // q bar
    clk,        // clock
    pre_n,      // preset bar
    clr_n,      // clear bar
    d           // d
    );
    
    output q;
    output q_;
    input clk;
    input pre_n;
    input clr_n;
    input d;
    
    wire n1, n2;
    
    nand(n1, d, clk);
    nand(n2, ~d, clk);
    nand(q, q_, n1, pre_n);
    nand(q_, q, n2, clr_n);
endmodule
