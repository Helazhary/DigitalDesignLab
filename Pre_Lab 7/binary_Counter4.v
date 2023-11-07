`timescale 1ns / 1ps


module binary_Counter4(
input clk, rst, cnt,
output [3:0] Q
    );
    
    reg [3:0] Q;
    
    always @ (posedge clk or negedge rst) begin
    
        if(rstn == 1'b0) Q <= 4'b0;
        else  Q <= Q + 4'b1;
        
    end
        
endmodule
