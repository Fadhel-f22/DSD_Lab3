`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 10:32:48 AM
// Design Name: 
// Module Name: tb_ALU
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


module tb_ALU;

logic [3:0] a;
logic [3:0] b;
logic [3:0] z;
logic [1:0] s;

ALU dut (.a(a), .b(b), .sel(s), .alu_out(z));

initial begin 
    a= 4'b0001;
    b= 4'b0000;
    s= 2'b10;

#5
$display("A = %b\t B = %b\t  S=%b\t  Z= %b\t" ,a  ,b, s, z);
#5 
    a= 4'b0111;
    b= 4'b0000;
    s= 2'b10;
 #5
    
$display("A = %b\t B = %b\t  S=%b\t  Z= %b\t" ,a  ,b, s, z);
#5 
    a= 4'b0111;
    b= 4'b0001;
    s= 2'b00;
 #5
$display("A = %b\t B = %b\t  S=%b\t  Z= %b\t" ,a  ,b, s, z);
#5 
    a= 4'b0101;
    b= 4'b0011;
    s= 2'b01;
#5
$display("A = %b\t B = %b\t  S=%b\t  Z= %b\t" ,a  ,b, s, z);
#5 
    a= 4'b0101;
    b= 4'b0110;
    s= 2'b01;
 #5
$display("A = %b\t B = %b\t  S=%b\t  Z= %b\t" ,a  ,b, s, z);
#10 
    a= 4'b0100;
    b= 4'b0010;
    s= 2'b11;
#10
$display("A = %b\t B = %b\t  S=%b\t  Z= %b\t" ,a  ,b, s, z);
#5 
$finish;
end 
endmodule
