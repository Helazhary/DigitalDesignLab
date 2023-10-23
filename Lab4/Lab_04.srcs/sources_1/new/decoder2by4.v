`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 04:26:46 PM
// Design Name: 
// Module Name: decoder2by4
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


module decoder2by4(
input [1:0] in,
input enable,
output [3:0] out
    );
    
    wire [3:0] temp;
    
    assign temp[0] = ~(in[1] | in[0]);
    assign temp[1] = (~in[1] & in[0]);
    assign temp[2] = (in[1] & ~in[0]);
    assign temp[3] = (in[1] & in[0]);
    
    assign out = enable ? temp : 4'b0;
    
endmodule
