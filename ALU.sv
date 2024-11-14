`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: chipxprt
// Engineer: 
// 
// Create Date: 11/13/2024 03:35:45 PM
// Design Name: 
// Module Name: ALU
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


module ALU(
input logic [3:0]a,
input logic [3:0]b,
input logic [1:0]sel,
output logic [3:0] alu_out
    );
    
logic [3:0]w1;
logic [3:0]w2;
logic [3:0]w3;
logic [3:0]w4;
logic C_output1;
logic Cin= 1'b0;   
four_adder_sub sum(.a(a), .b(b), .C0(sel[0]), .m(sel[0]), .COUT(C_output1), .s(w1));
//four_adder_sub sub(.a(a), .b(b), .C0(Cin), .m(sel[1]), .COUT(C_output2), .s(w1));
assign  w2= a << b;
assign w4 = a & b;
two_one_Mux M1(.A(w2), .B(w4), .S(sel[0]), .Z(w3));  
two_one_Mux M2(.A(w3), .B(w1), .S(sel[1]), .Z(alu_out));  
    
endmodule
