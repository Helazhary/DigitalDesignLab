`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 02:42:01 PM
// Design Name: 
// Module Name: Mux2to1
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

module Mux2to1(
    input [1:0]in, input sel, 
    output out);
    
    assign out = sel ? in[1] : in[0];  
  
endmodule

