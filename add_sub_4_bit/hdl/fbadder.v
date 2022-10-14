`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2022 01:34:47 PM
// Design Name: 
// Module Name: bitadder2
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


module fbadder(
    input [3:0]A_i,
    input [3:0]B_i,
    input c_i,
    output [3:0]s_o,
    output c_o4, c_o3
    );
    wire c2, c1;
    fadder FA0(.A(A_i[0]),
               .B(B_i[0]),
               .C_in(c_i),
               .C_out(c1),
               .S(s_o[0]));
    fadder FA1(.A(A_i[1]),
               .B(B_i[1]),
               .C_in(c1),
               .C_out(c2),
               .S(s_o[1])); 
    fadder FA2(.A(A_i[2]),
               .B(B_i[2]),
               .C_in(c2),
               .C_out(c_o3),
               .S(s_o[2]));                 
    fadder FA3(.A(A_i[3]),
               .B(B_i[3]),
               .C_in(c_o3),
               .C_out(c_o4),
               .S(s_o[3]));  
endmodule
