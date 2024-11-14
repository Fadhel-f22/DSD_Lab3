`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 03:34:36 PM
// Design Name: 
// Module Name: Incrementer
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


module Incrementer(
    input  logic [3:0] in,      // 4-bit binary input (0-F)
    output logic  [3:0] out       // 7-bit output for segments a-g
);

// Add your 
assign out = in + 1;



//(in == 4'b0000) ? 4'b0001: 
//             (in == 4'b0001) ? 4'b0010:
//             (in == 4'b0010) ? 4'b0011:
//             (in == 4'b0011) ? 4'b0100:
//             (in == 4'b0100) ? 4'b0101:
//             (in == 4'b0101) ? 4'b0110:
//             (in == 4'b0110) ? 4'b0111:
//             (in == 4'b0111) ? 4'b1000:
//             (in == 4'b1000) ? 4'b1001:
//             (in == 4'b1001) ? 4'b1010:
//             (in == 4'b1010) ? 4'b1011:
//             (in == 4'b1011) ? 4'b1100:
//             (in == 4'b1100) ? 4'b1101:
//             (in == 4'b1101) ? 4'b1110:
//             (in == 4'b1110) ? 4'b1111:
//             (in == 4'b1111) ? 4'b0000:  
//             4'b0000;


endmodule
