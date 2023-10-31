`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 01:52:56 PM
// Design Name: 
// Module Name: sevenSegDec
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


module sevenSegDec(
input [3:0] num,
output [6:0] seg
    );
    assign seg[0] = (~num[3]&~num[2]&~num[1]&num[0]) | (~num[3]&num[2]&~num[1]&~num[0]) | (num[3]&num[2]&~num[1]&num[0]) | (num[3]&~num[2]&num[1]&num[0]);
    assign seg[1] = (~num[3]&num[2]&~num[1]&num[0]) | (num[2]&num[1]&~num[0]) | (num[3]&num[2]&~num[0]) | (num[3]&num[1]&num[0]);
    assign seg[2] = (~num[3]&~num[2]&num[1]&~num[0]) | (num[3]&num[2]&~num[0]) | (num[3]&num[2]&num[1]);
    assign seg[3] = (~num[3]&~num[2]&~num[1]&num[0]) | (~num[3]&num[2]&~num[1]&~num[0]) | (num[3]&~num[2]&num[1]&~num[0]) | (num[2]&num[1]&num[0]);
    assign seg[4] = (~num[3]&num[0]) | (~num[3]&num[2]&~num[1]) | (~num[2]&~num[1]&num[0]);
    assign seg[5] = (num[3]&num[2]&~num[1]&num[0]) | (~num[3]&~num[2]&num[1]) | (~num[3]&~num[2]&num[0]) | (~num[3]&num[1]&num[0]);
    assign seg[6] = (num[3]&num[2]&~num[1]&~num[0]) | (~num[3]&~num[2]&~num[1]);
endmodule
