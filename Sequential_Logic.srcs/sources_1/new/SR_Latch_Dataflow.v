`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 17:43:38
// Design Name: SR Latch Dataflow
// Module Name: SR_Latch_Dataflow
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


module SR_Latch_Dataflow(
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
    
    assign q = ~(q_ & ~(s & en) & pre_n);
    assign q_ = ~(q & ~(r & en) & clr_n);
endmodule
