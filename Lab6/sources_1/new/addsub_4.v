`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 05:16:54 PM
// Design Name: 
// Module Name: addsub_4
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


module addsub_4(
input [3:0] a, b, input AS, output [3:0] s, output cout
    );
    
    wire [3:0]b_;
    xor(b_[0],b[0],AS);//b[0] = b[0] ^ AS
    xor(b_[1],b[1],AS);
    xor(b_[2],b[2],AS);
    xor(b_[3],b[3],AS);
    
    rca_4(.a(a),.b(b_),.c(AS),.s(s),.cout(cout));
    
endmodule
