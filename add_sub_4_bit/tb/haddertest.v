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


module haddertest(

    );
    reg A, B;
    wire C, S;
    
    hadder ha0(.A(A), .B(B), .C(C), .S(S));
    
    initial begin
        A = 0; B = 0; 
    end
    always begin
        #10 {A,B} = {A,B} + 1'b1;
        if ((A == 1'b1) && (B == 1'b1)) #10 $finish;
    end


endmodule
