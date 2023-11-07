`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:42:09 PM
// Design Name: 
// Module Name: rca_4
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


module rca_4(
input [3:0] a,
input [3:0] b,
input c,
output [3:0] s, output cout
    );
    
    wire [2:0] w;
    full_adder_1 add1(.a(a[0]),.b(b[0]),.c(c),.s(s[0]),.cout(w[0]));
    full_adder_1 add2(.a(a[1]),.b(b[1]),.c(w[0]),.s(s[1]),.cout(w[1]));
    full_adder_1 add3(.a(a[2]),.b(b[2]),.c(w[1]),.s(s[2]),.cout(w[2]));
    full_adder_1 add4(.a(a[3]),.b(b[3]),.c(w[2]),.s(s[3]),.cout(cout));
    
endmodule
