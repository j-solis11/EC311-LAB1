`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2022 01:42:12 PM
// Design Name: 
// Module Name: 4bitadder
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


module add_sub_4_bit.v(
    input M,
    input [3:0]A_in,
    input [3:0]B_in,
    output [3:0]S_out,
    output V,
    output C4
    );
    wire [3:0]w0;
    wire c3;
    xor G0(w0[0],B_in[0],M);
    xor G1(w0[1],B_in[1],M);
    xor G2(w0[2],B_in[2],M);
    xor G3(w0[3],B_in[3],M);
    fbadder bita(.A_i(A_in), 
                 .B_i(w0), 
                 .c_i(M), 
                 .s_o(S_out), 
                 .c_o3(c3),
                 .c_o4(C4));
    xor G4(V,c3,C4);           
endmodule
