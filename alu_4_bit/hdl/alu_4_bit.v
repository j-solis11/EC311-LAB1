`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2022 12:05:15 AM
// Design Name: 
// Module Name: alu
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


module alu_4_bit(
    input [3:0]A_i,B_i,
    input [1:0]S_i,
    output [7:0]Y_o
    );
    wire [7:0]w0, w1, w2, w3, w4; 
    fbadder f0(.A_i(A_i),.B_i(B_i),.Y_o(w0));
    multiplier m0(.A_i(A_i),.B_i(B_i),.Y_o(w1));
    leftshift l0(.A_i(A_i),.B_i(B_i),.Y_o(w2));
    concatenator c0(.A_i(A_i),.B_i(B_i),.Y_o(w3));
    mux m1(.S_i(S_i),.J_i(w0),.K_i(w1),.L_i(w2),.M_i(w3),.Y_o(w4));
    assign Y_o = w4;
endmodule
