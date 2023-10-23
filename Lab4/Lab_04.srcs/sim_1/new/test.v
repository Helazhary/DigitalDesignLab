`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/17/2023 03:33:59 PM
// Design Name: 
// Module Name: test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module test();
reg [1:0] in;
reg sel;
wire out;

Mux2to1 test_1(.in(in),.sel(sel),.out(out));
initial begin
in[0] = 0;
in[1] = 1;
sel = 0;
#10
in[0] = 0;
in[1] = 1;
sel = 1;
#10
in[0] = 1;
in[1] = 0;
sel = 0;
#10
in[0] = 1;
in[1] = 0;
sel = 1;

end

endmodule
