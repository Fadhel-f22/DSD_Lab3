`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/14/2024 01:09:21 PM
// Design Name: 
// Module Name: tb_Rotating
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


module tb_Rotating;
logic [1:0] inp;
logic [15:0] outp;

Rotating UPT(.inu(inp) , .outr(outp));

initial begin
#5
inp = 2'b00;
#5
$display("input:%b\t output:%h",inp,outp);

#5
inp = 2'b01;
#5
$display("input:%b\t output:%h",inp,outp);

#5
inp = 2'b10;
#5
$display("input:%b\t output:%h",inp,outp);

#5
inp = 2'b11;
#5
$display("input:%b\t output:%h",inp,outp);

#10
$finish;
end
endmodule
