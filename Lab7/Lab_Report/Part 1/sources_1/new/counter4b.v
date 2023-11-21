`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 04:43:53 PM
// Design Name: 
// Module Name: counter4b
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


module  counter4b(
input clk, rst, en,
output [3:0] count
    );
    
    wire clk_d;
    
    clockDivider #(.n(50000000)) CD (.clk(clk), .rst(rst),.clk_out(clk_d));
    
    
    binCounter #(.x(4),.n(10)) Counter (.clk(clk_d),.rst(rst),.en(en),.count(count));
    
endmodule
