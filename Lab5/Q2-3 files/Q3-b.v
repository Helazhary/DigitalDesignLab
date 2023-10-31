`timescale 1ns / 1ps

module Q3-b(
input  [2:1]x,
input s,
output [2:1]y
    );
    
    
always @ (*)

   begin
       case(s)
          0: y = x;
          1: y = x[1:2];
    default:
           y = 2'b00;
           
           
       
        endcase
     end
endmodule
