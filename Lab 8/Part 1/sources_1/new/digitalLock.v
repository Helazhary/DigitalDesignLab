`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/21/2023 04:46:24 PM
// Design Name: 
// Module Name: digitalLock
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


module digitalLock(
input clk, rst, input [3:0] passin, output  out, output [6:0] svnsgmnt
    );
    wire [3:0] pass;
    reg [2:0] state, nextState;
    wire clkOut;
    
    clockDivider #(250000) CD (.clk(clk), .rst(rst), .clk_out(clkOut));
parameter [2:0] R = 2'b000, A = 3'b001, B = 3'b010, C = 3'b011, D = 3'b100; // States Encoding
// Next state generation (combinational logic)

pushButtonDetector
    B1 (.clk(clk), .rst(rst), .in(passin[0]), .out(pass[0])),
    B2 (.clk(clk), .rst(rst), .in(passin[1]), .out(pass[1])),
    B3 (.clk(clk), .rst(rst), .in(passin[2]), .out(pass[2])),
    B4 (.clk(clk), .rst(rst), .in(passin[3]), .out(pass[3]));
always @ (pass[0]  or pass[1] or pass[2] or pass[3] or state) begin
    case (state)
    R:  begin
    if (pass == 4'b1000) nextState = A;
     else  nextState = R;
     end
    A: begin
     if (pass == 4'b0001) nextState = B;
    else if (pass == 2'b0000) nextState = A;
    else if (pass == 4'b1000) nextState = A;
     else nextState = R;
     end
    B: begin
     if (pass == 4'b0100) nextState = C;
    else if (pass == 2'b0000) nextState = B;
    else if (pass == 4'b1000) nextState = A;
     else nextState = R;
     end
     C: begin
      if (pass == 4'b0010) nextState = D;
    else if (pass == 2'b0000) nextState = C;
    else if (pass == 4'b1000) nextState = A;
     else nextState = R;
     end  
     D: begin 
   if (pass == 2'b0000) nextState = D; 
   else if (pass == 4'b1000) nextState = A;
     else nextState = R;
       end
    default: nextState = R;
    endcase
    end
// State register
// Update state FF's with the triggering edge of the clock
always @ (posedge clkOut or posedge rst) begin
    if(rst) state <= R;
    else state <= nextState;
    
end
// output generation (combinational logic)
assign out = (state == D);
assign svnsgmnt = out ?  7'b1000001 :  7'b1000111;
    
endmodule
