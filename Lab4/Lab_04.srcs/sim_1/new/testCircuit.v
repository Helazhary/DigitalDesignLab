`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/23/2023 12:31:07 PM
// Design Name: 
// Module Name: testCircuit
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


module testCircuit();
reg [1:0] in;
reg sel;
wire [1:0]out;

reportCircuit test(.in(in),.sel(sel),.out(out));
initial begin
in[0] = 0;
in[1] = 0;
sel = 0;
#100
in[0] = 0;
in[1] = 1;
sel = 0;
#100
in[0] = 1;
in[1] = 0;
sel = 0;
#100
in[0] = 1;
in[1] = 1;
sel = 0;
#100
in[0]=0;
in[1] = 0;
sel = 1;
#100
in[0] = 0;
in[1] = 1;
sel = 1;
#100
in[0] = 1;
in[1] = 0;
sel = 1;
#100
in[0] = 1;
in[1] = 1;
sel = 1;

end
  
endmodule
