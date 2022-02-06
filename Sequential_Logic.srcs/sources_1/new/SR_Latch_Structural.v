`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 17:43:38
// Design Name: SR Latch Structural
// Module Name: SR_Latch_Structural
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


module SR_Latch_Structural(
    q,          // q
    q_,         // q bar
    en,         // enable
    pre_n,      // preset bar
    clr_n,      // clear bar
    s,          // set
    r           // reset
    );
    
    output q;
    output q_;
    input en;
    input pre_n;
    input clr_n;
    input s;
    input r;
    
    wire nands, nandr;
    
    nand(nands, s, en);
    nand(nandr, r, en);
    nand(q, nands, q_, pre_n);
    nand(q_, nandr, q, clr_n);
endmodule
