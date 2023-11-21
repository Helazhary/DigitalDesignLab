`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2023 01:48:31 PM
// Design Name: 
// Module Name: digitalClock
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


module digitalClock(
input clk, rst, en,
output [0:6]seg,
output [3:0]an
    );
    
    wire [3:0] secten, minten;
    wire [2:0] secsix, minsix;
    wire Hz200;
    wire [1:0] andsel;
    wire [3:0] BCD;
        
    secMin SM(.clk(clk), .rst(rst), .en(en), .secten(secten), .minten(minten), .secsix(secsix), .minsix(minsix));
    
    clockDivider #(.n(250000)) CD(.clk(clk), .rst(rst), .clk_out(Hz200));
    
    binCounter #(.x(2), .n(4)) Counter2 (.clk(Hz200), .rst(rst), .en(en), .count(andsel));
    
    assign BCD = andsel == 2'b00 ? secten : andsel == 2'b01 ? {0, secsix} : andsel == 2'b10 ? minten : {0, minsix};
    
    sevenSegWEn SVNSG (.num(BCD), .en(en), .sel(andsel), .seg(seg), .an(an));
    
    
    
    
    
endmodule
