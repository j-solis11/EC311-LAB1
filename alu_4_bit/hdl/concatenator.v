`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 12:06:43 AM
// Design Name: 
// Module Name: concatenator
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


module concatenator(
    input [3:0]A_i,
    input [3:0]B_i,
    output [7:0]Y_o
    );
    assign Y_o[3:0] = B_i;
    assign Y_o[7:4] = A_i;
endmodule
