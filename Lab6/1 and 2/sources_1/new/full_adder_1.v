`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:36:23 PM
// Design Name: 
// Module Name: full_adder_1
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


module full_adder_1(
input a,b,c,
output s, cout

    );
    
   assign s = (a&~b&~c)|(~a&~b&c)|(~a&b&~c)|(a&b&c);
   assign cout = (a&b)|(a&c)|(b&c);
   
endmodule
