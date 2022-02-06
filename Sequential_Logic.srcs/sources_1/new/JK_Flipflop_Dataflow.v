`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 18:47:01
// Design Name: JK Flipflop Dataflow
// Module Name: JK_Flipflop_Dataflow
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


module JK_Flipflop_Dataflow(
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
    
    assign q1 =  ~(q1_ & ~(j & q_ & ~clk) & pre_n); 
    assign q1_ = ~(q1 & ~(k & q & ~clk) & clr_n);
    
    assign q = ~(q_ & ~(q1 & clk) & pre_n);
    assign q_ = ~(q & ~(q1_ & clk) & clr_n);
    
//    SR_Latch_Dataflow Master(.q(q1), .q_(q1_), .en(clk), .pre_n(pre_n), .clr_n(clr_n), .s(j & q_), .r(k & q));
//    SR_Latch_Dataflow Slave(.q(q), .q_(q_), .en(~clk), .pre_n(pre_n), .clr_n(clr_n), .s(q1), .r(q1_));
endmodule
