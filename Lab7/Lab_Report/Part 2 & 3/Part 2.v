`timescale 1ns / 1ps

module counterStepUpDown #(parameter x = 3, n = 6)

(input clk, reset, upDown, input[1:0] step, output [x-1:0] count);
    reg [x-1:0] count;
    
    always @(posedge clk, posedge reset) begin
         if (reset == 1)
            count <= 0; 
        
         else if (count >= n - step & ~upDown)
             count <= 0; 
         
         else if (count == 0 & upDown)
            count <= n - step;
            
         else if (upDown)
             count <= count - step; 
             
         else if (~upDown)
            count <= count + step;
       
    end
endmodule
