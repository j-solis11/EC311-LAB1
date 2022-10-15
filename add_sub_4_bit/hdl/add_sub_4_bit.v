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

module add_sub_4_bit # 
(
  parameter WIDTH = 4
)
(
  // The inputs 
  input wire [WIDTH-1:0]        A_i,
  input wire [WIDTH-1:0]        B_i,
  input wire                    M_i,

  // The outputs
  output wire                   V_o,
  output wire                   C_o,
  output wire [WIDTH-1:0]       S_o

);
    wire [3:0]w0;
    wire c3;
    xor G0(w0[0],B_i[0],M_i);
    xor G1(w0[1],B_i[1],M_i);
    xor G2(w0[2],B_i[2],M_i);
    xor G3(w0[3],B_i[3],M_i);
    fbadder bita(.A_i(A_i), 
                 .B_i(w0), 
                 .c_i(M_i), 
                 .s_o(S_o), 
                 .c_o3(c3),
                 .c_o4(C_o));
    xor G4(V_o,c3,C_o);           
endmodule
