`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/31/2023 04:04:09 PM
// Design Name: 
// Module Name: rca_8t
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


module rca_8t(

    );

reg [7:0] a,b;
reg c;
wire [7:0] s;
wire cout;
wire [7:0] ref_s;
wire ref_cout, err;

    
    rca_8 testin_rca_8(.a(a),.b(b),.c(c),.s(s),.cout(cout));
    
    assign {ref_cout, ref_s} = a + b + c;
    
    assign err = (ref_s != s) | (ref_cout != cout);
    
    integer i;
     initial begin
        for (i = 0; i < 131072; i = i + 1) begin
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
