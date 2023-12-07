`timescale 1ns / 1ps

module testBench(
);

reg clk, rst;
wire [7:0]w_data;

top mod(.clk(clk),.rst(rst),.w_data(w_data));

initial begin

	clk <= 0;

forever
 	#10
	clk<=~clk;

end

initial begin

	rst = 1;

	#100

	rst =0;

end
endmodule
