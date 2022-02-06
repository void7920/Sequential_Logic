`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 19:07:53
// Design Name: Testbench D flipflop
// Module Name: Tb_D
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


module Tb_D();
    reg clk;
    reg pre_n;
    reg clr_n;
    reg d;
    
    wire qb, qb_;
    wire qd, qd_;
    wire qs, qs_;
    wire qlb, qlb_;
    wire qld, qld_;
    wire qls, qls_;
    
    D_Flipflop_Behavioral D_B(.q(qb), .q_(qb_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(d));
    D_Flipflop_Dataflow D_D(.q(qd), .q_(qd_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(d));
    D_Flipflop_Structural D_S(.q(qs), .q_(qs_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(d));
    
    D_Latch_Behavioral DL_B(.q(qlb), .q_(qlb_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(d));
    D_Latch_Dataflow DL_D(.q(qld), .q_(qld_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(d));
    D_Latch_Structural DL_S(.q(qls), .q_(qls_), .clk(clk), .pre_n(pre_n), .clr_n(clr_n), .d(d));
    always
        #20 clk = ~clk;
    
    initial
    begin
        clk = 1'b0;
        pre_n = 1'b0;
        clr_n = 1'b0;
        d = 1'b0;
    end
    
    initial
    begin
        #60 pre_n = 1'b1;
        #120 pre_n = 1'b0; clr_n = 1'b1;
        #60 pre_n = 1'b1; clr_n = 1'b1;
        #20 d = 1'b1;
        #20 d = 1'b0;
        #20 d = 1'b0;
        #20 d = 1'b1;
        #20 d = 1'b1;
        #20 d = 1'b0;
        #20 clr_n = 1'b0;
    end
endmodule
