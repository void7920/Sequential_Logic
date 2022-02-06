`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 19:07:53
// Design Name: Testbench T Flipflop
// Module Name: Tb_T
// Project Name: 
// Target Devices: Simulation
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


module Tb_T();
    reg clk;
    reg pre_n;
    reg clr_n;
    reg t;
    
    wire qb, qb_;
    wire qd, qd_;
    wire qs, qs_;
    wire qdf, qdf_;
    
    T_Flipflop_Behavioral T_B(.q(qb), .q_(qb_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .t(t));
    T_Flipflop_Dataflow T_D(.q(qd), .q_(qd_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .t(t));
    T_Flipflop_Structural T_S(.q(qs), .q_(qs_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .t(t));
    T_Flipflop_with_D_FF T_DF(.q(qdf), .q_(qdf_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .t(t));
    
    always
        #20 clk = ~clk;
        
    initial
    begin
        clk = 1'b0;
        pre_n = 1'b0;
        clr_n = 1'b0;
        t = 1'b0;
    end
    
    initial
    begin
        #60 pre_n = 1'b1;
        #120 pre_n = 1'b0; clr_n = 1'b1;
        #60 pre_n = 1'b1; clr_n = 1'b1;
        #40 t = 1'b1;
        #40 t = 1'b0;
        #40 t = 1'b0;
        #40 t = 1'b1;
        #40 t = 1'b1;
        #40 t = 1'b0;
        #20 clr_n = 1'b0;
    end
endmodule
