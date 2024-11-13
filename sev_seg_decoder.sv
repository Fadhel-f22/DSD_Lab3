module seven_seg_decoder(
    input  wire [3:0] bin,      // 4-bit binary input (0–F)
    output reg  [6:0] seg       // 7-bit output for segments a-g
);

// Add your code here -----------------------------------
assign seg[6] =  (~bin[3] & ~bin[2] & ~bin[1]) | (bin[3] & bin[2] & ~bin[1]) | (~bin[3] & bin[2] & bin[1] & bin[0]); 
assign seg[5] =  (~bin[3] & bin[1] & bin[0]) | (~bin[3] & ~bin[2] & bin[0]) | (~bin[3] & ~bin[2] & bin[1]); 
assign seg[4] =  (~bin[3] & bin[0]) | (~bin[3] & bin[2] & ~bin[1]) | ( ~bin[2] & ~bin[1] & bin[0]); 
assign seg[3] =  (~bin[3] & ~bin[2] & ~bin[1] & bin[0]) | (~bin[3] & bin[2] & ~bin[1] & ~bin[0]) | (bin[3] & ~bin[2] & bin[1] & ~bin[0]) | (bin[2] & bin[1] & bin[0]); 
assign seg[2] =  (~bin[3] & ~bin[2] & bin[1] & ~bin[0]) | (bin[3] & bin[2] & bin[1]) | (bin[3] & bin[2] & ~bin[0]); 
assign seg[1] =  (~bin[3] & bin[2] & ~bin[1] & bin[0]) | (bin[2] & bin[1] & ~bin[0]) | (bin[3] & bin[2] & bin[1]) | (bin[3] & bin[2] & ~bin[0]) ; 
assign seg[0] =  (~bin[3] & ~bin[2] & ~bin[1] & bin[0]) | (~bin[3] & bin[2] & ~bin[1] & ~bin[0]); 


/*(bin == 4'b0000) ? 7'b0000001: 
             (bin == 4'b0001) ? 7'b1001111:
             (bin == 4'b0010) ? 7'b0010010:
             (bin == 4'b0011) ? 7'b0000110:
             (bin == 4'b0100) ? 7'b1001100:
             (bin == 4'b0101) ? 7'b0100100:
             (bin == 4'b0110) ? 7'b0100000:
             (bin == 4'b0111) ? 7'b0001111:
             (bin == 4'b1000) ? 7'b0000000:
             (bin == 4'b1001) ? 7'b0000100:
             (bin == 4'b1010) ? 7'b0001000:
             (bin == 4'b1011) ? 7'b0000000:
             (bin == 4'b1100) ? 7'b0110001:
             (bin == 4'b1101) ? 7'b0000001:
             (bin == 4'b1110) ? 7'b0110000:
             (bin == 4'b1111) ? 7'b0111000: 
             7'b1111111;
// Add your code here -----------------------------------
*/
endmodule
