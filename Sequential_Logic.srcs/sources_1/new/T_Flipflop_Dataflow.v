`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 18:38:52
// Design Name: T_Flipflop Dataflow
// Module Name: T_Flipflop_Dataflow
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


module T_Flipflop_Dataflow(
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
    
    assign q = ~(q_ & ~(t & clk & q_) & pre_n);
    assign q_ = ~(q & ~(t & clk & q) & clr_n);
endmodule
