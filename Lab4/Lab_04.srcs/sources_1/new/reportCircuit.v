`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/22/2023 01:02:37 PM
// Design Name: 
// Module Name: reportCircuit
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


module reportCircuit(
input [1:0]in,
input sel,
output [1:0]out
    );
    wire w;
    
    Mux2to1 MUX(.in(in[1:0]),.sel(sel),.out(w));
    and And(out[0],in[0],w);
    xor Xor(out[1],w,in[1]);
endmodule
