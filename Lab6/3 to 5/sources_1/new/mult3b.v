`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/07/2023 01:33:04 PM
// Design Name: 
// Module Name: mult3b
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


module mult3b(
input [2:0] a, b,
output [5:0] p
    );
    wire [7:0] andout; 
    wire [4:0] couts;
    wire [1:0] addres;
    
    and(p[0], a[0],b[0]);
    and(andout[0],a[1],b[0]);
    and(andout[1],a[0],b[1]);
    and(andout[2],a[2],b[0]);
    and(andout[3],a[1],b[1]);
    and(andout[4],a[2],b[1]);
    and(andout[5],a[0],b[2]);
    and(andout[6],a[1],b[2]);
    and(andout[7],a[2],b[2]);
    
     full_adder_1 
             fa1(.a(andout[0]),.b(andout[1]),.c(1'b0),.s(p[1]),.cout(couts[0])),
             fa2(.a(andout[2]),.b(andout[3]),.c(couts[0]),.s(addres[0]),.cout(couts[1])),
             fa3(.a(1'b0),.b(andout[4]),.c(couts[1]),.s(addres[1]),.cout(couts[2])),
             fa4(.a(addres[0]),.b(andout[5]),.c(1'b0),.s(p[2]),.cout(couts[3])),
             fa5(.a(addres[1]),.b(andout[6]),.c(couts[3]),.s(p[3]),.cout(couts[4])),
             fa6(.a(couts[2]),.b(andout[7]),.c(couts[4]),.s(p[4]),.cout(p[5]));
            
endmodule


