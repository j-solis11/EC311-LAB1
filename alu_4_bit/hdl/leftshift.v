`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 10:43:03 PM
// Design Name: 
// Module Name: leftshift
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


module leftshift(
    input [3:0]A_i,
    input [3:0]B_i,
    output [7:0]Y_o
    );
    assign Y_o = A_i << B_i;
endmodule
