`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:49:38 PM
// Design Name: 
// Module Name: mult3bt
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


module mult3bt();

    reg [2:0] a,b;
    wire [5:0] p;
    wire [5:0] ref_p;
    wire  err;
 //   wire [2:0] w;
    
    mult3b testin_mult_3_b(.a(a),.b(b),.p(p));
    
    assign {ref_p} = a * b;
    
    assign err = (ref_p != p);
 
    integer i;
     initial begin
        for (i = 0; i < 64; i = i + 1) begin
            {a, b} = i;      #10
            
            if (err == 1) begin
                $display(" error at pos: ", i);
            end
            if(err == 0) begin
                $display(" success"); 
            end
        end
      end
endmodule
