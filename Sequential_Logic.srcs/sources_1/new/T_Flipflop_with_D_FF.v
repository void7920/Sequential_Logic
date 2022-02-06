`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2022/02/06 18:56:25
// Design Name: 
// Module Name: T_Flipflop_with_D_FF
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


module T_Flipflop_with_D_FF(
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
    
    D_Flipflop_Behavioral D(.q(q), .q_(q_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(t^q));
endmodule
