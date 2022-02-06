`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 21:58:11
// Design Name: D Latch Dataflow
// Module Name: D_Latch_Dataflow
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


module D_Latch_Dataflow(
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
    
    assign q = ~(q_ & ~(d & clk) & pre_n);
    assign q = ~(q_ & ~(~(d & d) & clk) & clr_n);    
endmodule
