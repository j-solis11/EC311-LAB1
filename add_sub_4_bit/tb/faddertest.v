`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/11/2022 11:00:51 PM
// Design Name: 
// Module Name: halfaddertest
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


module faddertest(

    );
    reg A, B, C;
    wire S_out, C_out;
    
    fadder fa0(.A(A), .B(B), .C_in(C), .S(S_out), .C_out(C_out));
    
    initial begin
        A = 0; B = 0; C = 0;
    end
    always begin
        #10 {A,B} = {A,B} + 1'b1;
        if ((A == 1'b1) && (B == 1'b1) && (C == 0)) begin
            #10 A = 0; #10 B = 0; #10 C = 1;
        end
        if ((A == 1'b1) && (B == 1'b1) && (C == 1)) #10 $finish; 
    end   
endmodule
