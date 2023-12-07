`timescale 1ns / 1ps


module top(input clk, rst, output [7:0] w_data);
wire [5:0] count;
wire [3:0] c1, c2, c3;
wire c4, c5, c6;
wire [2:0] c7;
wire [7:0] data2,data1;
wire [7:0] A_data, B_data, B_input;
wire [7:0] ALUOut;
wire ZFlag;

ROM rom (.addr(count), .data_out({c1,c2,c3,c4,c5,c6,c7,data2,data1}));
binCounter #(.x(6),.n(64)) counter (.clk(clk), .rst(rst), .en(1'b1), .count(count)); 

ALU alu(.A(A_data), .B(B_input), .ALUSel(c7), .ZFlag(ZFlag), .Result(ALUOut));
regFile rf(.clk(clk), .rst(rst), .A_data(A_data), .B_data(B_data), .W_data(w_data), .A_addr(c1), .B_addr(c2), .W_addr(c3), .wr(c4));

assign B_input = c6 ? data1 : B_data;

assign w_data = c5 ? data2 : ALUOut;

endmodule
