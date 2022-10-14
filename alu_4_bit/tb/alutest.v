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


module alutest(

    );
    reg [3:0] A_i, B_i;
    reg [1:0] S_i;
    wire [7:0] Y_o;
    
    alu_4_bit a0(.A_i(A_i),.B_i(B_i),.S_i(S_i),.Y_o(Y_o));
    
    initial begin
        A_i = 0; B_i = 0; S_i = 0;
    end
    always begin
        #1 {A_i,B_i} = {A_i,B_i} + 1'b1;
        if ((A_i == 4'b1111) && (B_i == 4'b1111) && (S_i == 2'b00)) begin
            #1 A_i = 0; #2 B_i = 0; #1 S_i = S_i + 1'b1;
        end
        if ((A_i == 4'b1111) && (B_i == 4'b1111) && (S_i == 2'b01)) begin
            #1 A_i = 0; #2 B_i = 0; #1 S_i = S_i + 1'b1;
        end
        if ((A_i == 4'b1111) && (B_i == 4'b1111) && (S_i == 2'b10)) begin
            #1 A_i = 0; #2 B_i = 0; #1 S_i = S_i + 1'b1;
        end
        if ((A_i == 4'b1111) && (B_i == 4'b1111) && (S_i == 2'b11)) #1 $finish; 
    end   
endmodule
