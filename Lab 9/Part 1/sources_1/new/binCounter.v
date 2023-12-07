`timescale 1ns / 1ps

module binCounter#(parameter x=3, n=6)(input clk, rst, en, output reg [x-1:0] count);
always @(posedge clk , posedge rst) begin
if(rst==1) begin
count<=0;
end else if(en==1)begin
if(count==n-1)begin
count<=0;
end else begin
count<=count+1;
end
end else begin
count <= count;
end
end
endmodule
