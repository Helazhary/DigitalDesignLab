`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 03:53:54 PM
// Design Name: 
// Module Name: Mux4to1
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


module Mux4to1(
input [3:0]in,
input [1:0] sel,
output out)
;
wire [1:0] w;

Mux2to1(.in(in[1:0]),.sel(sel[0]),.out(w[0]));
Mux2to1(.in(in[3:2]),.sel(sel[0]),.out(w[1]));
Mux2to1(.in(w[1:0]),.sel(sel[1]),.out(out));
endmodule
