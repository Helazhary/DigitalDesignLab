`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/30/2023 01:24:15 PM
// Design Name: 
// Module Name: digitalLock2
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



module digitalLock2(

 
input clk, rst, input [3:0] passin, output  out, output [6:0] svnsgmnt
    );
    wire [3:0] pass;
    reg [2:0] state, nextState;
    wire clkOut;
    
    clockDivider #(250000) CD (.clk(clk), .rst(rst), .clk_out(clkOut));
parameter [2:0] R = 2'b000, A = 3'b001, B = 3'b010, C = 3'b011,  D = 3'b100, E = 3'b101; // States Encoding
// Next state generation (combinational logic)
localparam H = 4'b1000, G = 4'b0001;

pushButtonDetector
    B1 (.clk(clk), .rst(rst), .in(passin[0]), .out(pass[0])),
    B2 (.clk(clk), .rst(rst), .in(passin[1]), .out(pass[1])),
    B3 (.clk(clk), .rst(rst), .in(passin[2]), .out(pass[2])),
    B4 (.clk(clk), .rst(rst), .in(passin[3]), .out(pass[3]));
always @ (pass[0]  or pass[1] or pass[2] or pass[3] or state) begin
    case (state)
    R:  begin
    if (pass == H) nextState = A;
     else  nextState = R;
     end
    A: begin
     if (pass == G) nextState = B;
     else nextState = A;
     end
    B: begin
     if (pass == G) nextState = C;
    else if (pass == H) nextState = A;
     else nextState = B;
     end
     C: begin
      if (pass == H) nextState = D;
      else if (pass == G) nextState = R;
     else nextState = C;
     end  
     D: begin 
   if (pass == G) nextState = E; 
   else if (pass == H) nextState = A;
     else nextState = D;
       end
       E: begin
       if (pass == G) nextState = R;
       else if (pass == H) nextState = R;
       else nextState = E;
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
assign out = (state == E);
assign svnsgmnt = out ?  7'b1000001 :  7'b1000111;
    
endmodule

