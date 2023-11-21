`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 05:47:39 PM
// Design Name: 
// Module Name: secMin
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


module secMin(
input clk, rst, en,
output [3:0] secten, minten, 
output [2:0] secsix, minsix
    );
    
    wire clk_d;
    
    clockDivider #(.n(50000000)) CD (.clk(clk), .rst(rst),.clk_out(clk_d));
    
    binCounter #(.x(4),.n(10)) ST (.clk(clk_d),.rst(rst),.en(en),.count(secten));
    binCounter #(.x(3),.n(6)) SS (.clk(clk_d),.rst(rst),.en(en & secten == 4'b1001),.count(secsix));
    binCounter #(.x(4),.n(10)) MT (.clk(clk_d),.rst(rst),.en(en & secsix == 3'b101 & secten == 4'b1001),.count(minten));
    binCounter #(.x(3),.n(6)) MS (.clk(clk_d),.rst(rst),.en(en & minten == 4'b1001 & secsix == 3'b101 & secten == 4'b1001),.count(minsix));
endmodule
