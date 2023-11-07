`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 02:49:38 PM
// Design Name: 
// Module Name: rca_4t
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


module rca_4t(



    );
    reg [3:0] a,b;
    reg c;
    wire cout;
    wire [3:0] s;
    wire [3:0] ref_s;
    wire ref_cout, err;
 //   wire [2:0] w;
    
    rca_4 testin_rca_4(.a(a),.b(b),.c(c),.s(s),.cout(cout));
    
    assign {ref_cout, ref_s} = a + b + c;
    
    assign err = (ref_s != s) | (ref_cout != cout);
    
    integer i;
     initial begin
        for (i = 0; i < 512; i = i + 1) begin
            {a, b, c} <= i;      #10
            
            if (err == 1) begin
                $display(" error at pos: ", i);
            end
            if(err == 0) begin
                $display(" success"); 
            end
        end
      end
endmodule
