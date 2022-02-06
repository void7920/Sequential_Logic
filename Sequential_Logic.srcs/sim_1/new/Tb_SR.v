`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 19:07:53
// Design Name: Testbench SR Latch
// Module Name: Tb_SR
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


module Tb_SR();
    reg en;
    reg pre_n;
    reg clr_n;
    reg s;
    reg r;
    
    wire qb, qb_;
    wire qd, qd_;
    wire qs, qs_;
    
    SR_Latch_Behavioral S_B(.q(qb), .q_(qb_), .en(en), .pre_n(pre_n), .clr_n(clr_n), .s(s), .r(r));
    SR_Latch_Dataflow S_D(.q(qd), .q_(qd_), .en(en), .pre_n(pre_n), .clr_n(clr_n), .s(s), .r(r));
    SR_Latch_Structural S_S(.q(qs), .q_(qs_), .en(en), .pre_n(pre_n), .clr_n(clr_n), .s(s), .r(r));
    
    initial
    begin
        en = 1'b0;
        pre_n = 1'b0;
        clr_n = 1'b0;
        s = 1'b0;
        r = 1'b0;
    end
    
    initial
    begin
        #60 pre_n = 1'b1;
        #120 pre_n = 1'b0; clr_n = 1'b1;
        #60 pre_n = 1'b1; clr_n = 1'b1;
        #20 s = 1'b1; r = 1'b0;
        #20 s = 1'b0; r = 1'b0;
        #20 en = 1'b1;
        #20 s = 1'b0; r = 1'b1;
        #20 s = 1'b1; r = 1'b1;
        #20 s = 1'b1; r = 1'b0;
        #20 en = 1'b0;
        #20 s = 1'b1; r = 1'b0;
        #20 s = 1'b1; r = 1'b1;
        #20 s = 1'b0; r = 1'b1;
        #20 s = 1'b0; r = 1'b0;
        #20 clr_n = 1'b0;
    end
endmodule
