`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 03:43:35 PM
// Design Name: 
// Module Name: tb_Incrementer
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


module tb_Incrementer;

logic [3:0] inp;
logic [3:0] i;
logic [3:0] outp;

Incrementer UPT(.in(inp) , .out(outp));

initial begin

for(i = 0 ; i <=14 ; i++)
begin
inp = i;
#1
$display("input:%b\t output:%b",inp,outp);
end

#5
inp = inp + 1;
#5
$display("input:%b\t output:%b",inp,outp);
#10
$finish;
end
endmodule
