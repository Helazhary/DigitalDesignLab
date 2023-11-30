`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 04:22:46 PM
// Design Name: 
// Module Name: pushButtonDetector
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


module pushButtonDetector(
input clk, rst, in, output out
    );
    wire [1:0] temp;
    wire clkOut;
    
    clockDivider #(250000) CD (.clk(clk), .rst(rst), .clk_out(clkOut));
    
    debouncer DBNCR (.clk(clkOut), .rst(rst), .in(in),.out(temp[0]));
    
    prelabq2 SYNCH (.clk(clkOut), .sig(temp[0]), .sig1(temp[1]));
    
    RisingEdgeDetector EDGEDET (.clk(clkOut), .rst(rst), .w(temp[1]), .z(out));
    
endmodule
