`timescale 1ns / 1ps

module Q2(
input A, B,
input [1:0]S,
output Y
    );
    
    always @(*) begin    
        case (S)
            2'b00: Y = A & B;
            2'b01: Y = A | B;
            2'b10: Y =(~A & B) | (A & ~B);
            2'b11: Y = ~A;
        default: 
            Y = 0;
        endcase
    end
endmodule
