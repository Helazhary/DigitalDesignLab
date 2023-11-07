`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 03:48:51 PM
// Design Name: 
// Module Name: rca_8
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


module rca_8(
input [7:0] a, b, 
input c,
output [7:0] s,
output cout
    );
    
    wire [6:0] w;
    
     genvar i;

     full_adder_1 fa1 (
     .a(a[0]),
     .b(b[0]),
     .c(c),
     .s(s[0]),
     .cout(w[0])
     );
     
     generate 

     
     for (i = 1; i < 7; i=1 + i) begin
     
     full_adder_1 fai (
     .a(a[i]),
     .b(b[i]),
     .c(w[i-1]),
     .s(s[i]),
     .cout(w[i])
     );
     end

endgenerate 

     full_adder_1 fa8 (
     .a(a[7]),
     .b(b[7]),
     .c(w[6]),
     .s(s[7]),
     .cout(cout)
     );
     
endmodule
