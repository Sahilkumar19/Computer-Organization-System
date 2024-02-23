/*
This file contains testbench code for 8 to 3 bit
Encoder

Author: Sahil & Shravan
Date: 08-02-2024
*/


`include "Encoder_8_to_3_SS.v"
module Encoder_8_to_3_tb;
reg [7:0] A_tb;
    wire [2:0] O_tb;

    Encoder_8_to_3 uut(A_tb, O_tb);

    initial begin
        $dumpfile("out.vcd");
        $dumpvars(0, Encoder_8_to_3_tb);
        
        $monitor("A=%b, O=%b", A_tb, O_tb);
        A_tb = 8'b00000001; #10;
        A_tb = 8'b00000010; #10;
        A_tb = 8'b00000100; #10;
        A_tb = 8'b00001000; #10;
        A_tb = 8'b00010000; #10;
        A_tb = 8'b00100000; #10;
        A_tb = 8'b01000000; #10;
        A_tb = 8'b10000000; #10;
        
        $finish;
    end

endmodule
