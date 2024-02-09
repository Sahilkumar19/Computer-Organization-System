`include "Multiplexer_2_to_1.v"
module Multiplexer_2_to_1_tb;
reg I0_tb, I2_tb, S_tb;
    wire O_tb;

    Multiplexer_2_to_1 uut(I0_tb, I2_tb, S_tb, O_tb);

    initial begin
        $monitor("I0=%b, I1=%b, S=%b, Y=%b", I0_tb, I2_tb, S_tb, O_tb);
        I0_tb = 1'b0; I2_tb = 1'b1; S_tb = 1'b0; #10;
        I0_tb = 1'b1; I2_tb = 1'b0; S_tb = 1'b1; #10;
        I0_tb = 1'b0; I2_tb = 1'b0; S_tb = 1'b1; #10;
        $finish;
    end
endmodule