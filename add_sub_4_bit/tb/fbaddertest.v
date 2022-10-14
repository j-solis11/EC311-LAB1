`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/07/2022 12:54:17 PM
// Design Name: 
// Module Name: testbench_1
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


module fbaddertest(
    
    );
    
    reg [3:0]A, B; 
    reg C;
    wire [3:0]S; 
    wire C3, C4;
    
    fbadder f0(.A_i(A),.B_i(B),.c_i(C),.s_o(S),.c_o4(C4),.c_o3(C3));
    
    initial begin
       A = 0; B = 0; C = 0;
    end
    always begin
        #1 {A,B} = {A,B} + 1'b1;
        if ((A == 4'b1111) && (B == 4'b1111) && (C == 0)) begin
            #10 A = 0; #10 B = 0; #10 C = 1;
        end
        if ((A == 4'b1111) && (B == 4'b1111) && (C == 1)) #10 $finish;
    end
    
endmodule
