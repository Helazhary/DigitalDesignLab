`timescale 1ns / 1ps

module Synchronizer(

input clk, sig, output sig1
    );
    
    wire META;
    
    DFlipFlop DFF1(.clk(clk), .d(sig), .q(META));
    
    DFlipFlop DFF2(.clk(clk), .d(META), .q(sig1));
    
endmodule
