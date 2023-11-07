`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 04:41:14 PM
// Design Name: 
// Module Name: csa8
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


module csa8(
input [7:0] a,input [7:0] b, input c, output [7:0] s, output cout
    );
    
    wire [2:0] couts;
    wire [3:0] mux1, mux2;
    
    rca_4 rca1(.a(a[3:0]),.b(b[3:0]),.c(c),.s(s[3:0]),.cout(couts[0]));
    rca_4 rca2(.a(a[7:4]),.b(b[7:4]),.c(1'b0),.s(mux1),.cout(couts[2]));
    rca_4 rca3(.a(a[7:4]),.b(b[7:4]),.c(1'b1),.s(mux2),.cout(couts[4]));

    assign s[7:4] = couts[0]? mux2 : mux1;
    Mux2to1 MUX(.in({couts[2],couts[1]}), .sel(couts[0]),.out(cout));
    
endmodule
