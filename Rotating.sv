`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 01:01:08 PM
// Design Name: 
// Module Name: Rotating
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


module Rotating(
input [1:0] inu,
output [15:0] outr
    );
    
assign outr =(inu == 2'b00) ? 16'hC0dE: 
             (inu == 2'b01) ? 16'hE0Cd:
             (inu == 2'b10) ? 16'hdEC0:
             (inu == 2'b11) ? 16'h0dCE:
             4'h0000;
endmodule
