`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2022 10:17:31 PM
// Design Name: 
// Module Name: mux
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


module mux(S_i,J_i,K_i,L_i,M_i,Y_o);   
    input [1:0]S_i;
    input [7:0]J_i,K_i,L_i,M_i;
    output reg [7:0]Y_o;
    always @(*) begin
        case(S_i)
            2'b00: Y_o = M_i[7:0];
            2'b01: Y_o = J_i[7:0];
            2'b10: Y_o = L_i[7:0];
            2'b11: Y_o = K_i[7:0];
        endcase
    end
    
endmodule
