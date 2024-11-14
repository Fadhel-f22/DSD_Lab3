`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/13/2024 01:46:42 PM
// Design Name: 
// Module Name: tb_seven_seg_decoder
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


module tb_seven_seg_decoder;
logic [3:0] BIN; 
logic [4:0] i;
logic [6:0] SEG;

seven_seg_decoder test(.bin(BIN), .seg(SEG));

initial begin 

    for(i = 0; i <= 15 ; i++)
    begin
        //BIN = 4'b0000; #10;
        BIN = i;
        #1
        $display("%b\t %b" , BIN , SEG);
    end     

//BIN = 4'b0001; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b0010; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b0000; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b1000; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b0001; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b1111; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b1001; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b0111; #10;
//$display("%b\t %b" , BIN , SEG);

//BIN = 4'b0011; #10;
//$display("%b\t %b" , BIN , SEG);
#10
$finish;

end
endmodule
