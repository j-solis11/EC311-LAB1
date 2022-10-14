`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/30/2022 01:14:38 PM
// Design Name: 
// Module Name: full_adder1
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


module fadder(
    input A,
    input B,
    input C_in,
    output C_out,
    output S
    );
    wire w0, w1, w2;
    
    hadder HA0(.A(A),
               .B(B),
               .C(w0),
               .S(w1));
    hadder HA1(.A(w1),
               .B(C_in),
               .C(w2),
               .S(S));
    or G0(C_out,w0,w2);
endmodule
