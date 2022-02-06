`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Seok Hoon Choi
// 
// Create Date: 2022/02/06 21:58:11
// Design Name: D Latch Behavioral
// Module Name: D_Latch_Behavioral
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


module D_Latch_Behavioral(
    q,          // q
    q_,         // q bar
    clk,        // clock
    pre_n,      // preset bar
    clr_n,      // clear bar
    d           // d
    );
    
    output reg q;
    output q_;
    input clk;
    input pre_n;
    input clr_n;
    input d;
    
    always@(*)
    begin
        if(!pre_n)
            q = 1'b1;
        
        else if(!clr_n)
            q = 1'b0;
            
        else if(en)
            q = d;
    end
endmodule
