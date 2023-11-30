`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 08:54:52 PM
// Design Name: 
// Module Name: locktb
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


module locktb(

    );
    reg clk, rst;
    reg [3:0] passin;
    wire out;
    wire [6:0] svnsgmnt;
    digitalLock DUT (clk, rst,  passin,   out, svnsgmnt);
    
    initial begin
 clk = 0;
 forever #25 clk=~clk;
 assign rst = 1'b0;
 
 assign passin =4'b1000;
 
 #50
 
 assign passin = 4'b0100;
 
 #50

assign passin = 4'b0010;

#50

assign passin = 4'b0001;

#50

assign passin = 4'b0000;
end


    
endmodule
