/*
This file contains testbench code for 3-bit
comparator

Author: Sahil & Shravan
Date: 08-02-2024
*/
`include "Comparator_3_bit_SS.v"
module testbench_3_bit_Comparator;
reg[2:0] A_tb,B_tb;
wire L_tb,E_tb,G_tb;

Comparator_3_bit uut(A_tb,B_tb,L_tb,E_tb,G_tb);

initial begin
    $dumpfile("out.vcd");
    $dumpvars(0, testbench_3_bit_Comparator);


    $monitor("A=%b, B=%b, L=%b, E=%b, G=%b", A_tb, B_tb, L_tb, E_tb, G_tb);
        A_tb = 3'b000; B_tb = 3'b000; #10;
        A_tb = 3'b001; B_tb = 3'b000; #10;
        A_tb = 3'b000; B_tb = 3'b001; #10;
        $finish;
    end

endmodule
