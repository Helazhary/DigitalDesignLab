`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 03:34:51 PM
// Design Name: 
// Module Name: binConunterTest
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


module binConunterTest();

reg clk, rst, en;
wire [4:0] count;
binCounter #(.x(5),.n(20)) DUT (.clk(clk), .rst(rst), .en(en), .count(count));
initial begin
clk = 0;
forever #10 clk=~clk;
end
initial begin
en = 1;
rst=1;
#100
rst=0;
#100
en=0;
#100
en = 1;
end

endmodule
