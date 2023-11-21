`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/12/2023 03:05:22 PM
// Design Name: 
// Module Name: binCounter
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


module binCounter #(parameter x = 3, n = 6)(
input clk, rst, en,
output [x - 1:0] count
    );
    reg [x - 1:0] count;
    always @ (posedge clk or posedge rst) begin
    
    if (rst)
        count <= 0;
        
    else if (en) begin
    
        if (count == n-1)
            count <=0;
            
        else
            count <= count + 1;
        end
        
    end
     
endmodule
