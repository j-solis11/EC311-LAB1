`timescale 1ns / 1ps 
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/12/2022 10:54:04 PM
// Design Name: 
// Module Name: addertest
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


module muxtest(
    );
    reg [7:0] J_i, K_i, L_i, M_i;
    reg [1:0] S_i;
    wire [7:0] Y_o;
    
    mux m0(.S_i(S_i),.J_i(J_i),.K_i(K_i),.L_i(L_i),.M_i(M_i),.Y_o(Y_o));
    
    initial begin
        S_i = 0; J_i = 0; K_i = 0; L_i = 0; M_i = 0;
    end
    always begin
        #1 {J_i,K_i,L_i,M_i} = {J_i,K_i,L_i,M_i} + 1'b1;
        if ((J_i == 8'b11111111) && (K_i == 8'b11111111) && (L_i == 8'b11111111) && (M_i == 8'b11111111) && (S_i == 2'b00)) begin
            #1 S_i = S_i + 1'b1; #1 J_i = 0; #1 K_i = 0; #1 L_i = 0; #1 M_i = 0;
        end    
        if ((J_i == 8'b11111111) && (K_i == 8'b11111111) && (L_i == 8'b11111111) && (M_i == 8'b11111111) && (S_i == 2'b01)) begin
            #1 S_i = S_i + 1'b1; #1 J_i = 0; #1 K_i = 0; #1 L_i = 0; #1 M_i = 0;
        end  
        if ((J_i == 8'b11111111) && (K_i == 8'b11111111) && (L_i == 8'b11111111) && (M_i == 8'b11111111) && (S_i == 2'b10)) begin
            #1 S_i = S_i + 1'b1; #1 J_i = 0; #1 K_i = 0; #1 L_i = 0; #1 M_i = 0;
        end    
        if ((J_i == 8'b11111111) && (K_i == 8'b11111111) && (L_i == 8'b11111111) && (M_i == 8'b11111111) && (S_i == 2'b11)) begin
            #1 S_i = S_i + 1'b1; #1 J_i = 0; #1 K_i = 0; #1 L_i = 0; #1 M_i = 0;
        end  
    end   
endmodule
