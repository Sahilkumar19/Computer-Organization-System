/*
This file contains testbench code for
3 to 8 Decoder

Author: Sahil & Shravan
Date: 08-02-2024
*/


`include "Decoder_3_to_8_SS.v"
module Decoder_3_to_8_tb;
reg [2:0] A_tb;
wire [7:0] O_tb;

    Decoder_3_to_8 uut(A_tb, O_tb);

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, Decoder_3_to_8_tb);
        


        $monitor("A=%b, O=%b", A_tb, O_tb);
        A_tb = 3'b000; #10;
        A_tb = 3'b001; #10;
        A_tb = 3'b010; #10;
        A_tb = 3'b011; #10;
        A_tb = 3'b100; #10;
        A_tb = 3'b101; #10;
        A_tb = 3'b110; #10;
        A_tb = 3'b111; #10;
        $finish;
    end

endmodule