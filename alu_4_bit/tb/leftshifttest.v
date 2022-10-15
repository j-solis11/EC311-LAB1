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


module leftshifttest(

    );
    reg [3:0] A_i, B_i;
    wire [7:0] Y_o;
    
    leftshift l0(.A_i(A_i),.B_i(B_i),.Y_o(Y_o));
    
    initial begin
        A_i = 0; B_i = 0;
    end
    always begin
        #2 {A_i,B_i} = {A_i,B_i} + 1'b1;
        if ((A_i == 4'b1111) && (B_i == 4'b1111)) #10 $finish; 
    end   
endmodule
