`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/24/2023 02:58:11 PM
// Design Name: 
// Module Name: Procedural7SegDisp
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


module sevenSegWEn(
input [3:0]num,
input en,
input [1:0] sel,
output reg [0:6]seg,
output reg [3:0]an
    );
    
always @ (*) begin
    case(num)
        4'b0000:  seg = 7'b0000001;
        4'b0001:  seg = 7'b1001111;
        4'b0010:  seg = 7'b0010010;
        4'b0011:  seg = 7'b0000110;
        4'b0100:  seg = 7'b1001100;
        4'b0101:  seg = 7'b0100100;
        4'b0110:  seg = 7'b0100000;
        4'b0111:  seg = 7'b0001110;
        4'b1000:  seg = 7'b0000000;
        4'b1001:  seg = 7'b0000100;
        4'b1010: seg = 7'b0001000;
        4'b1011: seg = 7'b1100000;
        4'b1100: seg = 7'b0110001;
        4'b1101: seg = 7'b1000010;
        4'b1110: seg = 7'b0110000;
        4'b1111: seg = 7'b0111000;
        default: seg = 7'b1111111;
    endcase
    
    case (sel) 
    2'b00: an = 4'b1110;
    2'b01: an = 4'b1101;
    2'b10: an = 4'b1011;
    2'b11: an = 4'b0111; 
    default: an = 4'b0000;
    endcase
    
    end

endmodule
