`timescale 1ns / 1ps


module Q3-a(
input  [2:1]x,
input s,
output [2:1]y
    );
    Mux2to1 MUX_0(.in(x), .sel(s), .out(y[1]));
    Mux2to1 MUX_1(.in(x[1:2]), .sel(2), .out(y[2]));
    
endmodule
