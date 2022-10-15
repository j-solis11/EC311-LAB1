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


module fbaddersubtest(

    );
    reg M;
    reg [3:0]A_in, B_in;
    wire [3:0]S_out;
    wire V,C4;
    
    add_sub_4_bit ba0(.M_i(M), .A_i(A_in), .B_i(B_in),.S_o(S_out),.V_o(V),.C_o(C4));
    
    initial begin
        A_in = 0; B_in = 0; M = 0;
    end
    always begin
        #1 {A_in,B_in} = {A_in,B_in} + 1'b1;
        if ((A_in == 4'b1111) && (B_in == 4'b1111) && (M == 0)) begin
            #1 A_in = 0; #10 B_in = 0; #10 M = 1;
        end
        if ((A_in == 4'b1111) && (B_in == 4'b1111) && (M == 1)) #1 $finish; 
    end   
endmodule
