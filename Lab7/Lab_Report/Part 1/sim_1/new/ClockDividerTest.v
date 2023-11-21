`timescale 1ns / 1ps

module ClockDividerTest();

reg clk, rst;
wire clk_out;
clockDivider #(2) cdt (.clk(clk), .rst(rst), .clk_out (clk_out));
initial begin
clk = 0;
forever #10 clk=~clk;
end
initial begin

rst=1;
#100
rst=0;




end

endmodule
