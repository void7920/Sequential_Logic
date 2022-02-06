`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 18:17:09
// Design Name: D Flipflop Dataflow
// Module Name: D_Flipflop_Dataflow
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


module D_Flipflop_Dataflow(
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
        
    wire p, p_; // pre_n latch
    wire c, c_; // clr_n latch
    
    assign p = ~(pre_n & c & p_);
    assign p_ = ~(clk & clr_n & p);
    assign c = ~(clr_n & d & c_);
    assign c_ = ~(clk & c & p_);
    
    assign q = ~(pre_n & p_ & q_);
    assign q_ = ~(clr_n & c_ & q);    
endmodule
